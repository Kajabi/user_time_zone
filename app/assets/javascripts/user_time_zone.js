//= require jstz

(function($) {
  $.fn.browserTimeZone = function() {
    var tz = jstz.determine();
    this.val(tz.name());
  };

  $('input[data-js-time-zone]').browserTimeZone();
})(jQuery);
