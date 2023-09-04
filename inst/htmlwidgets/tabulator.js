HTMLWidgets.widget({
  name: 'tabulator',
  type: 'output',

  factory: function(el, width, height) {

    return {

      renderValue: function(x) {
       new Tabulator("#" + el.id, {
          data: x.data,
          autoColumns: true,
          layout: "fitColumns",
          height: "100%"
        });
      },

      resize: function(width, height) {}
    };
  }
});
