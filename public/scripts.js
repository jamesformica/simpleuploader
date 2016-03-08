function destroy() {
	var xhr = new XMLHttpRequest();
	xhr.open('POST', '/destroy');
	xhr.send();

	xhr.onreadystatechange = function() {
		if (xhr.readyState === 4 && xhr.status === 200) {
			location.reload();
		}
	};
}

function showfilename() {
	var filename = document.getElementById('file').files[0].name;
	document.getElementById('filelabel').setAttribute("data-filename", filename);
}