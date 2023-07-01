<%--
  Created by IntelliJ IDEA.
  User: Drakpa
  Date: 6/28/2023
  Time: 11:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title></title>
</head>
<body>
<section id="portfolio" class="portfolio">
    <div class="container">
        <div class="section-title">
            <h2>Portfolio</h2>
            <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
        </div>

        <div class="row">
            <div class="col-lg-12 d-flex justify-content-center">
                <ul id="portfolio-flters">
                    <li data-filter="*" class="filter-active">All</li>
                    <li data-filter=".filter-admin">Administration</li>
                    <li data-filter=".filter-app">Dzongkha Department</li>
                    <li data-filter=".filter-card">English Department</li>
                    <li data-filter=".filter-web">Mathematics Department</li>
                    <li data-filter=".filter-web">Arts Department</li>
                    <li data-filter=".filter-web">Commerce Department</li>
                    <li data-filter=".filter-web">ICT Department</li>
                </ul>
            </div>
        </div>
        <div class="row portfolio-container">
            <div class="col-lg-4 col-md-6 portfolio-item filter-admin">
                <div class="portfolio-wrap">
                    <img src="https://drive.google.com/uc?export=view&id=1vbJPtrpiaFIYTrRMsx8htULS4AV8HmiB" class="img-fluid" alt="">
                    <div class="portfolio-info">
                        <h4>App 1</h4>
                        <p>App</p>
                        <div class="portfolio-links">
                            <a href="https://drive.google.com/file/d/1vbJPtrpiaFIYTrRMsx8htULS4AV8HmiB/view" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Principal of Shari Higher Secondary Schol"><i class="bx bx-plus"></i></a>
                            <%--<a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>--%>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 portfolio-item filter-admin">
                <div class="portfolio-wrap">
                    <img src="https://drive.google.com/uc?export=view&id=1vbJPtrpiaFIYTrRMsx8htULS4AV8HmiB" class="img-fluid" alt="">
                    <div class="portfolio-info">
                        <p>Principal</p>
                        <h4>Bak Bir Rai</h4>
                        <div class="portfolio-links">
                            <a href="<c:url value="/resources/assets/img/portfolio/portfolio-2.jpg"/>" data-gallery="portfolioGallery" class="portfolio-lightbox" title=""><i class="bx bx-plus"></i></a>
                            <%--<a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>--%>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 portfolio-item filter-admin">
                <div class="portfolio-wrap">
                    <img src="<c:url value="/resources/assets/img/portfolio/portfolio-3.jpg"/>" class="img-fluid" alt="">
                    <div class="portfolio-info">
                        <h4>App 2</h4>
                        <p>App</p>
                        <div class="portfolio-links">
                            <a href="<c:url value="/resources/assets/img/portfolio/portfolio-3.jpg"/>" data-gallery="portfolioGallery" class="portfolio-lightbox" title="App 2"><i class="bx bx-plus"></i></a>
                            <%--<a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>--%>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                <div class="portfolio-wrap">
                    <img src="<c:url value="/resources/assets/img/portfolio/portfolio-4.jpg"/>" class="img-fluid" alt="">
                    <div class="portfolio-info">
                        <h4>Card 2</h4>
                        <p>Card</p>
                        <div class="portfolio-links">
                            <a href="<c:url value="/resources/assets/img/portfolio/portfolio-4.jpg"/>" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Card 2"><i class="bx bx-plus"></i></a>
                            <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                <div class="portfolio-wrap">
                    <img src="<c:url value="/resources/assets/img/portfolio/portfolio-5.jpg"/>" class="img-fluid" alt="">
                    <div class="portfolio-info">
                        <h4>Web 2</h4>
                        <p>Web</p>
                        <div class="portfolio-links">
                            <a href="<c:url value="/resources/assets/img/portfolio/portfolio-5.jpg"/>" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Web 2"><i class="bx bx-plus"></i></a>
                            <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                <div class="portfolio-wrap">
                    <img src="<c:url value="/resources/assets/img/portfolio/portfolio-6.jpg"/>" class="img-fluid" alt="">
                    <div class="portfolio-info">
                        <h4>App 3</h4>
                        <p>App</p>
                        <div class="portfolio-links">
                            <a href="<c:url value="/resources/assets/img/portfolio/portfolio-6.jpg"/>" data-gallery="portfolioGallery" class="portfolio-lightbox" title="App 3"><i class="bx bx-plus"></i></a>
                            <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                <div class="portfolio-wrap">
                    <img src="<c:url value="/resources/assets/img/portfolio/portfolio-7.jpg"/>" class="img-fluid" alt="">
                    <div class="portfolio-info">
                        <h4>Card 1</h4>
                        <p>Card</p>
                        <div class="portfolio-links">
                            <a href="<c:url value="/resources/assets/img/portfolio/portfolio-7.jpg"/>" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Card 1"><i class="bx bx-plus"></i></a>
                            <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item filter-card">
                <div class="portfolio-wrap">
                    <img src="<c:url value="/resources/assets/img/portfolio/portfolio-8.jpg"/>" class="img-fluid" alt="">
                    <div class="portfolio-info">
                        <h4>Card 3</h4>
                        <p>Card</p>
                        <div class="portfolio-links">
                            <a href="<c:url value="/resources/assets/img/portfolio/portfolio-8.jpg"/>" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Card 3"><i class="bx bx-plus"></i></a>
                            <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-6 portfolio-item filter-web">
                <div class="portfolio-wrap">
                    <img src="<c:url value="/resources/assets/img/portfolio/portfolio-9.jpg"/>" class="img-fluid" alt="">
                    <div class="portfolio-info">
                        <h4>Web 3</h4>
                        <p>Web</p>
                        <div class="portfolio-links">
                            <a href="<c:url value="/resources/assets/img/portfolio/portfolio-9.jpg"/>" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Web 3"><i class="bx bx-plus"></i></a>
                            <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
