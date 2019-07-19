const express = require('express')
const axios = require('axios')
var _ = require('underscore-contrib')
const app = express()
const port = 3000

function id3 (_s,target,features){
  var targets = _.unique(_s.pluck(target)); // mencari ada berapa kriteria pada rating (good dan bad)
  if (targets.length == 1){
      // console.log("end node! "+targets[0]);
      return {type:"result", val: targets[0], name: targets[0],alias:targets[0]+randomTag() };
  }
  if(features.length == 0){
    // console.log("returning the most dominate feature!!!");
    var topTarget = mostCommon(_s.pluck(target));
    return {type:"result", val: topTarget, name: topTarget, alias: topTarget+randomTag()};
  }
  var bestFeature = maxGain(_s,target,features);
  var remainingFeatures = _.without(features,bestFeature);
  var possibleValues = _.unique(_s.pluck(bestFeature));
  // console.log("node for "+bestFeature);
  var node = {name: bestFeature,alias: bestFeature+randomTag()};
  node.type = "feature";
  // console.log("best : "+bestFeature);
  node.vals = _.map(possibleValues,function(v){
    // console.log("creating a branch for "+v);
    var _newS = _(_s.filter(function(x) {return x[bestFeature] == v}));
    var child_node = {name:v,alias:v+randomTag(),type: "feature_value"};
    child_node.child =  id3(_newS,target,remainingFeatures);
    return child_node;
  });

  return node;
}

function predict(id3Model,sample) {
  var root = id3Model;
  while(root.type != "result"){
var attr = root.name;
var sampleVal = sample[attr];
var childNode = _.detect(root.vals,function(x){return x.name == sampleVal});
root = childNode.child;
  }
  return root.val;
}

function entropy(vals){
  var uniqueVals = _.unique(vals);
  var probs = uniqueVals.map(function(x){return prob(x,vals)});
  var logVals = probs.map(function(p){return -p*log2(p) });
  return logVals.reduce(function(a,b){return a+b},0);
}

function gain(_s,target,feature){
  var attrVals = _.unique(_s.pluck(feature));
  var setEntropy = entropy(_s.pluck(target));
  var setSize = _s.size();
  var entropies = _.map(attrVals,function(n){
    var subset = _s.filter(function(x){return x[feature] === n});
    return (subset.length/setSize)*entropy(_.pluck(subset,target));
  });
  var sumOfEntropies =  entropies.reduce(function(a,b){return a+b},0);
  return setEntropy - sumOfEntropies;
}

function maxGain(_s,target,features){
  return _.max(features,function(e){return gain(_s,target,e)});
}

function prob(val,vals){
  var instances = _.filter(vals,function(x) {return x === val}).length;
  var total = vals.length;
  return instances/total;
}

function log2(n){
  return Math.log(n)/Math.log(2);
}


function mostCommon(l){
 return  _.sortBy(l,function(a){
return count(a,l);
  }).reverse()[0];
}

function count(a,l){
  return _.filter(l,function(b) { return b === a}).length
}

function randomTag(){
  return "_r"+Math.round(Math.random()*1000000).toString();
}

function get_product(arr,data){
var s = [];
var x = new Object();
_.each(data, function(d) {
  if(d.id_users == arr)
  {
    x = {item:d.id_produk, kat_id: d.kat_id, nrating:d.nrating};
    s.push(x);
  }
})
return s;
}

