<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="dmtags"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%-- <%@ page import="org.joda.time.*" %> --%>
<spring:message var="i18nTitle" code="nav.home" />
<dmtags:base title="${i18nTitle}" activesection="dashboard">
    <spring:message var="i18nCourses" code="widget.courses" />
	<c:choose>
		<c:when test="${user.courseParticipants.size() gt 0}">
			<dmtags:widget title="${i18nCourses}" style="table" icon="icon-list">
				<table class="table table-striped table-bordered">
					<thead>
						<tr>
							<th><spring:message code="label.year" /></th>
							<th><spring:message code="label.name" /></th>
							<th><spring:message code="participant.registered" /></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${user.courseParticipants}"
							var="courseParticipant" varStatus="loop">
							<tr>
								<td>${courseParticipant.key.course.year}</td>
								<td>${courseParticipant.key.course.name}</td>
								<td>${courseParticipant.duration}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</dmtags:widget>
		</c:when>
		<c:otherwise>
			<dmtags:widget title="${i18nCourses}" style="noTable" icon="icon-list">
				<spring:message code="participant.noCourses" />
			</dmtags:widget>
		</c:otherwise>
	</c:choose>

	<div class="table">
		<div class="widget-header">
			<i class="icon-list"></i>
			<h3>
				<spring:message code="widget.accountInfo" />
			</h3>
			<a href="<c:url value='/participant/edit' />"><button
					type="submit" class="btn btn-primary">Edit</button></a>
		</div>
		<!-- /widget-header -->
		<div class="widget-content">
			<table class="table table-striped table-bordered">
				<thead />
				<dmtags:personInformation />
				<tr>
					<td><spring:message code="label.emergencyNumber" /></td>
					<td>${user.emergencyNumber}</td>
				</tr>
				<tr>
					<td><spring:message code="label.contactPerson" /></td>
					<td>${user.contactPerson}</td>
				</tr>

				<dmtags:addressInformation />
			</table>
		</div>
		<!-- /widget-content -->
	</div>
	<!-- /widget -->



	<%-- 	<dmtags:widget title="widget.courses" style="nopad" icon="icon-list"> --%>
	<!-- 		<div id='calendar'></div> -->
	<%-- 	</dmtags:widget> --%>



	<spring:message var="i18nSiblings" code="widget.siblings" />
	<c:choose>
		<c:when test="${user.siblings.size() gt 0}">
			<dmtags:widget title="${i18nSiblings}" style="table" icon="icon-list">
				<table class="table table-striped table-bordered">
					<thead />
					<tbody>
						<c:forEach items="${user.siblings}" var="sibling" varStatus="loop">
							<tr>
								<td>${sibling.firstname}&nbsp;${sibling.lastname}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</dmtags:widget>
		</c:when>
		<c:otherwise>

			<dmtags:widget title="${i18nSiblings}" style="noTable"
				icon="icon-list">
				<spring:message code="participant.noSiblings" />
			</dmtags:widget>
		</c:otherwise>
	</c:choose>
	
    <spring:message var="i18nInvoices" code="widget.invoices" />
	<c:choose>
		<c:when test="${user.invoices.size() gt 0}">
			<dmtags:widget title="${i18nInvoices}" style="table" icon="icon-list">
                TODO show invoices
            </dmtags:widget>
		</c:when>
		<c:otherwise>
			<dmtags:widget title="${i18nInvoices}" style="noTable"
				icon="icon-list">
				<spring:message code="user.noInvoices" />
			</dmtags:widget>
		</c:otherwise>
	</c:choose>
</dmtags:base>
<script>


<%-- <% --%>
// 	int weekDay = (Integer)pageContext.getAttribute("courseParticipant.key.course.weekday");
// 	LocalDate now = new LocalDate();
// 	LocalDate weekDayDate = now.withDayOfWeek(weekDay);
// 	pageContext.setAttribute("weekDayDate", weekDayDate);
<%-- %> --%>

var courseData = [
<c:forEach items="${user.courseParticipants}" var="courseParticipant"
	varStatus="loop">
	        {
              title: '${courseParticipant.key.course.name}',
              start: 'T<joda:format value="${courseParticipant.key.course.time}" pattern="HH:mm" />',
            },
</c:forEach>
];

$(document).ready(function() {
    var date = new Date();
    var d = date.getDate();
    var m = date.getMonth();
    var y = date.getFullYear();
    var calendar = $('#calendar').fullCalendar({
      header: {
        left: '',
        center: '',
        right: '',
      },
      selectable: true,
      selectHelper: true,
      defaultView: 'agendaWeek',
      allDaySlot: false,
      axisFormat: 'HH:mm',
      minTime: 10,
      firstHour: 12,
      firstDay: 1,
      columnFormat: 'dddd',
      select: function(start, end, allDay) {
        var title = prompt('Event Title:');
        if (title) {
          calendar.fullCalendar('renderEvent',
            {
              title: title,
              start: start,
              end: end,
              allDay: allDay
            },
            true // make the event "stick"
          );
        }
        calendar.fullCalendar('unselect');
      },
      editable: true,
      events: courseData,
    });
  });
</script>
