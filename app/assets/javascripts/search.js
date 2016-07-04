$(document).ready(function() {
  $('.search_form').submit(function() {
    
    var primaryStation = $(this).find('#primary_station_id');
    var terminalStation = $(this).find('#terminal_station_id');

    if ( primaryStation.val() == terminalStation.val() ) {
      alert('Выберите конечную станцию');
      return false;
    }
  });
});
