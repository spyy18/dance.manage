<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>dance.manage</title>
</head>
<body>
  
<h2>Participant Management Screen</h2>
  
<form:form method="post" action="participant/add" commandName="participant">
  
    <table>
    <tr>
        <td>
        	<form:input path="pid" type="hidden" />
        	<form:input path="active" type="hidden" />
        </td>
    </tr>
    <tr>
        <td><form:label path="firstname"><spring:message code="label.firstname"/></form:label></td>
        <td><form:input path="firstname" /></td>
    </tr>
    <tr>
        <td><form:label path="lastname"><spring:message code="label.lastname"/></form:label></td>
        <td><form:input path="lastname" /></td>
    </tr>
    <tr>
        <td><form:label path="email"><spring:message code="label.email"/></form:label></td>
        <td><form:input path="email" /></td>
    </tr>
    <tr>
        <td><form:label path="telephone"><spring:message code="label.telephone"/></form:label></td>
        <td><form:input path="telephone" /></td>
    </tr>
    <tr>
        <td><form:label path="birthday"><spring:message code="label.birthday"/></form:label></td>
        <td><form:input path="birthday" /></td>
    </tr>
    <tr>
        <td><form:label path="contactPerson"><spring:message code="label.contactPerson"/></form:label></td>
        <td><form:input path="contactPerson" /></td>
    </tr>
    <tr>
        <td><form:label path="emergencyNumber"><spring:message code="label.emergencyNumber"/></form:label></td>
        <td><form:input path="emergencyNumber" /></td>
    </tr>
    
    <tr>
        <td colspan="2">
            <input type="submit" value="<spring:message code="label.add"/>"/>
        </td>
    </tr>
</table> 
</form:form>
  
      
<h3>Participant</h3>
<c:if  test="${!empty participantList}">
<table class="data">
<tr>
    <th>Name</th>
    <th>Email</th>
    <th>Telephone</th>
    <th>Birthday</th>
    <th>Contact Person</th>
    <th>Emergency Number</th>
    <th>&nbsp;</th>
</tr>

<c:forEach items="${participantList}" var="emp">

    <tr>
        <td>${emp.lastname}  ${emp.firstname} </td>
        <td>${emp.email}</td>
        <td>${emp.telephone}</td>
        <td>${emp.birthday}</td>
        <td>${emp.contactPerson}</td>
        <td>${emp.emergencyNumber}</td>
        <td><a href="participant/edit/${emp.pid}">Edit</a></td>
        <td><a href="participant/delete/${emp.pid}">Delete</a></td>
    </tr>

</c:forEach>

</table>
</c:if>
  
</body>
</html>