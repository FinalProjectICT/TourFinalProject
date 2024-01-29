<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${not empty errorMessage}">
    <script>
        alert("${errorMessage}");
    </script>
</c:if>

<%-- auth-failed.jsp --%>
<!DOCTYPE html>
<html>
<head>
    <title>auth-failed</title>
</head>
<body>
    <script>
        alert("입력하신 인증번호가 올바르지 않습니다.");
        history.back(); // 이전 페이지로 돌아감
    </script>
</body>
</html>