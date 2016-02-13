HTMLWidgets.widget({

  name: 'plot_mvar_d3',
  type: 'output',

  initialize: function(el, width, height) {
    return {"width": width, "height": height};
  },

  renderValue: function(el, x, instance) {
    setupElems(el, x.length, instance.width);
    for(var i in d3.range(x.length)) {
      cur_x = HTMLWidgets.dataframeToD3(x[i].data);
      cur_x = cur_x.map(function(z) {
	z["None"] = "no_color"; // to give option for no color / size
	return z;
      })
      createInput(el, cur_x, i, x[i]["opts"]);
      createQuantiInput(el, cur_x, i, x[i]["opts"]);
      setupSVG(el, cur_x, instance["width"], instance["height"], i, x["length"]);
      drawScatter(el, cur_x, i, x[i]["opts"]);
      makeTable(el, instance["width"], cur_x, i);
    }
  }
});

