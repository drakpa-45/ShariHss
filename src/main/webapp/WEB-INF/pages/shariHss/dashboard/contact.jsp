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

<body>
<section id="contact" class="contact">
    <div class="container">
        <div class="section-title">
            <h2>Contact</h2>
            <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
        </div>
        <div class="row">
            <div class="col-lg-5 d-flex align-items-stretch">
                <div class="info">
                    <div class="address">
                        <i class="bi bi-geo-alt"></i>
                        <h4>Location:</h4>
                        <p>Dop-shari Geog, Paro</p>
                    </div>
                    <div class="email">
                        <i class="bi bi-envelope"></i>
                        <h4>Email:</h4>
                        <p>pr.sharihss@education.gov.bt</p>
                    </div>
                    <div class="phone">
                        <i class="bi bi-phone"></i>
                        <h4>Call:</h4>
                        <p>+975-8-272588</p>
                    </div>
                    <iframe src="https://maps.google.com/maps?q=Shari+Higher+Secondary+School&t=&z=10&ie=UTF8&iwloc=&output=embed" frameborder="0" style="border:0; width: 100%; height: 290px;" allowfullscreen>></iframe>
                </div>
            </div>
            <div class="col-lg-7 mt-5 mt-lg-0 d-flex align-items-stretch">
                <form action="#" method="post" role="form" id="feedback" class="php-email-form">
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="name">Your Name</label>
                            <input type="text" name="username" class="form-control" id="name" required>
                        </div>
                        <div class="form-group col-md-6 mt-3 mt-md-0">
                            <label for="name">Your Email</label>
                            <input type="email" class="form-control" name="email" id="email" required>
                        </div>
                    </div>
                    <div class="form-group mt-3">
                        <label for="name">Subject</label>
                        <input type="text" class="form-control" name="subject" id="subject" required>
                    </div>
                    <div class="form-group mt-3">
                        <label for="name">Message</label>
                        <textarea class="form-control" name="message" rows="10" required></textarea>
                    </div>
                    <div class="my-3">
                        <div class="loading">Loading</div>
                        <div class="error-message"></div>
                        <div class="sent-message">Your message has been sent. Thank you!</div>
                    </div>
                    <div class="text-center">
                        <button type="button" class="btn text-white" onclick="sendFeedback()" style="background-color: #d0802b">Send</button></div>
                </form>
            </div>
        </div>
    </div>
</section>
<script language="javascript" type="text/javascript">
    function sendFeedback(){
        alert();
        $.ajax({
            url: ${pageContext.request.contextPath} + '/sendFeedback',
            type: 'GET',
            data: $('#feedback').serialize(),
            success: function (res) {
                if(res.status=='1'){
                    alert(res.text);
                }else{

                }
            }
        });
    }
</script>
</body>
