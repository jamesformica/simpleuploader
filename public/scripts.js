function destroy(id) {
	var xhr = new XMLHttpRequest();
	xhr.open('POST', '/destroy');
	xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhr.send(encodeURI('id=' + id));

	xhr.onreadystatechange = function() {
		if (xhr.readyState === 4 && xhr.status === 200) {
			location.href = "/";
		}
	};
}

function showfilename() {
	var filename = document.getElementById('file').files[0].name;
	document.getElementById('filelabel').setAttribute("data-filename", filename);
}