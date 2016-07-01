$(document).ready(function() {
  $('a.edit_route').click(function(e) {
    e.preventDefault();

    var route_id = $(this).data('routeId');
    var form = $('#edit_route_' + route_id);
    var title = $('#route_title_' + route_id);

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
