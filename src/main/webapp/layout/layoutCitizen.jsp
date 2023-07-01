<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

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

    <!-- Vendor CSS Files -->
    <link href="<c:url value="/resources/assets/vendor/animate.css/animate.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/assets/vendor/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/assets/vendor/boxicons/css/boxicons.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/assets/vendor/glightbox/css/glightbox.min.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/assets/vendor/swiper/swiper-bundle.min.css"/>" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="<c:url value="/resources/assets/css/style.css"/>" rel="stylesheet">
</head>
<body>
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
                <li class="dropdown"><a href="#"><span>Drop Down</span> <i class="bi bi-chevron-down"></i></a>
                    <ul>
                        <li><a href="#">Drop Down 1</a></li>
                        <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
                            <ul>
                                <li><a href="#">Deep Drop Down 1</a></li>
                                <li><a href="#">Deep Drop Down 2</a></li>
                                <li><a href="#">Deep Drop Down 3</a></li>
                                <li><a href="#">Deep Drop Down 4</a></li>
                                <li><a href="#">Deep Drop Down 5</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Drop Down 2</a></li>
                        <li><a href="#">Drop Down 3</a></li>
                        <li><a href="#">Drop Down 4</a></li>
                    </ul>
                </li>
                <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
                <li><a class="getstarted scrollto" href="#blog">Admin Login</a></li>
            </ul>
            <i class="bi bi-list mobile-nav-toggle"></i>
        </nav><!-- .navbar -->

    </div>
</header><!-- End Header -->

<!-- ======= Hero Section ======= -->
<section id="hero">
    <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">
        <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>
        <div class="carousel-inner" role="listbox">
            <!-- Slide 1 -->
            <c:set var="slide1" value="/resources/assets/img/slide/slide-1.jpg"/>
            <c:set var="slide2" value="/resources/assets/img/slide/slide-2.jpg"/>
            <c:set var="slide3" value="/resources/assets/img/slide/slide-3.jpg"/>
            <c:set var="slide4" value="/resources/assets/img/slide/slide-4.jpg"/>
            <c:set var="slide5" value="/resources/assets/img/slide/slide-5.jpg"/>

            <div class="carousel-item active" style="background-image: url(${pageContext.request.contextPath}${slide1})">
                <div class="carousel-container">
                    <div class="container">
                        <h2 class="animate__animated animate__fadeInDown"><span>ཤར་རི་སློབ་གྲྭ།</span></h2>
                        <p class="animate__animated animate__fadeInUp">Shari Higher Secondary School under Paro Dzongkhag is an offshoot of the erstwhile Shari Community Primary School, established in the year 2000.
                            The school was upgraded to a Higher Secondary level in 2007 with the infrastructures constructed under the World Bank financing at a contract amount of Nu.29,429,310.00/- allotted to
                            M/s T&K Construction to be completed within 15 months.
                        </p>
                        <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Read More</a>
                    </div>
                </div>
            </div>
            <!-- Slide 2 -->
            <div class="carousel-item" style="background-image: url(${pageContext.request.contextPath}${slide5})">
                <div class="carousel-container">
                    <div class="container">
                        <h2 class="animate__animated animate__fadeInDown">Leadership</h2>
                        <p class="animate__animated animate__fadeInUp">"Student leadership is not about holding a title; it's about inspiring others, making a positive impact, and empowering those around you to discover their own potential. True leaders create a ripple effect of change that extends far beyond their time in school."</p>
                        <%--<a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Read More</a>--%>
                    </div>
                </div>
            </div>

            <!-- Slide 3 -->
            <div class="carousel-item" style="background-image: url(${pageContext.request.contextPath}${slide3})">
                <div class="carousel-container">
                    <div class="container">
                        <h2 class="animate__animated animate__fadeInDown">Cultural Night</h2>
                        <p class="animate__animated animate__fadeInUp">"Culture competition is not about defeating others, but about celebrating diversity, fostering understanding, and embracing the richness of our collective human tapestry."</p>
                       <%-- <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Read More</a>--%>
                    </div>
                </div>
            </div>
            <!-- Slide 4 -->
            <div class="carousel-item" style="background-image: url(${pageContext.request.contextPath}${slide2})">
                <div class="carousel-container">
                    <div class="container">
                        <h2 class="animate__animated animate__fadeInDown">Hackathon</h2>
                        <p class="animate__animated animate__fadeInUp">"Education is not a spectator sport; it requires active participation from students to truly ignite the flame of learning and unlock their full potential."</p>
                        <%--<a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Read More</a>--%>
                    </div>
                </div>
            </div>

            <!-- Slide 5 -->
            <div class="carousel-item" style="background-image: url(${pageContext.request.contextPath}${slide4})">
                <div class="carousel-container">
                    <div class="container">
                        <h2 class="animate__animated animate__fadeInDown">Graduation</h2>
                        <p class="animate__animated animate__fadeInUp">"Graduation day marks the end of one chapter and the beginning of a new journey. It is a testament to perseverance, growth, and the infinite possibilities that await as we step into the world armed with knowledge, dreams, and the courage to chase them."</p>
                       <%-- <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Read More</a>--%>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
            <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
        </a>
        <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
            <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
        </a>
    </div>
</section><!-- End Hero -->

<main id="main">
    <!-- ======= Featured Services Section ======= -->
    <section id="featured-services" class="featured-services section-bg">
        <div class="container">
            <jsp:include page="/WEB-INF/pages/shariHss/dashboard/newsAndEvents.jsp"></jsp:include>
        </div>
    </section><!-- End Featured Services Section -->
    <!-- ======= About Us Section ======= -->
    <jsp:include page="/WEB-INF/pages/shariHss/dashboard/aboutUs.jsp"></jsp:include>
    <!-- End About Us Section -->
    <!-- ======= Services Section ======= -->
    <jsp:include page="/WEB-INF/pages/shariHss/dashboard/academic.jsp"></jsp:include>
    <!-- End Cta Section -->
    <!-- ======= Portfolio Section ======= -->
    <jsp:include page="/WEB-INF/pages/shariHss/dashboard/staffProfile.jsp"></jsp:include>
    <!-- End Portfolio Section -->
    <!-- ======= Team Section ======= -->
   <%-- <jsp:include page="/WEB-INF/pages/shariHss/dashboard/staffProfile.jsp"></jsp:include>--%>
    <!-- End Team Section -->
    <!-- ======= Contact Section ======= -->
    <jsp:include page="/WEB-INF/pages/shariHss/dashboard/contact.jsp"></jsp:include>
    <!-- End Contact Section -->
</main><!-- End #main -->
<!-- ======= Footer ======= -->
<jsp:include page="/layout/inc/footer.jsp"></jsp:include>
<!-- End Footer -->

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="<c:url value="/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
<script src="<c:url value="/resources/assets/vendor/glightbox/js/glightbox.min.js"/>"></script>
<script src="<c:url value="/resources/assets/vendor/isotope-layout/isotope.pkgd.min.js"/>"></script>
<script src="<c:url value="/resources/assets/vendor/swiper/swiper-bundle.min.js"/>"></script>
<script src="<c:url value="/resources/assets/vendor/php-email-form/validate.js"/>"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- Template Main JS File -->
<script src="<c:url value="/resources/assets/js/main.js"/>"></script>
</body>
</html>