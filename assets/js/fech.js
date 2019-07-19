$(document).ready(function() {
	get_recomendation();

	function get_recomendation() {
		var id = $("#user").val();
		$.ajax({
			type: 'GET',
			url: "http://localhost:3000/?name="+id,
			async: true,
			dataType: "json",
			success: function(data) {
				var html = "";
				var i;
				var j;
				for (i = 0; i < 10; i++) {
					html +=
						'<div class="row">'+
						'<div class="col-xl-4 col-lg-4 col-md-6">' +
						'<a href="http://localhost/ecommerce/produk/'+
						data[i].slug_produk +
						'">' +
						'<img class="img-thumbnail" src="http://localhost/ecommerce/assets/images/produk/' +
						data[i].foto +
						"_thumb"+
						data[i].foto_type +
						'">' +
						'</a>'+
						"</div>"+
						'<div class="col-xl-8 col-lg-8 col-md-6">'+
						'<h5>'+
						'<a href="http://localhost/ecommerce/produk/'+
						data[i].slug_produk +
						'">'+
						'<div>'+
						data[i].judul_produk.substr(0,14) + '...' +
						"</div>"+
						'</a>'+
						"</h5>";
						for (j = 0; j < Math.round(data[i].rating); j++) {
							html +=
								'<i style="color:gold;" class="fa fa-star">'+
								"</i> ";
						}
						html +=
						"<small>"+
						data[i].rating+
						"</small>"+
						"<br>"+
						"<strike>"+
						"<b>Rp "+
						data[i].harga_normal+
						"</b>"+
						"</strike>"+
						"<br>"+
						"<b>Rp "+
						data[i].harga_diskon+
						"</b> "+
						'<font style="font-size:15px">'+
						'<span class="badge badge-pill badge-primary">'+
						data[i].diskon+
						"% OFF</span>"+
						'</font>'+
						"</div>"+
						"</div>"+
						"<br>";
				}
				$("#show_data").html(html);
			}
		});
	}
});
