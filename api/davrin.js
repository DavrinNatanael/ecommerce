const express = require('express')
const axios = require('axios')
var _ = require('underscore-contrib')
var cors = require('cors')
const app = express()
const port = 3030

var barangada = [];
var tetangga = [];
var cm = [];
var dataAll = [];
var baranggakada = [];
var ratingAllItem = [];
var kitaMiripLoh = [];
var theReal = [];
var ut;
var mae;
var f1, pr, rc;
var rec = 0;
var rel = 0;
var pengujian = [];

var rules = [];
var userTT = [];
var hasilTT = [];
var test;
var bisa;
var user;
var userData = [];
var hasil = [];

var TTHasilSim = []; // parameter : ID, userSim, CosineSim
var rataUserKu = 0;
function getRata(a, data) {
	var rata;
	for (var i = 0; i < data.length; i++) {
		if (data[i].id_produk == a) {
			rata = data[i].rata;
			break;
		}
	}
	return rata;
}

function getRek(a, data) {
	var rata;
	for (var i = 0; i < data.length; i++) {
		if (data[i].id_produk == a) {
			rata = data[i].rating;
			break;
		}
	}
	return rata;
}

function getDisc(a, data) {
	var rata;
	for (var i = 0; i < data.length; i++) {
		if (data[i].id_produk == a) {
			rata = data[i].diskon;
			break;
		}
	}
	return rata;
}

function get_kat(arr, data) {
	var s = "";
	var i = 0;
	while (i < data.length) {
		if (arr == data[i].id_produk) {
			s = data[i].kat_id;
			break;
		}
		i++;
	}
	return s;
}

function get_product(arr, data) {
	var s = [];
	var cnt = data.length;
	var i = 0;
	while (cnt-- && i < data.length) {
		if (data[i].id_users == arr) {
			var x = { item: data[i].id_produk, kat_id: data[i].kat_id, nrating: data[i].nrating };
			s.push(x);
		}
		++i;
	}
	if (i < data.length) {
		setTimeout(get_product, 1);
	}
	var unikBeda = [];
	const map = new Map();
	for (const item of s) {
		if (!map.has(item.item) && !Object.keys(item).length == 0) {
			map.set(item.item, true);    // set any value to Map
			unikBeda.push(item);
		}
	}

	s = unikBeda;
	return s;
}

