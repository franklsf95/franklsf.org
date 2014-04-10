(function() {
  $(function() {
    var beginning, graduation, now, p;
    beginning = Date.UTC(2013, 9, 23, 19, 0, 0);
    graduation = Date.UTC(2017, 6, 14, 14, 15, 0);
    now = Date.now();
    p = (now - beginning) / (graduation - beginning);
    p = Math.floor(p * 100).toString() + '%';
    $('#progress-college').width(p).text(p);
    return $('#progress-high-school').width('100%').text('100%');
  });

}).call(this);
