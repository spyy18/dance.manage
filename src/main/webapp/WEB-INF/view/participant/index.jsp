<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.joda.org/joda/time/tags" prefix="joda"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="dmtags"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<spring:message var="i18nTitle" code="nav.home" />
<spring:message var="i18nMyAccount" code="widget.myaccount" />
<spring:message var="i18nEdit" code="label.edit" />
<spring:message var="i18nChangePassword" code="label.changePassword" />
<spring:message var="i18nMyCourses" code="widget.mycourses" />
<spring:message var="i18nAgenda" code="widget.agenda" />
<spring:message var="i18nInvoices" code="widget.invoices" />

<dmtags:base title="${i18nTitle}" activesection="dashboard">
	<dmtags:span width="6">
		<c:choose>
			<c:when test="${participant.courseParticipants.size() gt 0}">
				<dmtags:widget title="${i18nMyCourses}" style="table" icon="icon-list">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th><spring:message code="label.year" /></th>
								<th><spring:message code="label.name" /></th>
								<th><spring:message code="participant.registered" /></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${participant.courseParticipants}" var="courseParticipant" varStatus="loop">
								<tr>
									<td>${courseParticipant.course.year}</td>
									<td>${courseParticipant.course.name}</td>
									<td><spring:message code="${courseParticipant.duration.i18nIdentifier}" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</dmtags:widget>
			</c:when>
			<c:otherwise>
				<dmtags:widget title="${i18nMyCourses}" style="noTable" icon="icon-list">
					<spring:message code="participant.noCourses" />
				</dmtags:widget>
			</c:otherwise>
		</c:choose>

		<spring:message var="i18nSiblings" code="widget.siblings" />
		<c:choose>
			<c:when test="${participant.siblings.size() gt 0}">
				<dmtags:widget title="${i18nSiblings}" style="table" icon="icon-list">
					<table class="table table-striped table-bordered">
						<thead />
						<tbody>
							<c:forEach items="${participant.siblings}" var="sibling" varStatus="loop">
								<tr>
									<td>${sibling.firstname}&nbsp;${sibling.lastname}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</dmtags:widget>
			</c:when>
			<c:otherwise>

				<dmtags:widget title="${i18nSiblings}" style="noTable" icon="icon-list">
					<spring:message code="participant.noSiblings" />
				</dmtags:widget>
			</c:otherwise>
		</c:choose>

		<c:choose>
			<c:when test="${participant.invoices.size() gt 0}">
                <c:forEach items="${participant.invoices}" var="invoice" varStatus="loop">
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
                            <c:forEach items="${participant.invoices}" var="invoice" varStatus="loop">
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
				<dmtags:widget title="${i18nInvoices}" style="noTable" icon="icon-envelope">
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
				<a href="<c:url value='/participant/edit/${participant.pid}' />"><button type="submit" class="btn btn-primary">${i18nEdit}</button></a> <a
					href="<c:url value='/participant/editPassword/${participant.pid}' />"><button type="submit" class="btn btn-primary">${i18nChangePassword}</button></a>

			</div>
			<!-- /widget-header -->
			<div class="widget-content">
				<table class="table table-striped table-bordered">
					<thead />
					<tr>
						<td><spring:message code="label.firstname" /></td>
						<td>${participant.firstname}</td>
					</tr>
					<tr>
						<td><spring:message code="label.lastname" /></td>
						<td>${participant.lastname}</td>
					</tr>
					<tr>
						<td><spring:message code="label.email" /></td>
						<td>${participant.email}</td>
					</tr>
					<tr>
						<td><spring:message code="label.telephone" /></td>
						<td>${participant.telephone}</td>
					</tr>
					<tr>
						<td><spring:message code="label.birthday" /></td>
						<td>${participant.birthday}</td>
					</tr>
					<tr>
						<td><spring:message code="label.contactPerson" /></td>
						<td>${participant.parent.firstname}&nbsp;${participant.parent.lastname}</td>
					</tr>
					<tr>
						<td><spring:message code="label.emergencyNumber" /></td>
						<td>${participant.parent.telephone}</td>
					</tr>

					<tr>
						<td><spring:message code="label.street" /></td>
						<td>${participant.address.street}</td>
					</tr>
					<tr>
						<td><spring:message code="label.number" /></td>
						<td>${participant.address.number}</td>
					</tr>
					<tr>
						<td><spring:message code="label.stair" /></td>
						<td>${participant.address.stair}</td>
					</tr>
					<tr>
						<td><spring:message code="label.door" /></td>
						<td>${participant.address.door}</td>
					</tr>
					<tr>
						<td><spring:message code="label.zip" /></td>
						<td>${participant.address.zip}</td>
					</tr>
					<tr>
						<td><spring:message code="label.city" /></td>
						<td>${participant.address.city}</td>
					</tr>
				</table>
			</div>
		</div>
	</dmtags:span>

	<dmtags:span width="12">
		<dmtags:widget title="${i18nAgenda}" style="nopad" icon="icon-calendar">
			<div id='calendar'></div>
		</dmtags:widget>
	</dmtags:span>

</dmtags:base>


<script>
$(document).ready(function() {
	var courseData = [
	<c:forEach items="${enabledCourses}" var="courseParticipant"
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
