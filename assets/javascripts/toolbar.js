$(document).ready(function() {
  if(typeof(jsToolBar) != "undefined") {
    jsToolBar.prototype.elements.collapse = {
      type: 'button',
      title: 'Collapse',
      fn: {
        wiki: function() { this.encloseLineSelection('{{collapse\n', '\n}}') }
      }
    }
    wikiToolbar.draw();
  }
});
