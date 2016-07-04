$(document).ready(function() {
  $('a.edit_train').click(function(e) {
    e.preventDefault();

    var train_id = $(this).data('trainId');
    var form = $('#edit_train_' + train_id);
    var number = $('#train_number_' + train_id);

    if (!$(this).hasClass('cancel')) {
      $(this).html('Закрыть');
      $(this).addClass('cancel');
    } else {
      $(this).html('Редактировать');
      $(this).removeClass('cancel');
    }

      form.toggle();
      number.toggle();
  });
});
