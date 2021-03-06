<jsp:include page="../partials/head.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="jumbotron">
    <h1 class="display-4">Please Authenticate with DocuSign</h1>
    <p>Please choose your authentication type</p>
    <form action="/ds/authenticate" method="post">
        <select name="selectAuthType">
            <c:forEach var="item" items="${authTypes}">
                <option value="${item.key}">${item.value}</option>
            </c:forEach>
        </select>
        <p class="lead">
            <button type="submit" class="btn btn-primary">Authenticate with DocuSign</button>
        </p>
    </form>
    <hr class="my-4">
    <p>You need to authenticate with DocuSign to continue your request.</p>
</div>
<jsp:include page="../partials/foot.jsp" />
