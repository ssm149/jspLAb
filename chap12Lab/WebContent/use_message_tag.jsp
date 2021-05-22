<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<fmt:setLocale value="en" />
<fmt:setLocale value="ko" />
<fmt:setLocale value="ja" />
<fmt:setLocale value="cn" />
<fmt:bundle basename="resources.message">
	<fmt:message key="TITLE" var="title" />
	<html>
<head>
<title>${title}</title>
</head>
<body>

	<fmt:message key="GREETING" />
	<br>
	<c:if test="${! empty param.id}">
		<fmt:message key="VISITOR">
			<fmt:param value="${param.id}" />
		</fmt:message>
	</c:if>

</body>
	</html>
</fmt:bundle>
