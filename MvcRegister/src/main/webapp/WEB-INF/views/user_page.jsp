
<%@ include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-9"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="col-md-12">
    <div class="page-header"></div>
</div>

<div class="col-md-12 base" align="center" >
    <div style="padding-bottom: 30px;">
        <h2>Yeni Kullanýcý</h2>
    </div>

    <div class="table-responsive">

        <form:form action="${pageContext.request.contextPath}/save"  method="post" modelAttribute="user">
            <table class="table-hover" style="font-size: x-large">
                <form:hidden path="id"/>
                <tr>
                    <td><span>Adýnýz</span> </td>
                    <td><form:input path="firstName" /></td>
                </tr>
                <tr>
                    <td><span>Soyadýnýz</span> </td>
                    <td><form:input path="lastName" /></td>
                </tr>
                <tr>
                    <td><span>Kan Grubunuz </span> </td>
                    <td><form:input path="bloodGroup" /></td>
                </tr>
                <tr>
                    <td><span>Cep Telefonunuz </span> </td>
                    <td><form:input path="gsmPhone" /></td>
                </tr>
                <tr>
                    <td><span>Adresiniz</span> </td>
                    <td><form:input path="address" /></td>
                </tr>

            </table>

            <div style="margin-top: 16px;">
                <a href="${pageContext.request.contextPath}/" class="btn btn-link"> ANA SAYFAYA DÖN </a>
            </div>
            <div style="margin-top: 16px;">
                <button type="submit"  class="btn btn-outline-primary btn-lg" value="submit">BÝLGÝLERÝ KAYDET</button>
            </div>
        </form:form>

    </div>

</div>
<%@ include file="footer.jsp" %>
