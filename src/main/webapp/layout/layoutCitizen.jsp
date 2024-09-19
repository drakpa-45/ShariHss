<%@ page import="bt.education.shariHss.dto.NewsDTO" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <jsp:include page="inc/header.jsp"></jsp:include>
    <jsp:include page="inc/context.jsp"></jsp:include>
</head>
<body>
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
                        <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Read More</a>
                    </div>
                </div>
            </div>

            <!-- Slide 3 -->
            <div class="carousel-item" style="background-image: url(${pageContext.request.contextPath}${slide3})">
                <div class="carousel-container">
                    <div class="container">
                        <h2 class="animate__animated animate__fadeInDown">Cultural Night</h2>
                        <p class="animate__animated animate__fadeInUp">"Culture competition is not about defeating others, but about celebrating diversity, fostering understanding, and embracing the richness of our collective human tapestry."</p>
                        <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Read More</a>
                    </div>
                </div>
            </div>
            <!-- Slide 4 -->
            <div class="carousel-item" style="background-image: url(${pageContext.request.contextPath}${slide2})">
                <div class="carousel-container">
                    <div class="container">
                        <h2 class="animate__animated animate__fadeInDown">Hackathon</h2>
                        <p class="animate__animated animate__fadeInUp">"Education is not a spectator sport; it requires active participation from students to truly ignite the flame of learning and unlock their full potential."</p>
                        <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Read More</a>
                    </div>
                </div>
            </div>

            <!-- Slide 5 -->
            <div class="carousel-item" style="background-image: url(${pageContext.request.contextPath}${slide4})">
                <div class="carousel-container">
                    <div class="container">
                        <h2 class="animate__animated animate__fadeInDown">Graduation</h2>
                        <p class="animate__animated animate__fadeInUp">"Graduation day marks the end of one chapter and the beginning of a new journey. It is a testament to perseverance, growth, and the infinite possibilities that await as we step into the world armed with knowledge, dreams, and the courage to chase them."</p>
                        <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Read More</a>
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
</body>
</html>