<%@ page import="bt.education.shariHss.dto.StaffDTO" %>
<%@ page import="java.util.List" %>
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
<% List<StaffDTO> staffDtls=(List<StaffDTO>) request.getAttribute("staffDtls"); %>
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
                    <li data-filter=".filter-dzo">Dzongkha Department</li>
                    <li data-filter=".filter-eng">English Department</li>
                    <li data-filter=".filter-maths">Mathematics Department</li>
                    <li data-filter=".filter-arts">Arts Department</li>
                    <li data-filter=".filter-commerce">Commerce Department</li>
                    <li data-filter=".filter-ict">ICT Department</li>
                </ul>
            </div>
        </div>
        <div class="row portfolio-container">
            <%for(int i=0;i<staffDtls.size();i++){%>
            <%if(staffDtls.get(i).getDepartmentID().equalsIgnoreCase("54fbd369-2075-11ee-b051-38ca84b6f480")){%> <%--administration--%>
            <div class="col-lg-3 col-md-3 col-sm-12 portfolio-item filter-admin">
                <div class="portfolio-wrap">
                    <img src="https://drive.google.com/uc?export=view&id=1vbJPtrpiaFIYTrRMsx8htULS4AV8HmiB" class="img-fluid" alt="">
                    <div class="portfolio-info">
                        <h4><%=staffDtls.get(i).getDesignation()%></h4>
                        <p>
                            <ul class="bg-gray text-white">
                                <li>Name: &nbsp; <%=staffDtls.get(i).getName()%></li>
                                <li>Qualification : &nbsp;<%=staffDtls.get(i).getQualification()%></li>
                                <li>Subject : &nbsp; <%=staffDtls.get(i).getSubject()%></li>
                                <li>Contact No. : &nbsp; <%=staffDtls.get(i).getContactNumber()%></li>
                                <li>Email : &nbsp; <%=staffDtls.get(i).getEmail()%></li>
                            </ul>
                        </p>
                        <div class="portfolio-links">
                            <a href="https://drive.google.com/file/d/1vbJPtrpiaFIYTrRMsx8htULS4AV8HmiB/view" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Principal of Shari Higher Secondary Schol"><i class="bx bx-plus"></i></a>
                            <%--<a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>--%>
                        </div>
                    </div>
                </div>
            </div>
            <%}%>
            <%if(staffDtls.get(i).getDepartmentID().equalsIgnoreCase("d58a5ff9-8b8a-4e8b-a0f9-2bcbaf5d012e")){%> <%--dzongkha--%>
            <div class="col-lg-3 col-md-3 col-sm-12 portfolio-item filter-dzo">
                <div class="portfolio-wrap">
                    <img src="<c:url value="/resources/assets/img/portfolio/portfolio-2.jpg"/>" class="img-fluid" alt="">
                    <div class="portfolio-info">
                        <h4><%=staffDtls.get(i).getDesignation()%></h4>
                        <p>
                            <ul class="bg-gray text-white">
                                <li>Name: &nbsp; <%=staffDtls.get(i).getName()%></li>
                                <li>Qualification : &nbsp;<%=staffDtls.get(i).getQualification()%></li>
                                <li>Subject : &nbsp; <%=staffDtls.get(i).getSubject()%></li>
                                <li>Contact No. : &nbsp; <%=staffDtls.get(i).getContactNumber()%></li>
                                <li>Email : &nbsp; <%=staffDtls.get(i).getEmail()%></li>
                            </ul>
                        </p>
                        <div class="portfolio-links">
                            <a href="https://drive.google.com/file/d/1vbJPtrpiaFIYTrRMsx8htULS4AV8HmiB/view" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Principal of Shari Higher Secondary Schol"><i class="bx bx-plus"></i></a>
                            <%--<a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>--%>
                        </div>
                    </div>
                </div>
            </div>
            <%}%>
            <%if(staffDtls.get(i).getDepartmentID().equalsIgnoreCase("d58a5ff9-8b8a-4e8b-a0f9-2bcbaf5d002e")){%> <%--english--%>
            <div class="col-lg-3 col-md-3 col-sm-12 portfolio-item filter-eng">
                <div class="portfolio-wrap">
                    <img src="<c:url value="/resources/assets/img/portfolio/portfolio-3.jpg"/>" class="img-fluid" alt="">
                    <div class="portfolio-info">
                        <h4><%=staffDtls.get(i).getDesignation()%></h4>
                        <p>
                        <ul class="bg-gray text-white">
                            <li>Name: &nbsp; <%=staffDtls.get(i).getName()%></li>
                            <li>Qualification : &nbsp;<%=staffDtls.get(i).getQualification()%></li>
                            <li>Subject : &nbsp; <%=staffDtls.get(i).getSubject()%></li>
                            <li>Contact No. : &nbsp; <%=staffDtls.get(i).getContactNumber()%></li>
                            <li>Email : &nbsp; <%=staffDtls.get(i).getEmail()%></li>
                        </ul>
                        </p>
                        <div class="portfolio-links">
                            <a href="https://drive.google.com/file/d/1vbJPtrpiaFIYTrRMsx8htULS4AV8HmiB/view" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Principal of Shari Higher Secondary Schol"><i class="bx bx-plus"></i></a>
                            <%--<a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>--%>
                        </div>
                    </div>
                </div>
            </div>
            <%}%>
            <%if(staffDtls.get(i).getDepartmentID().equalsIgnoreCase("d58a5ff9-8b8a-4e8b-a0f9-2bcbaf5d022e")){%> <%--mathematics--%>
            <div class="col-lg-3 col-md-3 col-sm-12 portfolio-item filter-maths">
                <div class="portfolio-wrap">
                    <img src="<c:url value="/resources/assets/img/portfolio/portfolio-3.jpg"/>" class="img-fluid" alt="">
                    <div class="portfolio-info">
                        <h4><%=staffDtls.get(i).getDesignation()%></h4>
                        <p>
                        <ul class="bg-gray text-white">
                            <li>Name: &nbsp; <%=staffDtls.get(i).getName()%></li>
                            <li>Qualification : &nbsp;<%=staffDtls.get(i).getQualification()%></li>
                            <li>Subject : &nbsp; <%=staffDtls.get(i).getSubject()%></li>
                            <li>Contact No. : &nbsp; <%=staffDtls.get(i).getContactNumber()%></li>
                            <li>Email : &nbsp; <%=staffDtls.get(i).getEmail()%></li>
                        </ul>
                        </p>
                        <div class="portfolio-links">
                            <a href="https://drive.google.com/file/d/1vbJPtrpiaFIYTrRMsx8htULS4AV8HmiB/view" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Principal of Shari Higher Secondary Schol"><i class="bx bx-plus"></i></a>
                            <%--<a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>--%>
                        </div>
                    </div>
                </div>
            </div>
            <%}%>
            <%if(staffDtls.get(i).getDepartmentID().equalsIgnoreCase("d58a5ff9-8b8a-4e8b-a0f9-2bcbaf5d052e")){%> <%--arts--%>
            <div class="col-lg-3 col-md-3 col-sm-12 portfolio-item filter-arts">
                <div class="portfolio-wrap">
                    <img src="<c:url value="/resources/assets/img/portfolio/portfolio-3.jpg"/>" class="img-fluid" alt="">
                    <div class="portfolio-info">
                        <h4><%=staffDtls.get(i).getDesignation()%></h4>
                        <p>
                        <ul class="bg-gray text-white">
                            <li>Name: &nbsp; <%=staffDtls.get(i).getName()%></li>
                            <li>Qualification : &nbsp;<%=staffDtls.get(i).getQualification()%></li>
                            <li>Subject : &nbsp; <%=staffDtls.get(i).getSubject()%></li>
                            <li>Contact No. : &nbsp; <%=staffDtls.get(i).getContactNumber()%></li>
                            <li>Email : &nbsp; <%=staffDtls.get(i).getEmail()%></li>
                        </ul>
                        </p>
                        <div class="portfolio-links">
                            <a href="https://drive.google.com/file/d/1vbJPtrpiaFIYTrRMsx8htULS4AV8HmiB/view" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Principal of Shari Higher Secondary Schol"><i class="bx bx-plus"></i></a>
                            <%--<a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>--%>
                        </div>
                    </div>
                </div>
            </div>
            <%}%>
            <%if(staffDtls.get(i).getDepartmentID().equalsIgnoreCase("d58a5ff9-8b8a-4e8b-a0f9-2bcbaf5d042e")){%> <%--commerce--%>
            <div class="col-lg-3 col-md-3 col-sm-12 portfolio-item filter-commerce">
                <div class="portfolio-wrap">
                    <img src="<c:url value="/resources/assets/img/portfolio/portfolio-3.jpg"/>" class="img-fluid" alt="">
                    <div class="portfolio-info">
                        <h4><%=staffDtls.get(i).getDesignation()%></h4>
                        <p>
                        <ul class="bg-gray text-white">
                            <li>Name: &nbsp; <%=staffDtls.get(i).getName()%></li>
                            <li>Qualification : &nbsp;<%=staffDtls.get(i).getQualification()%></li>
                            <li>Subject : &nbsp; <%=staffDtls.get(i).getSubject()%></li>
                            <li>Contact No. : &nbsp; <%=staffDtls.get(i).getContactNumber()%></li>
                            <li>Email : &nbsp; <%=staffDtls.get(i).getEmail()%></li>
                        </ul>
                        </p>
                        <div class="portfolio-links">
                            <a href="https://drive.google.com/file/d/1vbJPtrpiaFIYTrRMsx8htULS4AV8HmiB/view" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Principal of Shari Higher Secondary Schol"><i class="bx bx-plus"></i></a>
                            <%--<a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>--%>
                        </div>
                    </div>
                </div>
            </div>
            <%}%>
            <%if(staffDtls.get(i).getDepartmentID().equalsIgnoreCase("d58a5ff9-8b8a-4e8b-a0f9-2bcbaf5d062e")){%> <%--ict--%>
            <div class="col-lg-3 col-md-3 col-sm-12 portfolio-item filter-ict">
                <div class="portfolio-wrap">
                    <img src="<c:url value="/resources/assets/img/portfolio/portfolio-3.jpg"/>" class="img-fluid" alt="">
                    <div class="portfolio-info">
                        <h4><%=staffDtls.get(i).getDesignation()%></h4>
                        <p>
                        <ul class="bg-gray text-white">
                            <li>Name: &nbsp; <%=staffDtls.get(i).getName()%></li>
                            <li>Qualification : &nbsp;<%=staffDtls.get(i).getQualification()%></li>
                            <li>Subject : &nbsp; <%=staffDtls.get(i).getSubject()%></li>
                            <li>Contact No. : &nbsp; <%=staffDtls.get(i).getContactNumber()%></li>
                            <li>Email : &nbsp; <%=staffDtls.get(i).getEmail()%></li>
                        </ul>
                        </p>
                        <div class="portfolio-links">
                            <a href="https://drive.google.com/file/d/1vbJPtrpiaFIYTrRMsx8htULS4AV8HmiB/view" data-gallery="portfolioGallery" class="portfolio-lightbox" title="Principal of Shari Higher Secondary Schol"><i class="bx bx-plus"></i></a>
                            <%--<a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>--%>
                        </div>
                    </div>
                </div>
            </div>
            <%}%>
            <%}%>
            <%--<div class="col-lg-4 col-md-6 portfolio-item filter-admin">
                <div class="portfolio-wrap">
                    <img src="https://drive.google.com/uc?export=view&id=1vbJPtrpiaFIYTrRMsx8htULS4AV8HmiB" class="img-fluid" alt="">
                    <div class="portfolio-info">
                        <p>Principal</p>
                        <h4>Bak Bir Rai</h4>
                        <div class="portfolio-links">
                            <a href="<c:url value="/resources/assets/img/portfolio/portfolio-2.jpg"/>" data-gallery="portfolioGallery" class="portfolio-lightbox" title=""><i class="bx bx-plus"></i></a>
                            &lt;%&ndash;<a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>&ndash;%&gt;
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
                            <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
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
            </div>--%>
        </div>
    </div>
</section>
</body>
</html>
