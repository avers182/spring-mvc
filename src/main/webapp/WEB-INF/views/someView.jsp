<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html ng-app="angApp">

<head>
    <title>some title</title>
    <script src="resources/angular/angular.min.js"></script>
    <script src="resources/js/services.js"></script>
    <script src="resources/js/controllers.js"></script>
</head>

<body>
<div>
    Bloodybody<br>
    ${attr}
</div>

<div>{{'angular' + ' ' + 'gavnular' + ' gandular'}}</div>

<div ng-controller="SomeController">
    <div>
        search: <input ng-model="query">
    </div>

    <div>{{query}}</div>

    <div>
        <select ng-model="orderProp">
            <option value="key">num</option>
            <option value="-key">num desc</option>
        </select>
    </div>

    <ul>
        <li ng-repeat="cnt in counts | filter:query | orderBy:orderProp">
            <b>{{cnt.key}}</b>
            <span>{{cnt.value}}</span>
        </li>
    </ul>

    <div>
        <div>
            some number: <input ng-model="someNumber">
        </div>
        <div>
            someNumber * 2 = {{x2(someNumber)}}
        </div>
        <div>
            someNumber * 3 = {{x3(someNumber)}}
        </div>
        <div>
            someNumber * 4 = {{x4(someNumber)}}
        </div>
    </div>
</div>

<%--<div>--%>
    <%--<ul>--%>
    <%--<c:forEach var="olatResource" items="${olatResources}">--%>
        <%--<li><c:out value="${olatResource.resid}"/></li>--%>
    <%--</c:forEach>--%>
    <%--</ul>--%>
<%--</div>--%>
</body>

</html>