function bebquganteng() {
	var tetanggHasilSim = [];
	var barangadatotal = 0;
	var tetanggacount = [];
	for (i = 0; i < tetangga.length; i++) {
		var bebek = 0;
		for (j = 0; j < tetangga[i].allProduct.length; j++) {
			bebek += parseInt(tetangga[i].allProduct[j].nrating);

		}
		tetanggacount.push(bebek / tetangga[i].allProduct.length);
		// console.log("tetanggacount " + tetanggacount[i]);
	}
	console.log(barangada.length);
	for (i = 0; i < barangada.length; i++) {
		barangadatotal += parseInt(barangada[i].nrating);
		//console.log("Ngawur " +barangada[i].nrating);
		// console.log("Ngawur Total " + barangadatotal);
	}
	rataUserKu = parseFloat(barangadatotal / barangada.length);
	//console.log("Barangadatotal " + barangadatotal);
	for (i = 0; i < tetangga.length; i++) {
		var TTUnique = tetangga[i].tetangga;
		var temporZero = [];
		var temporA = [];
		var temporB = [];
		var hasilTambahCon = 0;
		var hasilUsersendiri = 0;
		var hasilUserOrang = 0;
		for (j = 0; j < barangada.length; j++) {
			var bedebah = 0;
			hasilUsersendiri += parseInt(Math.pow(barangada[j].nrating, 2));
			hasilUserOrang = 0;
			//  console.log("------ tetangga["+i+"] | barangada["+ j +"] -------" );
			for (k = 0; k < tetangga[i].allProduct.length; k++) {
				hasilUserOrang += parseInt(Math.pow(tetangga[i].allProduct[k].nrating, 2))
				//console.log("Hasil Orang: "+ hasilUserOrang);
				// console.log("barangada[j].item (" + barangada[j].item + ") == tetangga[i].allProduct[k].item(" + tetangga[i].allProduct[k].item +")");
				if (barangada[j].item == tetangga[i].allProduct[k].item) { // GILAAAA DISINI
					var kecil = (barangada[j].nrating < 3 && tetangga[i].allProduct[k].nrating < 3);
					var besar = (barangada[j].nrating >= 3 && tetangga[i].allProduct[k].nrating >= 3);

					//console.log("[TETANGGA ("+ tetangga[i].users +")] tetangga[i].allProduct[k].item " +  tetangga[i].allProduct[k].item);
					//console.log("RatingKu " + barangada[j].nrating + " Rating Tetangga " + tetangga[i].allProduct[k].nrating);
					//console.log("siKecil ["+kecil+"] siBesar["+besar+"]");
					if (besar || kecil) {
						//console.log("------ tetangga["+ i +"] -------" );
						//console.log("barangada["+j+"].item (" + barangada[j].item + ") == tetangga["+i+"].allProduct["+k+"].item (" + tetangga[i].allProduct[k].item + ")");
						bedebah += (barangada[j].nrating - rataUserKu) * (tetangga[i].allProduct[k].nrating - tetanggacount[i]);
						hasilTambahCon += (parseInt(barangada[j].nrating * tetangga[i].allProduct[k].nrating));
						// console.log("(barangada["+j+"].nrating ("+barangada[j].nrating+") - rataUserKu (" + rataUserKu +")) * (tetangga["+i+"].allProduct["+k+"].nrating(" + tetangga[i].allProduct[k].nrating + ") - tetanggacount[i]("+tetanggacount[i]+ " )");
						//console.log("bedebah = "+bedebah);
						temporA.push(barangada[j].nrating);
						temporB.push(tetangga[i].allProduct[k].nrating);
					}
					//console.log("Tempor A : "+barangada[j].nrating+ " Tempor B : "+tetangga[i].allProduct[k].nrating);
				}
			}
			temporZero.push(bedebah);
		}
		var pertama = Math.sqrt(hasilUsersendiri);
		var kedua = Math.sqrt(hasilUserOrang);
		// console.log("Hasil USER SENDIRI GAN udah sqrt : "+ pertama);
		//console.log("Hasil USER ORANG udah sqrt : "+ kedua);
		// console.log("Hasil Atas : hasilTambah " + hasilTambahCon);
		//console.log("Hasil bawah : (userTT*userKu) "+ (pertama*kedua));
		var hasilCosineSim = hasilTambahCon / (pertama * kedua);
		//console.log("Hasil COSSSSSSSSSSIN HAAAAACCCCIMsssMMM : "+ hasilCosineSim +"  tetangga : "+ tetangga[i].users)
		if (hasilCosineSim > 0) {
			kitaMiripLoh.push(tetangga[i]);
		}
		//console.log("TEMPOR ZERO");
		//console.log(temporZero)
		var blimbing = 0;
		var bengkoang = 0;
		for (b = 0; b < temporA.length; b++) {
			//console.log(temporA);
			//console.log("Tempor A : "+Math.pow(parseInt(temporA[b])) + " Tempor B : "+parseInt(temporB[b]));
			blimbing += Math.pow(parseInt(temporA[b]) - rataUserKu, 2);
			//console.log("Tempo A : " + parseInt(temporA[b]) +" TemporA (Pow) : " + Math.pow(parseInt(temporA[b]) - rataUserKu,2));
			bengkoang += Math.pow(parseInt(temporB[b]) - tetanggacount[i], 2);
			//console.log("Tempo B : " + parseInt(temporB[b]) + " TemporB (Pow) : " + Math.pow(parseInt(temporB[b]) - tetanggacount[i],2));
			//console.log("Tempo B : " + parseInt(temporB[b]) + " - tetanggacount[i] " + tetanggacount[i]);
			//console.log("sibak : "+(Math.sqrt(blimbing+bengkoang)));
			// bak2 = bak2*(Math.sqrt(blimbing+bengkoang));
		}
		var anakHilang1 = Math.sqrt(blimbing);
		var anakHilang2 = Math.sqrt(bengkoang);
		// console.log("anakHilang 1 : "+blimbing +" di SQRT : "+anakHilang1);
		// console.log("anakHilang 2 : "+bengkoang +" di SQRT : "+anakHilang2);
		var tutal = anakHilang1 * anakHilang2;
		// console.log("Total : "+tutal);
		//console.log("Brembo Total " + total);
		var hasil = 0;
		for (var s = 0; s < temporZero.length; s++) {
			hasil += temporZero[s];
			//console.log("TemporZero["+s+"] = " + temporZero[s]);
		}
		// console.log("Hasil TemporZero : " + hasil)
		var hslbagi;
		if (tutal == 0) {
			hslbagi = 0;
		}
		else {
			hslbagi = hasil / tutal;
		}

		var tempor = [tetangga[i], (hslbagi) || 0, hasilCosineSim || 0, tetanggacount[i]] || 0;
		tetanggHasilSim.push(tempor);

		//console.log("===============================");
	}
	//fungsi remove unique
	for (var i = 0; i < tetanggHasilSim.length; i++) {
		var temporz = tetanggHasilSim[i][0];
		//console.log("Unique ID : "+ temporz);
		if (TTHasilSim.length > 0) {
			var c = false;
			for (var j = 0; j < TTHasilSim.length; j++) {
				// console.log("Unique ID TTHasilSim : "+TTHasilSim[j][0]);
				if (TTHasilSim[j][0] == temporz) {
					// console.log("Unique ID TTHasilSim : "+TTHasilSim[j][0] + " We Found Same User");
					c = true;
				}//else{
				//console.log("Unique ID TTHasilSim : "+TTHasilSim[j][0] + " Nothing Found");
				//}
			}
			if (c == false) {
				TTHasilSim.push(tetanggHasilSim[i]);
			}
		} else {
			TTHasilSim.push(tetanggHasilSim[i]);
		}
	}
	// console.log(tetanggHasilSim);
}

