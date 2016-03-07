function killit() {
	var xhr = new XMLHttpRequest();
	xhr.open('POST', '/killit');
	xhr.send(null);

	xhr.onreadystatechange = function() {
		if (xhr.readyState === 4 && xhr.status === 200) {
			location.reload();
		}
	};
}