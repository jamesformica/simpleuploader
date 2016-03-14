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

function showfilename(event) {
	var filename = event.srcElement.files[0].name;
	event.srcElement.labels[0].setAttribute("data-filename", filename);
}