function bebekjadiAngsa() {
	for (var i = 0; i < baranggakada.length; i++) {
		var atas = 0;
		var dicari = baranggakada[i].item;
		var bawah = 0;
		//console.log(dicari);
		//
		for (var j = 0; j < TTHasilSim.length; j++) {
			for (var k = 0; k < tetangga.length; k++) {
				//if((tetangga[k].tetangga == TTHasilSim[j][0]) && tetangga[k].untuk_item == dicari){
				for (var l = 0; l < tetangga[k].allProduct.length; l++) {
					// console.log("TTHasilSim["+j+"][1] : " + TTHasilSim[j][1] + " TTHasilSim["+j+"][2] : " + TTHasilSim[j][2] + " (tetangga["+k+"].allProduct["+l+"].nrating : "+ tetangga[k].allProduct[l].nrating + " - TTHasilSim["+j+"][3] : " + TTHasilSim[j][3] +")");
					//console.log("Lakukan Penambahan Kondisi Tetangga : " + tetangga[k].tetangga + " Dicari : " + dicari ); // + " Rating Dia : " + tetangga[k].tetangga
					if (tetangga[k].allProduct[l].item == dicari) {
						// console.log("Hasil :" + TTHasilSim[j][1] * TTHasilSim[j][2] * (tetangga[k].allProduct[l].nrating - TTHasilSim[j][3]));
						atas += (TTHasilSim[j][1] * TTHasilSim[j][2] * (tetangga[k].allProduct[l].nrating - TTHasilSim[j][3]));
						//console.log("PredAtas : "+ atas);
						bawah += Math.abs(TTHasilSim[j][1] * TTHasilSim[j][2]);
						// console.log("PredBawah : "+ bawah);
					}
				}
				//}
			}
		}
		var tempor = parseFloat((rataUserKu + (atas / bawah)));



		if (tempor > 0) {
			//console.log("Rata Userku :" + rataUserKu +" ID Produk : " + dicari + " Nilai : " +tempor + " Nilai Atas : " +atas + " Nilai Bawah : " + bawah);
			if (tempor > 5) {
				tempor = 5;
			}
			ratingAllItem.push({ id_produk: dicari, rating: tempor || 0 }); //dicari, tempor
			tempor = 0;
		}
	}
}

