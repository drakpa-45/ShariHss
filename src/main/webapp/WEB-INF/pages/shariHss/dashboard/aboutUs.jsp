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
    <style>
        .card-counter{
            box-shadow: 2px 2px 10px #DADADA;
            margin: 5px;
            padding: 20px 10px;
            background-color: #fff;
            height: 100px;
            border-radius: 5px;
            transition: .3s linear all;
        }

        .card-counter:hover{
            box-shadow: 4px 4px 20px #DADADA;
            transition: .3s linear all;
        }

        .card-counter.primary{
            background-color: #ffefce;
            color: #FFF;
        }

        .card-counter.danger{
            background-color: #deeacd;
            color: #FFF;
        }

        .card-counter.success{
            background-color: #e0eae1;
            color: #FFF;
        }

        .card-counter.info{
            background-color: #ccd9da;
            color: #FFF;
        }

        .card-counter i{
            font-size: 5em;
            opacity: 0.2;
        }

        .card-counter .count-numbers{
            position: absolute;
            right: 35px;
            top: 20px;
            font-size: 32px;
            display: block;
        }

        .card-counter .count-name{
            position: absolute;
            right: 35px;
            top: 65px;
            font-style: italic;
            text-transform: capitalize;
            opacity: 0.5;
            display: block;
            font-size: 18px;
        }
    </style>
</head>
<body>
<!-- ======= Blog Section ======= -->
<section id="about" class="about">
    <div class="container">
        <div class="section-title">
            <h2>About Us</h2>
            <%--<p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>--%>
        </div>
        <div class="row">
            <div class="col-lg-6 order-1 order-lg-2">
                <img src="assets/img/about.jpg" class="img-fluid" alt="">
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 pt-4 pt-lg-0 order-2 order-lg-1 content">
                <h3>HISTORY</h3>
                <p class="fst-italic">
                    Shari Higher Secondary School under <b>Paro Dzongkhag</b> is an offshoot of the erstwhile Shari Community Primary School, established in the year <b>2000</b>. The school was upgraded to a Higher Secondary level in 2007 with the infrastructures constructed under the World Bank financing at a contract amount of Nu.29,429,310.00/- allotted to M/s T&K Construction to be completed within 15 months. The school is 4 KMs away from Paro town and has a conducive learning environment.
                </p>
                <p>
                    Located on a gentle slope overlooking the fertile valleys of ShariGeog and Paro Town, the school has one of the most impressive locales with tall whistling pine trees and decorative flowers and plants. The school opened as a Higher Secondary School in February 2007. The school had its first Foundation Day on June 2nd, 2008.
                </p>
                <p>
                    The school envisions living by the spiritual bonds of both the teachers and students; imparting the many facets of modern and monastic learning with a major thrust given to Training of Minds; Quality Output; Creation of Scholastic Culture and Pursue for
                    Excellence to attain the mission of providing quality Wholesome Education to the learners.
                </p>
                <p>
                    Today the school has good <b>administrative and academic buildings with an equipped library, computer facilities, and laboratories, adequate classrooms, a summer house, adequate games and sports arena, an auditorium, an internal road network, and campus street light</b>. We would like to be remembered as a home for the in-house dwellers, a temple of conscious learning for the learners and an institution of quality; a leader amongst schools; and our collective pride.
                </p>
               <%-- <ul>
                    <li><i class="bi bi-check-circled"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
                    <li><i class="bi bi-check-circled"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>
                    <li><i class="bi bi-check-circled"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.</li>
                </ul>--%>
            </div>
        </div>
    </div>
</section><!-- End Blog Section -->

