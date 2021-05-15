
<%@ include file="header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-9"%>

<div class="col-md-12">
    <div class="page-header"></div>
</div>
<div class="col-md-12 base" align="center" >

    <div style="padding-bottom: 40px;">
        <h2>Kullanýcý Listesi</h2>
    </div>
    <div class="table-responsive">
        <table class="table table-hover" style="text-align: center">
            <tr>
                <th width="200">Ýsim</th>
                <th width="200">Soyisim</th>
                <th width="200">Kan Grubu</th>
                <th width="200">Cep Telefonu</th>
                <th width="200">Adres</th>
            </tr>
            <c:if test="${!empty userList}">
                <c:forEach items="${userList}" var="user">
                    <tr>
                        <td>${user.firstName}</td>
                        <td>${user.lastName}</td>
                        <td>${user.bloodGroup}</td>
                        <td>${user.gsmPhone}</td>
                        <td>${user.address}</td>
                    </tr>
                </c:forEach>
            </c:if>
            <c:if test="${empty userList}">
                <tr><td colspan="5">Kayýt bulunamadý</td></tr>
            </c:if>
        </table>
    </div>
    <div>
        <a href="${pageContext.request.contextPath}/" class="btn btn-link" style="margin-top: 16px;"> ANA SAYFAYA DÖN </a>
    </div>

</div>
<%@ include file="footer.jsp" %>