function cariRekomendasi(data, user, tree) {
	var bisa = aturan(tree, user);
	data_ = _(data);
	daftar_item = _.unique(_.pluck(dataAll, 'id_produk'));
	var target = { usr: user, ada: [], tidak: [] };
	var ada = [];
	var gakada = [];
	var hasil_kali = [];
	var chunk = data.length;
	//var barangada = [];
	//var tetangga =[];
	var rules = [];
	var umur = '';
	for (var i = 0; i < dataAll.length; i++) {
		if (target.usr == dataAll[i].id_users) {
			ada.push(dataAll[i].id_produk);
		}
	}
	for (var i = 0; i < daftar_item.length; i++) {
		if (ada.indexOf(daftar_item[i]) == -1) {
			gakada.push(daftar_item[i]);
		}
	}
	for (var i = 0; i < gakada.length; i++) {
		for (var j = 0; j < dataAll.length; j++) {
			var xe = new Object();
			if (gakada[i] == dataAll[j].id_produk) {
				xe = { item: dataAll[j].id_produk, kat_id: dataAll[j].kat_id, rating: '', nrating: 0 };
			}
			baranggakada.push(xe);
		}
	}
	for (var i = 0; i < ada.length; i++) {
		for (var j = 0; j < dataAll.length; j++) {
			if ((user == dataAll[j].id_users) && (ada[i] == dataAll[j].id_produk)) {
				var x = new Object();
				x = { item: dataAll[j].id_produk, kat_id: dataAll[j].kat_id, nrating: dataAll[j].nrating };
				barangada.push(x);
			}
		}
	}
	var unikBeda = [];
	const map = new Map();
	for (const item of baranggakada) {
		if (!map.has(item.item) && !Object.keys(item).length == 0) {
			map.set(item.item, true);    // set any value to Map
			unikBeda.push(item);
		}
	}
	baranggakada = unikBeda;
	unikBeda = [];
	for (const item of barangada) {
		if (!map.has(item.item) && !Object.keys(item).length == 0) {
			map.set(item.item, true);    // set any value to Map
			unikBeda.push(item);
		}
	}
	barangada = unikBeda;

	target.ada = ada; target.tidak = gakada;
	for (var i = 0; i < data.length; i++) {
		if (user == data[i].id_users) {
			umur = data[i].umur;
			break;
		}
	}

}