function cosineSim(barangada,tetangga,item) { /// data barang ada user, barang ada tetangga, target item mau di rating
var asdas = []
_.each(tetangga, function(t){
  if(t.untuk_item == item)
  {
    _.each(t.allProduct, function(td) {
      _.each(barangada, function (u) {
          if(td.item == u.item)
          {
            asdas.push({tetangga:t.tetangga, item:u.item, kali:parseInt(u.nrating)*parseInt(td.nrating)});
          }
      })
    })
  }
})
// console.log(asdas);
var result =_.chain(asdas)
            .reduce(function(memo, obj) {
              if(typeof memo[obj.tetangga] === 'undefined') {
                memo[obj.tetangga] = 0;
              }
            memo[obj.tetangga] += obj.kali;
            return memo;
            }, {})
            .map(function (val, key) {
              return {key: key, hasil: val};
            })
            .value();

var caj = 0;
var a = 0;
_.each(barangada, function(b){
  a += Math.pow(parseInt(b.nrating),2);
})
caj = Math.sqrt(a);

var cbj =[];
_.each(result, function (a) {
  var weq = 0;
  _.each(tetangga, function(t){
    if(t.tetangga === a.key && t.untuk_item == item){
      _.each(t.allProduct ,function (td) {
        weq += Math.pow(td.nrating,2)
      })
      var asq = Math.sqrt(weq)
      cbj.push({tetangga:t.tetangga, untuk_item: t.untuk_item, hasil: asq})
    }
  })
})
var cm = [];
_.each(cbj,function (cbj) {
  var bawah = cbj.hasil*caj
  var lala = 0;
  _.each(result, function (p) {
    if(p.key == cbj.tetangga)
    {
      lala = p.hasil / bawah;
      cm.push({tetangga:p.key, untuk_item:cbj.untuk_item, cosineSim: lala})
    }
  })
})
return cm;
}



function userSim(barangada, tetangga, item ) {
var usm = [];
var arua = 0;
var arub = [];
var a=0;
_.each(barangada, function(b){
  a += parseInt(b.nrating);
})
arua = a/barangada.length;
// console.log(a, barangada.length+ " arua");
var asdas = []
_.each(tetangga, function(t){
  if(t.untuk_item == item)
  {
    _.each(t.allProduct, function(td) {
        asdas.push({tetangga:t.tetangga, item:t.untuk_item, sum:parseInt(td.nrating)});
    })
  }
})

var result =_.chain(asdas) //chaining untuk mengembalikkan objek yang di bungkus Metode pemanggilan pada objek ini akan terus mengembalikan objek yang dibungkus sampai nilainya (value()) dipanggil.
            .reduce(function(memo, obj) {  //mengurangi daftar nilai menjadi nilai tunggal, memo adalah kondisi awal, obj nilai dan indeks dari iterasi (perulangan)
              if(typeof memo[obj.tetangga] === 'undefined') {
                memo[obj.tetangga] = 0; // memo[obj.tetangga] == memo[id user tetangga]
              }
            memo[obj.tetangga] += obj.sum;
            return memo;
          }, {}) //{} adalah insialisasi untuk menjadi tipe data apa akhirnya
            .map(function (val, key) { // menghasilkan array baru dengan memetakan setiap nilai ke dalam list baru
              return {key: key, hasil: val};
            })
            .value();

_.each(result, function(r) {
  _.each(tetangga, function (t) {
    if(r.key == t.tetangga && t.untuk_item == item)
    {
      var rt;
      _.each(t.allProduct, function (td) {
        if(item == td.item){
          // console.log(td.item);
          rt = td.nrating;
          // console.log(td.item,"=",td.nrating,">",);
          var as = parseFloat(r.hasil/t.allProduct.length)
          arub.push( {tetangga:t.tetangga, untuk_item: t.untuk_item, hasil: as, rt:td.nrating} )
        }
      })

    }
  })
})
// console.log("arub");
// console.log(arub);
// console.log("result");
// console.log(result);
// arub, result.hasil
_.each(result,function (r) {
  _.each(tetangga, function (t) {
    var saa = 0;
    var ass = 0;
    var sbb = 0;
    var bss = 0;
    var ase=0;
    var rrub=0;
    var sdqwe;
    var wqe = 0;
      if(t.tetangga === r.key && t.untuk_item == item){
      _.each(t.allProduct ,function (td) {
        _.each(barangada, function (b) {
          if (td.item == b.item) {
            saa += parseFloat(b.nrating-arua) * parseFloat(b.nrating-arua)
            var klk = parseFloat(b.nrating-arua)
            // console.log("klk "+ arua);

            _.each(arub, function(ar) {
              if(ar.untuk_item == item && ar.tetangga == r.key){
                rrub = ar.hasil
                sdqwe = ar.rt
                sbb += parseFloat(td.nrating-ar.hasil) * parseFloat(td.nrating-ar.hasil)
                wqe = parseFloat(td.nrating-ar.hasil)
                // console.log(ar.tetangga,item,ar.rt);
              }
              // console.log("tidak"+ar.tetangga,item,ar.rt);
            })
            // console.log(klk+ " klk : "+ wqe+" wqe");
            ase += klk * wqe

            // console.log(rrub);
          }
        })
      })
      // console.log(ase+"/");
      var sqb = Math.sqrt(sbb)
      var sq = Math.sqrt(saa)
      var shh = sq*sqb // bawah aman
      // console.log(shh+" shh");
      // console.log(r.key, t.untuk_item, sdqwe, rrub);
      bss = ase/shh;
      if (!isNaN(bss)) {
        usm.push({tetangga:r.key, untuk_item:t.untuk_item, userSim: bss, arua: arua, arub: rrub, rt:sdqwe})
      }

    }
  })
})
return usm;
}

