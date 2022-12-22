<%@ page contentType="text/html; charset=utf-8"%>
<html lang='en'>
  <head>
    <meta charset='utf-8' />
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <link href='./resources/css/main.min.css' rel='stylesheet' />
	<script src='./resources/js/ko.js'></script>
    <script src='./resources/js/main.min.js'></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bPopup/0.11.0/jquery.bpopup.min.js"></script>
    <script>
		document.addEventListener('DOMContentLoaded', function() {
			var calendarEl = document.getElementById('calendar');
			var calendar = new FullCalendar.Calendar(calendarEl, {
				  locale: "ko",
				  initialView: 'dayGridMonth',
				  headerToolbar: {
					left: 'prev,next today',
					center: 'title',
					right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
				  },
				  googleCalendarApiKey: 'AIzaSyDfcE3cM8YX9Mt2hs-f5ffCqleYmPUGOvY',
				  events: {
				  googleCalendarId: 'tbm80iev5qgi30323iohv6icos@group.calendar.google.com',
				  className: 'gcal-event' // an option!
				  },
				  eventClick: function(info) {
					  let start_year = info.event.start.getUTCFullYear();
					  let start_month = info.event.start.getMonth() + 1;
					  let start_date = info.event.start.getUTCDate();
					  let start_hour = info.event.start.getHours();
					  let start_minute = info.event.start.getMinutes();
					  let start_second = info.event.start.getSeconds();
					  let end_hour = info.event.end.getHours();

					  let start = start_year + "-" + start_month + "-" + start_date + " " + start_hour + "ì ~ " + end_hour + "ì";

					  let attends = "";
					  info.event.extendedProps.attachments.forEach(function(item) {
						  attends += "<div><a href='"+item.fileUrl+"' target='_blank'>[ì²¨ë¶íì¼]</a></div>"
					  });

					  if(!info.event.extendedProps.description) {
						  info.event.extendedProps.description = "";
					  }
					  let contents = `
						<div style='font-weight:bold; font-size:20px; margin-bottom:30px; text-align:center'>
							${start}
						</div>
						<div style='font-size:18px; margin-bottom:20px'>
							ì ëª©: ${info.event.title}
						</div>
						<div style='width:500px'>
							${info.event.extendedProps.description}
							${attends}
						</div>
					  `;
					  
					  $("#popup").html(contents);
					  $("#popup").bPopup({
						speed: 650,
						transition: 'slideIn',
						transitionClose: 'slideBack',
						position: [($(document).width()-500)/2, 30] //x, y
					  });
					  info.jsEvent.stopPropagation();
					  info.jsEvent.preventDefault();
				  }
			});
			calendar.render();
		});
    </script>
    <link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
    
    <title>경기 일정</title>
  </head>
  <body>
  <div style="width: 1900px;" align="center">
		<jsp:include page="menu.jsp" />

		<div class="jumbotron">
			<div class="container">
				<h1 class="display-4" text>K-LEAGUE 경기 일정</h1>
			</div>
		</div>
    <div id='calendar'></div>
	<div id='popup' style="width:500px; height:600px; display:none; background-color:white; padding:20px; border-radius:14px; border:2px solid #eeeeee"></div>
	</div>
	<hr>

	<jsp:include page="footer.jsp" />
	
  </body>
</html>