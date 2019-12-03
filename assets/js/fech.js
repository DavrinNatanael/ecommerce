$(document).ready(function () {
	get_recomendation();
	// get_prediksi();
	// get_bykategory();
	function get_recomendation() {
		var id = $("#user").val();
		$.ajax({
			type: 'GET',
			url: "http://localhost:3030/?name="+id,
			async: true,
			dataType: "json",
			success: function (data) {
				console.log(data.length);
				console.log(id);
				var html = "";
				for (var i = 0; i < data.length; i++) {
					if(i < 10) {
						html +=
						'<div class="row">' +
						'<div class="col-xl-4 col-lg-4 col-md-6">' +
						'<a href="http://localhost/ecommerce/produk/' +
						data[i].slug_produk +
						'">' +
						'<img class="img-thumbnail" src="http://localhost/ecommerce/assets/images/produk/' +
						data[i].foto +
						"_thumb" +
						data[i].foto_type +
						'">' +
						'</a>' +
						"</div>" +
						'<div class="col-xl-8 col-lg-8 col-md-6">' +
						'<h5>' +
						'<a href="http://localhost/ecommerce/produk/' +
						data[i].slug_produk +
						'">' +
						'<div>' +
						data[i].judul_produk.substr(0, 14) + '...' +
						"</div>" +
						'</a>' +
						"</h5>";
					var tmp = Math.round(data[i].rating);
					if (tmp > 5) {
						tmp = 5;
					}
					for (j = 0; j < tmp; j++) {
						html +=
							'<i style="color:gold;" class="fa fa-star">' +
							"</i> ";
					}
					html +=
						"<small>" +
						data[i].rating +
						"</small>" +
						"<br>" +
						"<strike>" +
						"<b>Rp " +
						data[i].harga_normal +
						"</b>" +
						"</strike>" +
						"<br>" +
						"<b>Rp " +
						data[i].harga_diskon +
						"</b> " +
						'<font style="font-size:15px">' +
						'<span class="badge badge-pill badge-primary">' +
						data[i].diskon +
						"% OFF</span>" +
						'</font>' +
						"</div>" +
						"</div>" +
						"<br>";
					}

				}

				$("#show_data").html(html);

			}
		});
	}

	// function get_prediksi() {
	// 	var id = $("#user").val();
	// 	$.ajax({
	// 		type: "GET",
	// 		url: "http://localhost:3000/336066",
	// 		async: true,
	// 		crossDomain: true,
	// 		dataType: 'json',
	// 		success: function (data) {
	// 			// console.log(data)
	// 			var total = 0;
	// 			var totalrating = 0;
	// 			var rec = 0;
	// 			var rel = 0;
	// 			for (j = 0; j < data.length; j++) {
	// 				if (data[j].rating >= 3) {
	// 					rec++;
	// 				}
	//
	// 				total += data[j].pengujian;
	// 				totalrating++;
	//
	// 			}
	// 			for (k = 0; k < data.length; k++) {
	// 				if (data[k].prediksi >= 3) {
	// 					rel++;
	// 				}
	// 			}
	//
	// 			if(rel == 0 || rec == 0){
	// 				f1=1;
	// 				rel = 0;
	// 				rec=0;
	// 			}
	// 			else {
	// 				pr = rec / ((rec) + (rel));
	// 				rc = rel / (rec + rel);
	// 				f1 = (2 * pr * rc) / (pr + rc);
	// 			}
	// 			// console.log("rek: " + rec)
	// 			// console.log("rel: " + rel)
	// 			// console.log("pr: " + pr)
	// 			// console.log("rc: " + rc)
	// 			// console.log("f1: " + f1)
	// 			// console.log(total)
	// 			// console.log(totalrating)
	// 			var jumlah = total / totalrating;
	// 			// console.log("Jumlah: " + jumlah)
	//
	// 			var html = "";
	// 			var i;
	// 			for (i = 0; i < data.length; i++) {
	// 				html +=
	// 					"<tr>" +
	// 					"<td>" +
	// 					data[i].id_produk +
	// 					"</td>" +
	// 					"<td>" +
	// 					data[i].kat_id +
	// 					"</td>" +
	// 					"<td>" +
	// 					data[i].rating +
	// 					"</td>" +
	// 					"<td>" +
	// 					data[i].prediksi +
	// 					"</td>" +
	// 					"<td>" +
	// 					data[i].pengujian +
	// 					"</td>" +
	// 					"</td>" +
	// 					"</tr>";
	// 			}
	// 			$("#show_data").html(html);
	// 			$("#rata").text(jumlah);
	// 			$("#precicion").text(pr);
	// 			$("#recall").text(rc);
	// 			$("#fone").text(f1);
	// 		}
	//
	// 	});
	// }
	//
	// $("#btn_save").on("click", function () {
	// 	var judul = $("#judul").val();
	// 	console.log(judul);
	// 	$.ajax({
	// 		type: "GET",
	// 		url: "http://localhost:3000/336066",
	// 		async: true,
	// 		crossDomain: true,
	// 		dataType: 'json',
	//
	// 		success: function (data) {
	// 			$('[name="judul"]').val("");
	// 			$("#Modal_Add").modal("hide");
	// 			// console.log(data[0].rating)
	// 			var total2 = 0;
	// 			var totalrating2 = 0;
	// 			var rec2 = 0;
	// 			var rel2 = 0;
	// 			for (j = 0; j < data.length; j++) {
	// 				if (data[j].kat_id === judul) {
	// 					if(data[j].rating >= 3){
	// 						rec2++;
	// 					}
	// 					if(data[j].prediksi >= 3){
	// 						rel2++;
	// 					}
	// 					total2 += data[j].pengujian;
	// 					console.log(total2);
	// 					totalrating2++;
	// 				}
	// 			}
	// 			if(rel2 == 0 || rec2 == 0){
	// 				f12=1;
	// 				rel2 = 0;
	// 				rec2=0;
	// 			}
	// 			else {
	// 				pr2 = rec2 / (rec2 + rel2);
	// 				rc2 = rel2 / (rec2 + rel2);
	// 				f12 = (2 * pr2 * rc2) / (pr2 + rc2);
	// 			}
	// 			// console.log(total)
	// 			// console.log(totalrating)
	// 			var jumlah2=0
	// 			if(totalrating2 == 0 || total2 ==0){
	// 				jumlah2 = 0;
	// 			}
	// 			else {
	// 				jumlah2 = total2 / totalrating2;
	// 			}
	// 			// console.log("Jumlah : " + jumlah)
	// 			var html = "";
	// 			var i;
	// 			for (i = 0; i < data.length; i++) {
	// 				if (data[i].kat_id == judul) {
	// 					html +=
	// 						"<tr>" +
	// 						"<td>" +
	// 						data[i].id_produk +
	// 						"</td>" +
	// 						"<td>" +
	// 						data[i].kat_id +
	// 						"</td>" +
	// 						"<td>" +
	// 						data[i].rating +
	// 						"</td>" +
	// 						"<td>" +
	// 						data[i].prediksi +
	// 						"</td>" +
	// 						"<td>" +
	// 						data[i].pengujian +
	// 						"</td>" +
	// 						"</td>" +
	// 						"</tr>";
	// 				}
	// 			}
	// 			$("#show_kategori").html(html);
	// 			$("#rata2").text(jumlah2);
	// 			$("#precicion2").text(pr2);
	// 			$("#recall2").text(rc2);
	// 			$("#fone2").text(f12);
	// 			data=[];
	// 		}
	// 	});
	// 	return false;
	// });

	$("#btn_save").on("click", function () {
		var judul = $("#judul").val();
		console.log(judul);
		$.ajax({
			type: "GET",
			url: "http://localhost:3000/?name="+judul,
			async: true,
			crossDomain: true,
			dataType: 'json',

			success: function (data) {
				$("#Modal_Add").modal("hide");
				console.log(data.length);
				var html = "";
				html +=
					"<h4>"+
					data.length+
					" Row Affected</h4>";
				$("#show_record").html(html);
				// var total2 = 0;
				// var totalrating2 = 0;
				// var rec2 = 0;
				// var rel2 = 0;
				// for (j = 0; j < data.length; j++) {
				// 	if(data[j].rating >= 3){
				// 		rec2++;
				// 	}
				// 	if(data[j].prediksi >= 3){
				// 		rel2++;
				// 	}
				// 	total2 += data[j].pengujian;
				// 	console.log(total2);
				// 	totalrating2++;
				// }
				// if(rel2 == 0 || rec2 == 0){
				// 	f12=1;
				// 	rel2 = 0;
				// 	rec2=0;
				// }
				// else {
				// 	pr2 = rec2 / (rec2 + rel2);
				// 	rc2 = rel2 / (rec2 + rel2);
				// 	f12 = (2 * pr2 * rc2) / (pr2 + rc2);
				// }
				// // console.log(total)
				// // console.log(totalrating)
				// var jumlah2=0
				// if(totalrating2 == 0 || total2 ==0){
				// 	jumlah2 = 0;
				// }
				// else {
				// 	jumlah2 = total2 / totalrating2;
				// }
				// // console.log("Jumlah : " + jumlah)
				// var html = "";
				// var i;
				// for (i = 0; i < data.length; i++) {
				// 	html +=
				// 		"<tr>" +
				// 		'<td align="center">' +
				// 		data[i].id_produk +
				// 		"</td>" +
				// 		'<td align="center">' +
				// 		data[i].kat_id +
				// 		"</td>" +
				// 		'<td align="center">' +
				// 		data[i].rating +
				// 		"</td>" +
				// 		'<td align="center">' +
				// 		data[i].prediksi +
				// 		"</td>" +
				// 		'<td align="center">' +
				// 		data[i].pengujian +
				// 		"</td>" +
				// 		"</tr>";
				// }
				// var kat = ["dress","sheath","gown","romper","blouse","skirt","shift","jacket","top","blazer","sweater","jumpsuit","shirtdress","trousers","tunic","maxi","coat","down","culottes","bomber","pants","vest","jogger","swearshirt","shirt","tank","cape","hoodie","leggings","poncho","trench","midi","pullover","kimono","print","blousin","tight","cardigan","parka","peacoat","sweatpants","suit","mini","turtleneck","tees","formal","jeans","knit","henley","caftan"];
				// var kat = ["sheath"];
				// var html2 = "";
				// var i;
				// var j;
				// 	// for (i = 0; i < kat.length ; i++) {
				// 	// 	var tempo = 0;
				// 	// 	var mae = 0;
				// 	// 	for(j = 0;j< data.length;j++){
				// 	// 		if(data[j].kat_id == kat[i]){
				// 	// 			tempo++;
				// 	// 			mae += data[j].pengujian;
				// 	// 			// html2 +=
				// 	// 			// 	"<tr>" +
				// 	// 			// 	"<td>" +
				// 	// 			// 	data[j].kat_id +
				// 	// 			// 	"</td>" +
				// 	// 			// 	"<td>" +
				// 	// 			// 	mae/tempo +
				// 	// 			// 	"</td>" +
				// 	// 			// 	"<td>" +
				// 	// 			// 	data[j].rating +
				// 	// 			// 	"</td>" +
				// 	// 			// 	"<td>" +
				// 	// 			// 	data[j].prediksi +
				// 	// 			// 	"</td>" +
				// 	// 			// 	"<td>" +
				// 	// 			// 	data[j].pengujian +
				// 	// 			// 	"</td>" +
				// 	// 			// 	"</td>" +
				// 	// 			// 	"</tr>";
				// 	// 		}
				// 	// 	}
				// 	// }
				// 	for (var a = 0; a < kat.length; a++) {
				// 	var tempo = 0;
				// 	var mae = 0;
				// 	var rele = 0;
				// 	var reco = 0;
				// 			for(j = 0;j< data.length;j++){
				// 				if(data[j].kat_id == kat[a]){
				// 					tempo++;
				// 					mae += data[j].pengujian;
				// 					if(data[j].rating >=3 ){
				// 						reco++;
				// 					}
				// 					if(data[j].prediksi >=3 ){
				// 						rele++;
				// 					}
				// 					// html2 +=
				// 					// 	"<tr>" +
				// 					// 	"<td>" +
				// 					// 	data[j].kat_id +
				// 					// 	"</td>" +
				// 					// 	"<td>" +
				// 					// 	mae/tempo +
				// 					// 	"</td>" +
				// 					// 	"<td>" +
				// 					// 	data[j].rating +
				// 					// 	"</td>" +
				// 					// 	"<td>" +
				// 					// 	data[j].prediksi +
				// 					// 	"</td>" +
				// 					// 	"<td>" +
				// 					// 	data[j].pengujian +
				// 					// 	"</td>" +
				// 					// 	"</td>" +
				// 					// 	"</tr>";
				// 				}
				// 			}
				// 			if(tempo!=0){
				// 				// console.log(tempo);
				// 				// console.log(reco);
				// 				// console.log(rele);
				// 				html2 +=
				// 					"<tr>" +
				// 					'<td align="center">' +
				// 					kat[a] +
				// 					"</td>" +
				// 					'<td align="center">' +
				// 					mae/tempo +
				// 					"</td>" +
				// 					'<td align="center">' +
				// 					reco/(rele+reco) +
				// 					"</td>" +
				// 					'<td align="center">' +
				// 					rele/(rele+reco) +
				// 					"</td>" +
				// 					'<td align="center">' +
				// 					(2*(reco/(rele+reco))*(rele/(rele+reco)))/((reco/(rele+reco))+(rele/(rele+reco))) +
				// 					"</td>" +
				// 					"</tr>";
				// 			}
				// 	}
				//
				// 	// console.log(mae);
				// $("#show_kategori").html(html2);
				// $("#show_data").html(html);
				// $("#rata").text(jumlah2);
				// $("#precicion").text(pr2);
				// $("#recall").text(rc2);
				// $("#fone").text(f12);
				// data=[];
			}
		});
		return false;
	});


});
