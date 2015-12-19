var embed_popup;

embed_popup = function(js_url) {
  var newwindow, tmp;
  newwindow = window.open('', 'name', 'height=150,width=560');
  tmp = newwindow.document;
  tmp.write('<html><head><title>popup</title>');
  tmp.write('</head><body><h3>Copy and paste the following code:</h3>');
  tmp.write('<pre>&lt;script src="' + js_url + '&gt;&lt;/script&gt;</pre>');
  tmp.write('</body></html>');
  tmp.close();
  newwindow.moveTo(screen.width / 2 - 280, screen.height / 2 - 75);
};