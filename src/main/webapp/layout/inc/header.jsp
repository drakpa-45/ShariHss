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
                <li><a class="nav-link scrollto" href="#about">About</a></li>
                <li><a class="nav-link scrollto" href="#services">Academic</a></li>
                <li><a class="nav-link scrollto " href="#portfolio">Staff Profile</a></li>
                <%-- <li><a class="nav-link scrollto" href="#team">Team</a></li>--%>
                <li class="dropdown"><a href="#"><span>Downloads</span> <i class="bi bi-chevron-down"></i></a>
                    <ul>
                        <li><a href="#">Forms</a></li>
                        <%--<li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
                            <ul>
                                <li><a href="#">Deep Drop Down 1</a></li>
                                <li><a href="#">Deep Drop Down 2</a></li>
                                <li><a href="#">Deep Drop Down 3</a></li>
                                <li><a href="#">Deep Drop Down 4</a></li>
                                <li><a href="#">Deep Drop Down 5</a></li>
                            </ul>
                        </li>--%>
                        <li><a href="#">Documents</a></li>
                        <li><a href="#">Class Lists</a></li>
                    </ul>
                </li>
                <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
                <li><a class="getstarted scrollto" href="#blog">Admin Login</a></li>
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
        </nav><!-- .navbar -->
    </div>
</header><!-- End Header -->
<jsp:include page="js.jsp"></jsp:include>
</body>
</html>