function id3(_s, target, features) {
	var targets = _.unique(_s.pluck(target)); // mencari ada berapa kriteria pada
	// console.log(targets); //rating (good dan bad)
	if (targets.length == 1) {
		//console.log("end node! "+targets[0]);
		return { type: "result", val: targets[0], name: targets[0], alias: targets[0] + randomTag() };
	}
	if (features.length == 0) {
		//console.log("returning the most dominate feature!!!");
		var topTarget = mostCommon(_s.pluck(target));
		return { type: "result", val: topTarget, name: topTarget, alias: topTarget + randomTag() };
	}
	var bestFeature = maxGain(_s, target, features);
	var remainingFeatures = _.without(features, bestFeature);
	var possibleValues = _.unique(_s.pluck(bestFeature));
	//console.log("node for "+bestFeature);
	var node = { name: bestFeature, alias: bestFeature + randomTag() };
	node.type = "feature";
	//console.log("best : "+bestFeature);
	node.vals = _.map(possibleValues, function (v) {
		//console.log("creating a branch for "+v);
		var _newS = _(_s.filter(function (x) { return x[bestFeature] == v }));
		var child_node = { name: v, alias: v + randomTag(), type: "feature_value" };
		child_node.child = id3(_newS, target, remainingFeatures);
		return child_node;
	});
	return node;
}
function predict(id3Model, sample) {
	var root = id3Model;
	while (root.type != "result") {
		var attr = root.name;
		var sampleVal = sample[attr];
		var childNode = _.detect(root.vals, function (x) { return x.name == sampleVal });
		root = childNode.child;
	}
	return root.val;
}
function entropy(vals) {
	var uniqueVals = _.unique(vals);
	var probs = uniqueVals.map(function (x) { return prob(x, vals) });
	var logVals = probs.map(function (p) { return -p * log2(p) });
	return logVals.reduce(function (a, b) { return a + b }, 0);
}
function gain(_s, target, feature) {
	var attrVals = _.unique(_s.pluck(feature));
	var setEntropy = entropy(_s.pluck(target));
	var setSize = _s.size();
	var entropies = _.map(attrVals, function (n) {
		var subset = _s.filter(function (x) { return x[feature] === n });
		return (subset.length / setSize) * entropy(_.pluck(subset, target));
	});
	var sumOfEntropies = entropies.reduce(function (a, b) { return a + b }, 0);
	return setEntropy - sumOfEntropies;
}
function maxGain(_s, target, features) {
	return _.max(features, function (e) { return gain(_s, target, e) });
}
function prob(val, vals) {
	var instances = _.filter(vals, function (x) { return x === val }).length;
	var total = vals.length;
	return instances / total;
}
function log2(n) {
	return Math.log(n) / Math.log(2);
}
function mostCommon(l) {
	return _.sortBy(l, function (a) {
		return count(a, l);
	}).reverse()[0];
}
function count(a, l) {
	return _.filter(l, function (b) { return b === a }).length
}
function randomTag() {
	return "_r" + Math.round(Math.random() * 1000000).toString();
}
function get_judul(a,data) {
	var as;
	for (var i = 0; i < data.length; i++) {
		if (data[i].id_produk == a) {
			as = data[i].judul_produk;
			break;
		}
	}
	return as;
}
function get_slug(a,data) {
	var as;
	for (var i = 0; i < data.length; i++) {
		if (data[i].id_produk == a) {
			as = data[i].slug_produk;
			break;
		}
	}
	return as;
}
function get_foto(a,data) {
	var as;
	for (var i = 0; i < data.length; i++) {
		if (data[i].id_produk == a) {
			as = data[i].foto;
			break;
		}
	}
	return as;
}
function get_foto_type(a,data) {
	var as;
	for (var i = 0; i < data.length; i++) {
		if (data[i].id_produk == a) {
			as = data[i].foto_type;
			break;
		}
	}
	return as;
}
function get_harga_normal(a,data) {
	var as;
	for (var i = 0; i < data.length; i++) {
		if (data[i].id_produk == a) {
			as = data[i].harga_normal;
			break;
		}
	}
	return as;
}
function get_harga_diskon(a,data) {
	var as;
	for (var i = 0; i < data.length; i++) {
		if (data[i].id_produk == a) {
			as = data[i].harga_diskon;
			break;
		}
	}
	return as;
}


function aturan(test, user) {
	var features = ['id_produk', 'id_users', 'kat_id', 'umur'];
	var rules = [];
	var temp = new Object();
	var tampung = new Object();

	if (test.type == "result") {
		tampung.root = "id_users";
		tampung.nilaiRoot = user;
		tampung.rating = test.name;
		tampung.status = 0;
		rules.push()
	}

	else {
		for (var i = 0; i < test.vals.length; i++) {
			if (test.vals[i].child.type == 'result') {
				tampung.root = test.name;
				tampung.nilaiRoot = test.vals[i].name;
				tampung.rating = test.vals[i].child.name;
				tampung.status = 0;
				rules.push(tampung); tampung = {};
			}
			else {
				for (var j = 0; j < test.vals[i].child.vals.length; j++) {
					tampung.root = test.name;
					tampung.nilaiRoot = test.vals[i].name;
					tampung.node1 = test.vals[i].child.name;
					tampung.nilaiNode1 = test.vals[i].child.vals[j].name;
					if (test.vals[i].child.vals[j].child.type == 'result') {
						tampung.rating = test.vals[i].child.vals[j].child.name;
					}
					tampung.status = 1;
					rules.push(tampung); tampung = {};
				}
			}
		}
	}
	return rules;
	// buat rulesnya jadi fungsi
}
app.use(cors())
app.listen(port, () => console.log(`Example app listening on port ${port}!`))

