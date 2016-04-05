$(function() {
	$("#tabs").tabs();
});

$(function() {
	$( "#accordion_1" ).accordion({
		collapsible: true,
		heightStyle: "content"
	});
});

$(function() {
	$( "#accordion_2" ).accordion({
		collapsible: true,
		heightStyle: "content"
	});
});

!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');


(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/en_GB/all.js#xfbml=1";
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));

function formSubmit()
{
alert("Question submitted, we'll get back asap!!");

}
		var rootURL = "http://localhost:9090/OnlineShop/rest/product";
		
		var findAll= function () {
			console.log('findAll');
			$.ajax({
				type: 'GET',
				url: rootURL,
				dataType: "json", // data type of response
				success: renderList
			});
		};
		
		var showDialog=function(product){
			console.log("show dialog");
			data='<p>'+product.description+'</p>';
			data='<img src="images/'+product.picture+'""/>';
			alert(data);
			$('#dialog').dialog({width: 'auto', modal:true,draggable: true});
			$('#dialog').html(data);
			return false;
		};


		var showDetails=function(id){
			$.ajax({
				type: 'GET',
				url: rootURL + '/' + id,
				dataType: "json",
				success: function(product){
					console.log('findById success: ' + product.name);
					image="images/"+product.picture;
					console.log(image);
					data='<img src="'+image+'" alt="image" width="300px"/><br><br><p>Description:<br>'+product.description+'</p><br><p>Price: '+product.price+'</p>';
					
					console.log(data);
					$('#dialog').dialog({modal:true,draggable: true, width: '600'});
					$('#dialog').html(data);
					return false;
				}
				});
		};

		var renderList = function (data) {
			// JAX-RS serializes an empty list as null, and a 'collection of one' as an object (not an 'array of one')
			var list = data == null ? [] : (data instanceof Array ? data : [data]);

			$('.tr_row').remove();
			$.each(list, function(index, product) {
				$('#table_body').append('<tr><td>'+product.name+'</td><td>'+
						product.brand+'</td><td>'+product.type+'</td><td>'+product.colour+'</td><td>'+product.season+
						'</td><td>'+product.price+'</td><td><a href="#" id="'+product.id+'">More Details</a></td></tr>');
			});
			
			$('#table_id').dataTable({
				"iDisplayLength" : 8,
		        "aLengthMenu" : [ [ 4, 8, 12, 16 ], [ 4, 8, 12, 16, "All" ] ]
			});
			$(document).on("click", "#table_id a", function(){showDetails(this.id);});
		};

		
		//Retrieve the product list when the DOM is ready
		$(document).ready(function(){
			$('#features').jshowoff({autoPlay:false, controls:false});
			findAll();
		});
		

	
		
		
		