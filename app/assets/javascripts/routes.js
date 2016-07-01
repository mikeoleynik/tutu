$(document).ready(function() {
  $('a.edit_route').click(function(e) {
    e.preventDefault();

    var routeId = $(this).data('routeId');
    var form = $('#edit_route_' + routeId);
    var title = $('#route_title_' + routeId);

    if (!$(this).hasClass('cancel')) {
      $(this).html('Закрыть');
      $(this).addClass('cancel');
    } else {
      $(this).html('Редактировать');
      $(this).removeClass('cancel');
    }

      form.toggle();
      title.toggle();
  });
});
