<%@ include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-9"%>
<div class="col-md-12">
    <div class="page-header"></div>
</div>

<div class="col-md-12 base" align="center">

    <div style="padding-bottom: 40px;">
        <h1>Ho�geldiniz</h1>
    </div>
    <div>
        <a href="${pageContext.request.contextPath}/list" class="btn btn-outline-primary btn-lg" style="margin-right: 10px;"> KULLANICILARI L�STELE </a>
        <a href="${pageContext.request.contextPath}/new" class="btn btn-outline-primary btn-lg"> YEN� KULLANICI EKLE </a>
    </div>
</div>

<%@ include file="footer.jsp" %>

