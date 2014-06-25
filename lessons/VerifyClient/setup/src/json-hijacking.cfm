


<script language="javascript">
	
	
	var salesArray = [];
	
	Object.prototype.__defineSetter__('DATA', function(obj){alert(obj);});
	
	Object.prototype.__defineSetter__("QUERY", function(x) {
			alert(x);
			var s = "";
			for (f in this) {
				s += f + ": '" + this[f] + "', ";
			}
			s += "QUERY: " + x;
			alert(s)
			
		});
		
	setTimeout(function() {
		//alert(salesArray.length);
	}, 1000);
</script>

<script src="data.cfc?method=getArray&returnformat=json"></script>