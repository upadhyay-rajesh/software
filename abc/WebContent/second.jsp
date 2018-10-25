<form name="employeeValue">
	<input type="hidden"
		value="<%out.print(request.getParameter("employee"));%>"
		name="empValue"> <input type="button" value="Parse JSON Array"
		onclick="Click()" />
</form>

<script language="Javascript" type="text/javascript">
	var employee = document.forms["employeeValue"]["empValue"].value;

	function Click() {
		//step 1
		var XMLHTTP = null;
		if (window.ActiveXObject) {
			try {
				XMLHTTP = new ActiveXObject("Msxml2.XMLHTTP");
			} catch (e) {
				try {
					XMLHTTP = new ActiveXObject("Microsoft.XMLHTTP");
				} catch (e) {
				}
			}
		} else if (window.XMLHttpRequest) {
			try {
				// Firefox, Opera 8.0+, Safari
				XMLHTTP = new XMLHttpRequest();
			} catch (e) {
			}

			//step 2

			if (XMLHTTP != null) {
				if (employee == ("ankur")) {
					XMLHTTP.open("GET", "jsonArray.js");
				}
				if (employee == ("aman")) {
					XMLHTTP.open("GET", "aman.js");
				}
				if (employee == ("manu")) {
					XMLHTTP.open("GET", "manu.js");
				}
			}
			//step 3
			XMLHTTP.onreadystatechange = function() {
				if (XMLHTTP.readyState == 4 && XMLHTTP.status == 200) {
					eval("var rrr = " + XMLHTTP.responseText + ";");
					//target.appendChild(document
				//			.createTextNode("  Employee Name--->Skills"));
					var v="";
					for ( var i = 0; i < rrr.length; i++) {
					v=v+rrr[i].level + "--->"	+ rrr[i].desc+"<br>";
					//	var listItem = document.createElement("li");
					//	var listItemText = document
						//		.createTextNode(response1[i].level + "--->"
									//	+ response1[i].desc);
						//listItem.appendChild(listItemText);
					//	list.appendChild(listItem);

					}
					document.write(v);
				}
			}

			//ready to send the request

			//step 4
			XMLHTTP.send(null);
		}
	}
	
</script>
	<h4>
		<span id="target"></span>
	</h4>
	<ul id="list"></ul>

