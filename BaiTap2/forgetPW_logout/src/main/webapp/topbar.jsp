<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Top Bar</title>
<style>
	body {
		margin: 10px auto;
	}
    .right-topbar {
        margin-top: 10px;
    }
    .right-topbar li {
        display: inline;
        margin-right: 10px;
    }
    .right-topbar a {
        text-decoration: none;
        color: #007bff;
    }
    .right-topbar a:hover {
        text-decoration: underline;
    }
    .search-button {
        cursor: pointer;
    }
</style>
</head>
<body>
    <c:choose>
        <c:when test="${sessionScope.account == null}">
            <div class="col-sm-6">
                <ul class="list-inline right-topbar pull-right">
                    <li><a href="${pageContext.request.contextPath }/login.jsp">Đăng nhập</a> | <a href="${pageContext.request.contextPath }/register.jsp">Đăng ký</a></li>
                    <li><i class="search fa fa-search search-button"></i></li>
                     <li><a href="${pageContext.request.contextPath }/logout">Đăng xuất</a></li>
                    <li><i class="search fa fa-search search-button"></i></li>
                </ul>
            </div>
        </c:when>
    </c:choose>
</body>
</html>