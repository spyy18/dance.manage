<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="dmtags"%>

<spring:message var="i18nTitle" code="nav.home" />
<spring:message var="i18nMyAccount" code="widget.myaccount" />
<spring:message var="i18nEdit" code="label.edit" />
<spring:message var="i18nChangePassword" code="label.changePassword" />
<spring:message var="i18nInvoices" code="widget.invoices" />
<spring:message var="i18nMyChildren" code="widget.myChildren" />
<spring:message var="i18nAgendaAllChildren" code="widget.agendaAllChildren" />

<dmtags:base title="${i18nTitle}" activesection="dashboard">
	<dmtags:span width="6">
		<div class="widget widget-table action-table">
			<div class="widget-header">
				<i class="icon-user"></i>
				<h3>${i18nMyChildren}</h3>
				<!-- <a href="<c:url value='/parent/add/child' />"><button type="submit" class="btn btn-primary"><spring:message code="parent.editChild" /></button></a> -->
			</div>
			<!-- /widget-header -->
			<c:choose>
				<c:when test="${user.children.size() gt 0}">
					<div class="widget-content">
						<table class="table table-striped table-bordered">
							<thead>
								<tr>
									<th><spring:message code="label.firstname" /></th>
									<th><spring:message code="label.lastname" /></th>
									<th />
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${user.children}" var="child" varStatus="loop">
									<tr>
										<td>${child.firstname}</td>
										<td>${child.lastname}</td>
										<td style="text-align: center"><a href="<c:url value='/participant/${child.pid}'/>"><button type="submit" class="btn btn-info">
													<spring:message code="parent.viewChildAccount"></spring:message>
												</button></a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</c:when>
				<c:otherwise>
					<div class="widget-content">
						<spring:message code="parent.noChildren" />
					</div>
				</c:otherwise>
			</c:choose>
		</div>

		<c:choose>
			<c:when test="${user.invoices.size() gt 0}">
				<c:forEach items="${user.invoices}" var="invoice" varStatus="loop">
					<c:if test="${invoice.reduction != null}">
						<c:set var="hasReduction" value="true" />
					</c:if>
				</c:forEach>
				<dmtags:widget title="${i18nInvoices}" icon="icon-envelope" style="table">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th><spring:message code="label.invoiceDate" /></th>
								<th><spring:message code="label.name" /></th>
								<th><spring:message code="label.vatAmount" /></th>
								<c:if test="${hasReduction}">
									<th><spring:message code="label.reduction" />&nbsp;(%)</th>
									<th><spring:message code="label.reduction" /></th>
								</c:if>
								<th><spring:message code="label.courses" /></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${user.invoices}" var="invoice" varStatus="loop">
								<tr>
									<td><joda:format value="${invoice.date}" pattern="yyyy-MM-dd" /></td>
									<td>${invoice.totalAmount}</td>
									<td>${invoice.vatAmount}</td>
									<c:if test="${hasReduction}">
										<td>${invoice.reduction}</td>
										<td>${invoice.reductionAmount}</td>
									</c:if>
									<td><c:forEach items="${invoice.positions}" var="position" varStatus="innerLoop">
								        ${position.key.course.name}&nbsp;(<spring:message code="${position.duration.i18nIdentifier}" />)
								        <c:if test="${!innerLoop.last}">,&nbsp;</c:if>
										</c:forEach></td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
				</dmtags:widget>
			</c:when>
			<c:otherwise>
				<dmtags:widget title="${i18nInvoices}" style="noTable" icon="icon-list">
					<spring:message code="user.noInvoices" />
				</dmtags:widget>
			</c:otherwise>
		</c:choose>
	</dmtags:span>

	<dmtags:span width="6">
		<div class="widget widget-table action-table">
			<div class="widget-header">
				<i class="icon-user"></i>
				<h3>${i18nMyAccount}</h3>
				<a href="<c:url value='/parent/edit' />"><button type="submit" class="btn btn-primary">${i18nEdit}</button></a> <a href="<c:url value='/parent/editPassword' />"><button type="submit"
						class="btn btn-primary">${i18nChangePassword}</button></a>
			</div>
			<!-- /widget-header -->
			<div class="widget-content">
				<table class="table table-striped table-bordered">
					<thead />
					<dmtags:personInformation />

					<dmtags:addressInformation />
				</table>
			</div>
		</div>
	</dmtags:span>

	<dmtags:span width="12">
		<dmtags:widget title="${i18nAgendaAllChildren}" style="nopad" icon="icon-calendar">
			<div id='calendar'></div>
		</dmtags:widget>
	</dmtags:span>

</dmtags:base>
<script>



$(document).ready(function() {
    var courseData = [   
    <c:forEach items="${enabledCoursesofChildren}" var="courseParticipant"
        varStatus="loop">
                {
                  title: '${courseParticipant.course.name}',
                  start: '<joda:format value="${courseParticipant.course.getStartDateTimeCurrentWeekRepresentation()}" pattern="yyyy-MM-dd HH:mm:ss" />',
                  end: '<joda:format value="${courseParticipant.course.getEndDateTimeCurrentWeekRepresentation()}" pattern="yyyy-MM-dd HH:mm:ss" />',
                  allDay: false,
                  color: '#FF8106',
                },
    </c:forEach>
    ];
    
    $('#calendar').fullCalendar({
      header: {
        left: '',
        center: '',
        right: '',
      },
      defaultView: 'agendaWeek',
      weekends: false,
      contentHeight: 450,
      allDaySlot: false,
      axisFormat: 'HH:mm',
      timeFormat: 'HH:mm{ - HH:mm}',
      minTime: 10,
      firstHour: 15,
      firstDay: 1,
      slotMinutes: 15,
      columnFormat: 'dddd',
      editable: false,
      events: courseData,
    });
  });
</script>