app.get('/', function (req, res) {
	var user = req.query.name;
	 var url = 'http://localhost/ecommerce/api/halo.php';
	// var url = 'http://192.168.100.9/udemy/test.php';
	// var url = 'http://192.168.100.9/udemy/get_data_algoritma.php';
	// var url = 'http://192.168.100.9/udemy/davtod.php';
	axios.get(url).then(function (response) {

		dataAll = response.data;
		_.each(dataAll, function (d) {
			if (d.id_users == user) {
				userData.push(d);
			}
		})
		_.each(userData, function (u) {
			_.each(dataAll, function (d) {
				if (u.id_produk == d.id_produk && (d.id_users != user)) { // ccari tetangga
					rules.push(d);
					tetangga.push({ users: d.id_users, allProduct: get_product(d.id_users, dataAll) });
				}
			})
		})
		var features = ['id_produk', 'id_users', 'kat_id', 'umur'];
		test = id3(_(rules), 'rating', features);
		cariRekomendasi(rules, user, test);
		bebquganteng();
		bebekjadiAngsa();

		ratingAllItem = _.sortBy(ratingAllItem, "rating").reverse();
		const map = new Map();
		for (const id_produk of ratingAllItem) {
			if (!map.has(id_produk.id_produk) && !Object.keys(id_produk).length == 0) {
				map.set(id_produk.id_produk, true);    // set any value to Map
				theReal.push(id_produk);
			}
		}
		_.each(theReal, function (t) {
			var rata = getRata(t.id_produk, dataAll);
			var a = Math.abs(parseFloat(t.rating) - rata);
			// pengujian.push({ id_produk: t.id_produk, kat_id: get_kat(t.id_produk, dataAll), rating: getRata(t.id_produk, dataAll), prediksi: getRek(t.id_produk, ratingAllItem), pengujian: a })
			pengujian.push({ id_produk: t.id_produk, judul_produk: get_judul(t.id_produk,dataAll), slug_produk: get_slug(t.id_produk,dataAll), foto: get_foto(t.id_produk,dataAll), foto_type: get_foto_type(t.id_produk,dataAll), harga_normal: get_harga_normal(t.id_produk,dataAll), harga_diskon: get_harga_diskon(t.id_produk,dataAll),diskon : getDisc(t.id_produk,dataAll), rating: t.rating});
		})
		// var batas = theReal.length;
		// if (batas > 9) {
		// 	for (var i = 0; i < 10; i++) {
		// 		var rata = getRata(theReal[i].id_produk, dataAll);
		// 		if (parseInt(theReal[i].rating) > 2) {
		// 			rec += 1;
		// 		}
		// 		if (parseInt(rata) > 2) {
		// 			rel += 1;
		// 		}
		// 	}
		// }
		// else {
		// 	for (var i = 0; i < batas; i++) {
		// 		var rata = getRata(theReal[i].id_produk, dataAll);
		// 		if (parseInt(theReal[i].rating) > 2) {
		// 			rec += 1;
		// 		}
		// 		if (parseInt(rata) > 2) {
		// 			rel += 1;
		// 		}
		// 	}
		// }
		// if (rec > 0 && rel > 0) {
		// 	pr = rec / (rec + rel);
		// 	rc = rel / (rec + rel);
		// 	f1 = (2 * pr * rc) / (pr + rc);
		// }
		// else {
		// 	pr = 1;
		// 	rc = 1;
		// 	f1 = 1;
		// }
		var tempt = [];
		if(pengujian.length > 10){
			for (var i = 0; i < 10; i++) {
				tempt.push(pengujian[i])
			}
		}
		pengujian = tempt;
		tempt = [];
		// ratingAllItem = theReal;
		// var sum = 0;
		// _.each(pengujian, function (p) {
		// 	sum += p.pengujian;
		// })
		// mae = sum / pengujian.length;
		//
		// console.log(mae, pr, rc, f1);
		// res.send(ratingAllItem); //habis res.send wajib dikosongkan semua


		res.send(pengujian); //habis res.send wajib dikosongkan semua
		dataAll = []; userData = []; tetangga = [];
		barangada = [];
		cm = [];
		baranggakada = [];
		ratingAllItem = [];
		theReal = [];
		// pengujian = [];

	})
	// res.status(200).send({"data": pengujian });
	// pengujian = [];
})
