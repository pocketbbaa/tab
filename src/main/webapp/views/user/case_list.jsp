<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="">
<head>
    <meta charset="utf-8">
    <title>Retina Dashboard</title>
</head>
<body>
<jsp:include page="${ctx}/views/common/temp_user.jsp"/>
<section class="alert">
    <div class="green">
        <p>你好 <a href="#">${sessionScope.user.mochaUserName}</a>, 下面是你可以参与测评的评测专案，请选择并点击<a href="#">评测图片</a>完成测评。</p>
    </div>
</section>
<section class="content" style="width: 100%">
    <section class="widget" style="width: 100%">
        <div class="content no-padding timeline" style="width: 100%">
            <c:forEach items="${evaluationList}" var="evaluation">
                <div class="tl-post" style="width:100%;">
                    <span class="icon">&#9993;</span>
                    <a href="${ctx}/case/begin/${evaluation.id}/${evaluation.productId}"><p style="width: 80%;"><img
                            style="width: 150px;height: 70px;" src="${evaluation.picURL}"
                            alt="...">
                        <span class="time" style="color: darkolivegreen">${evaluation.title}</span>
                        <span class="time">评测开始时间：${evaluation.startDate}</span>
                        <span class="time">评测结束时间：${evaluation.endDate}</span>
                    </p></a>
                </div>
            </c:forEach>

        </div>
    </section>
</section>


</body>
</html>