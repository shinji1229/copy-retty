$(document).on('turbolinks:load', function () {
  $('#calendar').fullCalendar({
    header: {
      left: 'prev,next today',
      center: 'title',
      right: 'month,agendaWeek,agendaDay'
    },
    contentHeight: 500,
    lang: 'ja',
    navLinks: true,
    selectable: true,
    selectHelper: true,
    select: function(start, end) {
      var title = prompt('イベントを追加');
      var eventData;
      if (title) {
        eventData = {
          title: title,
          start: start,
          end: end
        };
        $('#calendar').fullCalendar('renderEvent', eventData, true);
      }
      $('#calendar').fullCalendar('unselect');
    },
    events: '/events.json',
    editable: true
  });
});
