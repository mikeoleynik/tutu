$(document).ready(function() {
  $('.search_form').submit(function() {
    var primary_station;
    var terminal_station;

    primary_station = $(this).find('#primary_station_id');
    terminal_station = $(this).find('#terminal_station_id');

    if ( primary_station.val() == terminal_station.val() ) {
      alert('Выберите конечную станцию');
      return false;
    }
  });
});