function ConvertToDim1(cm) {
var cm1 =[];
_.each(cm, function (c) {
  _.each(c, function (cc) {
    cm1.push(cc)
  })
})
return cm1;
}


function aturan(test){
var features = ['id_produk','id_users','kat_id','umur'];
var rules = [];
var temp= new Object();
var tampung = new Object();

for (var i = 0; i < test.vals.length; i++) {
  if (test.vals[i].child.type == 'result') {
    tampung.root = test.name;
    tampung.nilaiRoot = test.vals[i].name;
    tampung.rating = test.vals[i].child.name;
    tampung.status =0;
    rules.push(tampung); tampung = {};
  }
  else {
    for (var j= 0; j < test.vals[i].child.vals.length; j++) {
      tampung.root = test.name;
      tampung.nilaiRoot = test.vals[i].name;
      tampung.node1 = test.vals[i].child.name;
      tampung.nilaiNode1 = test.vals[i].child.vals[j].name;
      if (test.vals[i].child.vals[j].child.type == 'result') {
        tampung.rating = test.vals[i].child.vals[j].child.name;
      }
      tampung.status=1;
      rules.push(tampung); tampung={};
    }
  }
}
return rules;
// buat rulesnya jadi fungsi
}


function cariRekomendasi(data, user, tree) {
var bisa = aturan(tree);
data_ = _(data);
var daftar_item = _.unique(data_.pluck('id_produk'));
var daftar_user = _.unique(data_.pluck('id_users'));
var target = {usr:user,ada:[],tidak:[]};
var ada =[];
var gakada = [];
var baranggakada = [];
var hasil_kali =[];
var barangada = [];
var tetangga =[];
var rules= [];
var umur='';
for (var i = 0; i < data.length; i++) {
  if (target.usr == data[i].id_users) {
    ada.push(data[i].id_produk);
  }
}
for (var i = 0; i < daftar_item.length; i++) {
  if (ada.indexOf(daftar_item[i])==-1) {
    gakada.push(daftar_item[i]);
  }
}
target.ada = ada; target.tidak=gakada;

for (var i = 0; i < data.length; i++) {
  if (user == data[i].id_users) {
    umur = data[i].umur;
    break;
  }
}

for (var i = 0; i < gakada.length; i++) {
  var x = new Object();
  for (var j = 0; j < data.length; j++) {
    if (gakada[i] == data[j].id_produk) {
      x = {item:data[j].id_produk, kat_id: data[j].kat_id, rating:'', nrating:0};
    }
  }
  baranggakada.push(x);
}

for (var i = 0; i < ada.length; i++) {
  var x = new Object();
  for (var j = 0; j < data.length; j++) {
    if (user == data[j].id_users && ada[i] == data[j].id_produk) {
      x = {item:data[j].id_produk, kat_id: data[j].kat_id, nrating:data[j].nrating};
    }
  }
  barangada.push(x);
}


_.each(bisa, function (b){
  if(b.status === 0)// alasan dibuat status agar mengetahui product yang dapat mengetahui ratingnya langsung
  {   // misalnya status 0 bagi yang baru ngerating 1 barang dan langsung mendapatkan hasil decision tree
    var x = new Object();
    if(b.root=="id_users"){
      if(b.nilaiRoot == user){
        var ratingTarget = [];
        if(user==b.nilaiRoot){
          ratingTarget.push(b)
        }
        _.each(ratingTarget, function (bb) {
          _.each(data, function(d){
            _.each(baranggakada, function(gk){
              if(d.id_users != user && d.rating == bb.rating){
                if(d.id_produk == gk.item){
                  x = {user: user, tetangga: d.id_users, untuk_item: d.id_produk, allProduct: get_product(d.id_users,data)}
                  tetangga.push(x);

                }
              }
            })
          })
        })

      }
    }
    if (b.root=="id_produk") {
      _.each(data, function (d) {
        _.each(baranggakada, function (gk) {
          if(d.id_users != user && d.rating == b.rating && d.id_produk == gk.item && b.nilaiRoot == d.id_produk){
              console.log(d.id_users+">"+d.rating,"=",b.rating+"==",d.id_produk);
              x = {user: user, tetangga: d.id_users, untuk_item: d.id_produk, allProduct: get_product(d.id_users,data)}
              tetangga.push(x);
          }
        })
      })
    }

    if(b.root=="kat_id"){ // nanti semua user yang berkategori ini semuanya sesuai dengan rating ini
      _.each(data, function (d) {
        _.each(baranggakada, function (gk) {
          if(d.id_users != user && d.rating == b.rating && d.id_produk == gk.item && b.nilaiRoot == d.kat_id){
              // console.log(d.id_users+">"+d.rating,"=",b.rating+"==",d.id_produk);
              x = {user: user, tetangga: d.id_users, untuk_item: d.id_produk, allProduct: get_product(d.id_users,data)}
              tetangga.push(x);

          }
        })
      })
    }
    if(b.root=="umur"){ // nanti semua user yang berkategori ini semuanya sesuai dengan rating ini
      _.each(data, function (d) {
        _.each(baranggakada, function (gk) {
          if(d.id_users != user && d.rating == b.rating && d.id_produk == gk.item && b.nilaiRoot == d.umur){
              // console.log(d.id_users+">"+d.rating,"=",b.rating+"==",d.id_produk);
              x = {user: user, tetangga: d.id_users, untuk_item: d.id_produk, allProduct: get_product(d.id_users,data)}
              tetangga.push(x);

          }
        })
      })
    }
  }
  else
  {

    if(b.root == "id_users")
    {
      var ratingTarget = [];
      if(user==b.nilaiRoot){
        ratingTarget.push(b)
      }

      if(node1=="id_produk")
      {
        _.each(ratingTarget, function (bb) {
          _.each(data, function (d) {
            _.each(baranggakada, function (gk) {
              if(d.id_users != user && d.rating == bb.rating && bb.nilaiRoot == d.id_users && d.id_produk == gk.item && bb.nilaiNode1 == d.id_produk){
                  // console.log(d.id_users+">"+d.rating,"=",b.rating+"("+b.nilaiNode1+") ==",d.id_produk+" status 1");
                  x = {user: user, tetangga: d.id_users, untuk_item: d.id_produk, allProduct: get_product(d.id_users,data)}
                  tetangga.push(x);

              }
            })
          })
        })
      }

      if(node1=="kat_id")
      {
        _.each(ratingTarget, function (bb) {
          _.each(data, function (d) {
            _.each(baranggakada, function (gk) {
              if(d.id_users != user && d.rating == bb.rating && bb.nilaiRoot == d.id_users && d.id_produk == gk.item && bb.nilaiNode1 == d.kat_id){
                  // console.log(d.id_users+">"+d.rating,"=",b.rating+"("+b.nilaiNode1+") ==",d.id_produk+" status 1");
                  x = {user: user, tetangga: d.id_users, untuk_item: d.id_produk, allProduct: get_product(d.id_users,data)}
                  tetangga.push(x);

              }
            })
          })
        })
      }

      if(node1=="umur")
      {
        _.each(ratingTarget, function (bb) {
          _.each(data, function (d) {
            _.each(baranggakada, function (gk) {
              if(d.id_users != user && d.rating == bb.rating && bb.nilaiRoot == d.id_users && d.id_produk == gk.item && bb.nilaiNode1 == d.umur){
                  // console.log(d.id_users+">"+d.rating,"=",b.rating+"("+b.nilaiNode1+") ==",d.id_produk+" status 1");
                  x = {user: user, tetangga: d.id_users, untuk_item: d.id_produk, allProduct: get_product(d.id_users,data)}
                  tetangga.push(x);

              }
            })
          })
        })
      }
    }
    if(b.root== "id_produk")
    {
      if(b.node1 == "id_users")
      {
        var ratingTarget = [];
        if(user==b.nilaiNode1){
          ratingTarget.push(b)
        }
        _.each(ratingTarget, function (bb) {
          _.each(data, function (d) {
            _.each(baranggakada, function (gk) {
              if(d.id_users != user && d.rating == bb.rating && bb.nilaiRoot == d.id_produk && d.id_produk == gk.item && bb.nilaiNode1 == d.id_users){
                  // console.log(d.id_users+">"+d.rating,"=",b.rating+"("+b.nilaiNode1+") ==",d.id_produk+" status 1");
                  x = {user: user, tetangga: d.id_users, untuk_item: d.id_produk, allProduct: get_product(d.id_users,data)}
                  tetangga.push(x);

              }
            })
          })
        })
      }
      if(b.node1 == "kat_id")
      {
        _.each(data, function (d) {
          _.each(baranggakada, function (gk) {
            if(d.id_users != user && d.rating == b.rating && b.nilaiRoot == d.id_produk && d.id_produk == gk.item && b.nilaiNode1 == d.kat_id){
                // console.log(d.id_users+">"+d.rating,"=",b.rating+"==",d.id_produk);
                x = {user: user, tetangga: d.id_users, untuk_item: d.id_produk, allProduct: get_product(d.id_users,data)}
                tetangga.push(x);

            }
          })
        })
      }
      if(b.node1 == "umur")
      {
        _.each(data, function (d) {
          _.each(baranggakada, function (gk) {
            if(d.id_users != user && d.rating == b.rating && b.nilaiRoot == d.id_produk && d.id_produk == gk.item && b.nilaiNode1 == d.umur){
                // console.log(d.id_users+">"+d.rating,"=",b.rating+"==",d.id_produk);
                x = {user: user, tetangga: d.id_users, untuk_item: d.id_produk, allProduct: get_product(d.id_users,data)}
                tetangga.push(x);

            }
          })
        })
      }
    }
    if(b.root == "kat_id")
    {
      if(b.node1 == "id_users")
      {
        var ratingTarget = [];
        if(user==b.nilaiNode1){
          ratingTarget.push(b)
        }
        _.each(ratingTarget, function (bb) {
          _.each(data, function (d) {
            _.each(baranggakada, function (gk) {
              if(d.id_users != user && d.rating == bb.rating && bb.nilaiRoot == d.id_produk && d.id_produk == gk.item && bb.nilaiNode1 == d.id_users){
                  // console.log(d.id_users+">"+d.rating,"=",b.rating+"("+b.nilaiNode1+") ==",d.id_produk+" status 1");
                  x = {user: user, tetangga: d.id_users, untuk_item: d.id_produk, allProduct: get_product(d.id_users,data)}
                  tetangga.push(x);

              }
            })
          })
        })
      }
      if(b.node1 == "id_produk")
      {
        _.each(data, function (d) {
          _.each(baranggakada, function (gk) {
            if(d.id_users != user && d.rating == b.rating && b.nilaiRoot == d.kat_id && d.id_produk == gk.item && b.nilaiNode1 == d.id_produk){
                // console.log(d.id_users+">"+d.rating,"=",b.rating+"==",d.id_produk);
                x = {user: user, tetangga: d.id_users, untuk_item: d.id_produk, allProduct: get_product(d.id_users,data)}
                tetangga.push(x);

            }
          })
        })
      }
      if(b.node1 == "umur")
      {
        _.each(data, function (d) {
          _.each(baranggakada, function (gk) {
            if(d.id_users != user && d.rating == b.rating && b.nilaiRoot == d.kat_id && d.id_produk == gk.item && b.nilaiNode1 == d.umur){
                // console.log(d.id_users+">"+d.rating,"=",b.rating+"==",d.id_produk);
                x = {user: user, tetangga: d.id_users, untuk_item: d.id_produk, allProduct: get_product(d.id_users,data)}
                tetangga.push(x);

            }
          })
        })
      }
    }
    if(b.root == "umur")
    {
      if(b.node1 == "id_users")
      {
        var ratingTarget = [];
        if(user==b.nilaiNode1){
          ratingTarget.push(b)
        }
        _.each(ratingTarget, function (bb) {
          _.each(data, function (d) {
            _.each(baranggakada, function (gk) {
              if(d.id_users != user && d.rating == bb.rating && bb.nilaiRoot == d.id_produk && d.id_produk == gk.item && bb.nilaiNode1 == d.id_users){
                  // console.log(d.id_users+">"+d.rating,"=",b.rating+"("+b.nilaiNode1+") ==",d.id_produk+" status 1");
                  x = {user: user, tetangga: d.id_users, untuk_item: d.id_produk, allProduct: get_product(d.id_users,data)}
                  tetangga.push(x);

              }
            })
          })
        })
      }
      if(b.node1 == "id_produk")
      {
        _.each(data, function (d) {
          _.each(baranggakada, function (gk) {
            if(d.id_users != user && d.rating == b.rating && b.nilaiRoot == d.umur && d.id_produk == gk.item && b.nilaiNode1 == d.id_produk){
                // console.log(d.id_users+">"+d.rating,"=",b.rating+"==",d.id_produk);
                x = {user: user, tetangga: d.id_users, untuk_item: d.id_produk, allProduct: get_product(d.id_users,data)}
                tetangga.push(x);

            }
          })
        })
      }
      if(b.node1 == "kat_id")
      {
        _.each(data, function (d) {
          _.each(baranggakada, function (gk) {
            if(d.id_users != user && d.rating == b.rating && b.nilaiRoot == d.umur && d.id_produk == gk.item && b.nilaiNode1 == d.kat_ids){
                // console.log(d.id_users+">"+d.rating,"=",b.rating+"==",d.id_produk);
                x = {user: user, tetangga: d.id_users, untuk_item: d.id_produk, allProduct: get_product(d.id_users,data)}
                tetangga.push(x);

            }
          })
        })
      }
    }
  }
})



  //Hasil Rumus (rencananya dihitung berdasarkan crb)
var crb = _.difference(_.unique(_(tetangga).pluck('untuk_item')),baranggakada.item) // barang yang di cari ratingnya
  //Contoh pemakaian cosineSim
var cm = [];
var usm = [];

var tetangga1 = _.chain(tetangga).sortBy(function (item) { return item.untuk_item; })
                        .sortBy(function (item) {
                          return item.tetangga;
                        })
_.each(crb, function (c) {
  cm.push(cosineSim(barangada, tetangga1._wrapped, c))
  usm.push(userSim(barangada, tetangga1._wrapped, c))
})



//Prediksi
// var item = baranggakada[0].item // hapus nnti klo udah di rumus
var prediksi = [];
var ats = 0;
var p =0;
var bwh = 0;

_.each(cm, function (c) {
  _.each(c, function (cc) {
    _.each(usm, function (s) {
      _.each(s, function (ss) {
        if(cc.tetangga == ss.tetangga )
        {
          // console.log(cc.tetangga,cc.untuk_item + " = " + ss.tetangga,ss.untuk_item );
          if (cc.untuk_item == ss.untuk_item) {
            ats += ((ss.userSim*cc.cosineSim)*(ss.rt-ss.arub))
            bwh += Math.abs(ss.userSim*cc.cosineSim)
            p = ss.arua + (ats/bwh)
            if(cm.length == 1 ){
              prediksi.push({user: user, item: ss.untuk_item, ratingp: p})
            }
            // console.log(p, ss.arua);
          }
          else
          {
            p = ss.arua + (ats/bwh)
            ats = 0
            bwh = 0
            ats = ((ss.userSim*cc.cosineSim)*(ss.rt-ss.arub))
            bwh = Math.abs(ss.userSim*cc.cosineSim)
            prediksi.push({user: user, item: ss.untuk_item, ratingp: p})
          }
        }

      })
    })
  })
})
return prediksi;

// console.log("MULAI DARI SINI TEST")
// console.log("barang gak ada");
// console.log(baranggakada);
// console.log("tetangga");
// console.log(tetangga);
// console.log("usm");
// console.log(usm);
// console.log("cm");
// console.log(cm);
// console.log("prediksi");
// console.log(prediksi);
}

