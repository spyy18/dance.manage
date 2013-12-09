<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="dmtags"%>

<spring:message var="i18nTitle" code="nav.lists" />
<dmtags:base title="${i18nTitle}" activesection="lists">
	<spring:message var="i18nPerformanceInformation"
		code="widget.performanceInformation" />
	<dmtags:widget title="${i18nPerformanceInformation}" style="table"
		icon="icon-list">
		<display:table name="courses" id="course"
			class="table table-striped table-bordered displaytag" pagesize="15"
			requestURI="/admin/lists" defaultsort="1">
			<display:column sortable="true" titleKey="label.coursename">
				${course.name}
			</display:column>
			<display:column sortable="true" titleKey="label.ageGroup">
				<spring:message code="${course.ageGroup.i18nIdentifier}" />
			</display:column>
			<display:column sortable="true" titleKey="label.level">
				<spring:message code="${course.level.i18nIdentifier}" />
			</display:column>
			<display:column sortable="true" titleKey="label.amountParticipants">
				${course.courseParticipants.size()}
			</display:column>
			<display:column sortable="true" titleKey="label.estimatedSpectators">
				<spring:message code="${course.estimatedSpectators.i18nIdentifier}" />
			</display:column>
			<display:column sortable="true" titleKey="label.amountPerformances">
				${course.amountPerformances}
			</display:column>
		</display:table>

	</dmtags:widget>

	<c:if test="${!empty participantsByNumberOfCourses}">
		<spring:message var="i18nParticipantCourseAmount"
			code="widget.participantCourseAmount" />
		<dmtags:widget title="${i18nParticipantCourseAmount}" style="table"
			icon="icon-list">
			<table class="table table-striped table-bordered">
				<thead>
					<tr>
						<th><spring:message code="label.amountCourses" /></th>
						<th><spring:message code="label.courses" /></th>
						<th><spring:message code="label.firstname" /></th>
						<th><spring:message code="label.lastname" /></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${participantsByNumberOfCourses}"
						var="participant" varStatus="loop">
						<c:if test="${fn:length(participant.courseParticipants)>1 }">
							<tr>
								<td>${participant.courseParticipants.size()}</td>
								<td><c:forEach items="${participant.courseParticipants}"
										var="courseParticipant" varStatus="loop">
	                                ${courseParticipant.key.course.name}
	                                ${!loop.last ? ', ' : ''}
	                                </c:forEach></td>
								<td>${participant.lastname}</td>
								<td>${participant.firstname}</td>
							</tr>
						</c:if>
					</c:forEach>
				</tbody>
			</table>
		</dmtags:widget>
	</c:if>
	<c:if test="${!empty participantsByNumberOfSiblings}">
		<spring:message var="i18nSiblingRelationships"
			code="widget.siblingRelationships" />
		<dmtags:widget title="${i18nSiblingRelationships}" style="table"
			icon="icon-list">
			<table class="table table-striped table-bordered">
				<thead>
					<tr>
						<th><spring:message code="label.firstname" /></th>
						<th><spring:message code="label.lastname" /></th>
						<th><spring:message code="label.siblings" /></th>
						<th><spring:message code="label.courses" /></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${participantsByNumberOfSiblings}"
						var="participant">
						<c:if test="${!empty participant.siblings}">
							<tr>
								<td>${participant.firstname}</td>
								<td>${participant.lastname}</td>

								<td>${participant.siblings.size()}&nbsp;-&nbsp;(<c:forEach
										items="${participant.siblings}" var="sibling" varStatus="loop">
		
		                                ${sibling.firstname}&nbsp;${sibling.lastname}
		                                ${!loop.last ? ', ' : ''}
										</c:forEach>)

								</td>
								<td><c:forEach items="${participant.courseParticipants}"
										var="courseParticipant" varStatus="loop">
                                    ${courseParticipant.key.course.name}
                                    ${!loop.last ? ', ' : ''}
                                    </c:forEach></td>
							</tr>
						</c:if>
					</c:forEach>
				</tbody>
			</table>
		</dmtags:widget>
	</c:if>

	<c:if test="${!empty courses}">
		<spring:message var="i18nCourseInformation"
			code="widget.courseInformation" />
		<dmtags:widget title="${i18nCourseInformation}" style="table"
			icon="icon-list">
			<table class="table table-striped table-bordered">
				<thead>
					<tr>
						<th><spring:message code="label.coursename" /></th>
						<th><spring:message code="label.ageGroup" /></th>
						<th><spring:message code="label.level" /></th>
						<th><spring:message code="label.amountParticipants" /></th>
						<th><spring:message code="label.estimatedSpectators" /></th>
						<th><spring:message code="label.amountPerformances" /></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${courses}" var="course">
						<tr>
							<td>${course.name}</td>
							<td><spring:message code="${course.ageGroup.i18nIdentifier}" /></td>
							<td><spring:message code="${course.level.i18nIdentifier}" /></td>
							<td>${course.courseParticipants.size()}</td>
							<td><spring:message
									code="${course.estimatedSpectators.i18nIdentifier}" /></td>
							<td>${course.amountPerformances}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</dmtags:widget>
	</c:if>

</dmtags:base>