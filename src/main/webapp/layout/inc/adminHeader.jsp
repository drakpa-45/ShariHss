<%@ page import="bt.education.shariHss.dto.Privilege" %>
<%@ page import="bt.education.shariHss.dto.Service" %>
<%@ page import="bt.education.shariHss.dto.UserRolePrivilegeDTO" %>
<%--
  Created by IntelliJ IDEA.
  User: Pema Drakpa
  Date: 1/15/2020
  Time: 2:10 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Shari</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="<c:url value="/resources/assets/img/logo.png"/>" rel="shari-icon"/>
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

</head>
<body>
<jsp:include page="css.jsp"></jsp:include>
<jsp:include page="context.jsp"></jsp:include>
<!-- ======= Top Bar ======= -->
<section id="topbar" class="d-flex align-items-center">
    <div class="container d-flex justify-content-center justify-content-md-between">
        <div class="contact-info d-flex align-items-center">
            <i class="bi bi-envelope-fill"></i><a href="mailto:contact@example.com">pr.sharihss@education.gov.bt</a>
            <i class="bi bi-phone-fill phone-icon"></i> +975-8-272588
        </div>
        <div class="social-links d-none d-md-block">
            <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
            <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
            <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
            <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
        </div>
    </div>
</section>

<!-- ======= Header ======= -->
<header id="header" class="d-flex align-items-center">
    <div class="container d-flex align-items-center">
        <img src="<c:url value="/resources/assets/img/shari-icon.png"/>" alt="" style="height: 120px; width: 150px">
        <Span class="logo me-auto"><a href="index.html">ཤར་རི་སློབ་གྲྭ།<br>SHARI HSS</a></Span>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

        <nav id="navbar" class="navbar">
            <ul>
                <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
                <li><a class="nav-link scrollto" href="<c:url value="/admin/updateNews"/>">News</a></li>
                <li><a class="nav-link scrollto" href="<c:url value="/admin/announcement"/>">Announcement</a></li>
                <li><a class="nav-link scrollto" href="#services">User</a></li>
                <li><a class="nav-link scrollto " href="#portfolio">Staff</a></li>
                <li><a class="nav-link scrollto " href="#portfolio">Feedback</a></li>

                    <%--<li class="hidden-xl-up"><a href="#" data-sa-action="search-open"><i class="zmdi zmdi-search"></i></a></li>--%>
                    <li class="dropdown<%-- hidden-xs-down--%>">
                        <%-- <a href="#" data-toggle="dropdown"><i class="zmdi zmdi-check-circle"></i></a>--%>
                        <a href="#" data-toggle="dropdown"><i class="zmdi zmdi-account-circle" style="font-size:xx-large"></i></a>
                        <div class="dropdown-menu dropdown-menu-right dropdown-menu--block-sm" role="menu">
                            <div class="listview listview--hover">
                                <a href="#" class="view-more text-white"><i class="zmdi zmdi-account"></i> &nbsp;</a>
                            </div>
                            <div class="listview listview--hover">
                                <a href="<c:url value="/common/logout"/>" class="view-more text-white"><i class="zmdi zmdi-lock-outline"></i> &nbsp; Logout</a>
                            </div>
                        </div>
                    </li>
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
        </nav><!-- .navbar -->
    </div>
</header><!-- End Header -->
<jsp:include page="js.jsp"></jsp:include>
</body>
</html>