app.get('/', function(req, res){
  var user = req.query.name
    // console.log(req.query.name);
    // res.send('Response send to client::'+req.query.name);
    var url = 'http://udemy/get_data_algoritma.php';
    axios.get(url).then(function (response) {
      var data = response.data;
      var data_ = _(data);
      var features = ['id_produk','id_users','kat_id','umur',]
      var test = id3(data_,'rating',features);
      // console.log(test);
      var rules = [];
      var tampung = "";
      var temp="";
      for (var i = 0; i < test.vals.length; i++) {
        tampung = "if ";
        for (var j = 0; j < features.length; j++) {
          if (features[j] == test.name) {
            tampung += features[j];
          }
        }
        tampung += "== " + test.vals[i].name;

        if (test.vals[i].child.type == "result") {
          tampung += " result = " + test.vals[i].child.name;
          rules.push(tampung);
          tampung= "";
        }
        else {
          tampung += " && ";
          for (var j = 0; j < features.length; j++) {
            if (features[j]==test.vals[i].child.name) {
              tampung += features[j];
            }
          }
          temp = tampung;
          for (var j = 0; j < test.vals[i].child.vals.length; j++) {
            tampung += " == " + test.vals[i].child.vals[j].name;

            if (test.vals[i].child.vals[j].child.type == "result") {
              tampung += " >> result = " + test.vals[i].child.vals[j].child.name;
              rules.push(tampung);
              tampung = temp;
            }
            else {
              tampung += " && ";
              for (var j = 0; j < features.length; j++) {
                if (features[j]==test.vals[i].child.vals[j].child.name) {
                  tampung += features[j];
                }
              }
              tampung += " " + test.vals[i].child.vals[j].child.name;

            }
          }
        }

      }
      // for (var i = 0; i < rules.length; i++) {
      //   // console.log(rules[i]);
      // }
      // console.log(id3(data_,'rating',features));
      aturan(test);
      var bisa = aturan(test);
      // console.log(bisa);

      var hasil = cariRekomendasi(data,user,test);

      res.send(hasil);
    })


});

app.listen(port, () => console.log(`Example app listening on port ${port}!`))