<!-- ======= Why Us Section ======= -->
<section id="why-us" class="why-us">
    <div class="container">
        <div class="row no-gutters">
            <div class="col-lg-4 col-md-6 content-item">
                <h4>VISION</h4>
                <p class="fst-italic">"A learning organization of quality performances and excellence in academic and non-academic programs towards the wholesome development of learners."</p>
            </div>
            <div class="col-lg-4 col-md-6 content-item">
                <h4>MISSION</h4>
                <p class="fst-italic">"To create enabling conditions for our students to realize their potential to be honest, self-disciplined, responsible, dedicated, committed, and cooperative citizens who are academically sound morally upright, physically fit, culturally sensitive, ecologically conscious, and socially productive as just and loyal citizens."</p>
            </div>
            <div class="col-lg-4 col-md-6 content-item">
                <h4>CORE VALUES</h4>
                <ul type="none">
                    <li> <i class="bi bi-hand-index-thumb" style="color: #00b3ff"></i>&nbsp; Training of the mind</li>
                    <li> <i class="bi bi-hand-index-thumb" style="color: #00b3ff"></i>&nbsp; Professionalism</li>
                    <li> <i class="bi bi-hand-index-thumb" style="color: #00b3ff"></i>&nbsp; Quality Output</li>
                    <li> <i class="bi bi-hand-index-thumb" style="color: #00b3ff"></i>&nbsp; Scholastic Culture</li>
                    <li> <i class="bi bi-hand-index-thumb" style="color: #00b3ff"></i>&nbsp; Excellence</li>
                </ul>
            </div>
            <div class="col-lg-4 col-md-6 content-item">
                <h4>School Motto: Ever Shining</h4>
                <p><b>Our Strategy:</b> To fulfill the vision through:</p>
                <ul type="none" style="font-size: small">
                    <li> <i class="bi bi-key" style="color: #00b3ff"></i>&nbsp; Proper guidance and collaborative ventures</li>
                    <li> <i class="bi bi-key" style="color: #00b3ff"></i>&nbsp; Proper planning and introspection</li>
                    <li> <i class="bi bi-key" style="color: #00b3ff"></i>&nbsp; Consistent hard work with dedication</li>
                    <li> <i class="bi bi-key" style="color: #00b3ff"></i>&nbsp; Efficient and effective delivery of duties</li>
                    <li> <i class="bi bi-key" style="color: #00b3ff"></i>&nbsp; Perseverance to improve further</li>
                </ul>
            </div>
            <div class="col-lg-8 col-md-12 col-sm-12 content-item">
                <h4>SCHOOL TIMING</h4>
                <div class="panel panel-default">
                <div class="panel-body">
                    <div class="form-group">
                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <div id="small">
                                <div><i>Monday - Saturday</i></div>
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover" style="font-size: 12px; border: coral">
                                        <thead>
                                        <tr align="center">
                                            <th>Activities</th>
                                            <th>Time</th>
                                            <th>Remarks</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>Morning Assembly</td>
                                            <td>8:40 to 9:00 AM</td>
                                            <td>Monday and Saturday</td>
                                        </tr>
                                        <tr>
                                            <td>First Period</td>
                                            <td>9:00 to 9:50 AM</td>
                                            <td>(Remedial class on Saturday)</td>
                                        </tr>
                                        <tr>
                                            <td>Second Period</td>
                                            <td>9:50 to 10:40 AM</td>
                                            <td>(Pastoral class on Saturday)</td>
                                        </tr>
                                        <tr>
                                            <td>Recess</td>
                                            <td>10:40 to 10:55 AM</td>
                                            <td>-</td>
                                        </tr>
                                        <tr>
                                            <td>Third Period</td>
                                            <td>10:55 to 11:45 AM</td>
                                            <td>(Club on Saturday)</td>
                                        </tr>
                                        <tr>
                                            <td>Fourth Period</td>
                                            <td>11:45 to 12:35 PM</td>
                                            <td>(SUPW on Saturday)</td>
                                        </tr>
                                        <tr>
                                            <td>Lunch</td>
                                            <td>12:35 to 1:15 PM</td>
                                            <td>-</td>
                                        </tr>
                                        <tr>
                                            <td>Fifth Period</td>
                                            <td>1:15 to 2:05 PM</td>
                                            <td>-</td>
                                        </tr>
                                        <tr>
                                            <td>Sixth Period</td>
                                            <td>2:05 to 2:55 PM</td>
                                            <td>-</td>
                                        </tr>
                                        <tr>
                                            <td>Seventh Period</td>
                                            <td>2:55 to 3:45 PM</td>
                                            <td>-</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 content-item">
                <span>School stats</span>
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="card-counter primary">
                                <i class="bi bi-person-badge-fill"></i>
                                <span class="count-numbers">750</span>
                                <span class="count-name">TOTAL STUDENTS</span>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="card-counter danger">
                                <i class="bi bi-person-bounding-box"></i>
                                <span class="count-numbers">400</span>
                                <span class="count-name">BOYS</span>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="card-counter success">
                                <i class="bi bi-people"></i>
                                <span class="count-numbers">350</span>
                                <span class="count-name">GIRLS</span>
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="card-counter info">
                                <i class="bi bi-people-fill"></i>
                                <span class="count-numbers">102</span>
                                <span class="count-name">TOTAL STAFF</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section><!-- End Why Us Section -->

<!-- ======= Our Clients Section ======= -->
<section id="clients" class="clients">
    <div class="container">

        <div class="section-title">
            <h2>Shari in Picture</h2>
            <p>"A photo gallery is a visual time capsule that preserves moments, emotions, and stories. Each image holds the power to transport us back to those cherished memories and remind us of the beauty and wonder that exists in our lives."</p>
        </div>

       <%-- <div class="clients-slider swiper">
            <div class="swiper-wrapper align-items-center">
                <div class="swiper-slide"><img src="<c:url value="/resources/assets/img/clients/client-1.jpg"/>" class="img-fluid" alt=""></div>
                <div class="swiper-slide"><img src="<c:url value="/resources/assets/img/clients/client-2.jpg"/>" class="img-fluid" alt=""></div>
                <div class="swiper-slide"><img src="<c:url value="/resources/assets/img/clients/client-3.jpg"/>" class="img-fluid" alt=""></div>
                <div class="swiper-slide"><img src="<c:url value="/resources/assets/img/clients/client-4.jpg"/>" class="img-fluid" alt=""></div>
                <div class="swiper-slide"><img src="<c:url value="/resources/assets/img/clients/client-5.jpg"/>" class="img-fluid" alt=""></div>
                <div class="swiper-slide"><img src="<c:url value="/resources/assets/img/clients/client-6.jpg"/>" class="img-fluid" alt=""></div>
                <div class="swiper-slide"><img src="<c:url value="/resources/assets/img/clients/client-7.jpg"/>" class="img-fluid" alt=""></div>
                <div class="swiper-slide"><img src="<c:url value="/resources/assets/img/clients/client-8.jpg"/>" class="img-fluid" alt=""></div>
            </div>
            <div class="swiper-pagination"></div>
        </div>--%>
<jsp:include page="gallery.jsp"></jsp:include>
    </div>
</section><!-- End Our Clients Section -->
</body>
</html>
