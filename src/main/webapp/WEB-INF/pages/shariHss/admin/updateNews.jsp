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
            <h2>News</h2>
        </div>
        <div class="row">
            <div class="col-lg-2 d-flex align-items-stretch"></div>
            <div class="col-lg-8 d-flex align-items-stretch" id="newsUpdate">
                <form action="#" method="post" role="form" id="news_update" class="php-email-form">
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>Title:</label>
                            <input type="text" name="title" class="form-control" id="title" required>
                        </div>
                        <div class="form-group col-md-6 mt-3 mt-md-0">
                            <label>Author:</label>
                            <input type="text" class="form-control" name="author" id="author" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6 mt-3 mt-md-0">
                            <label>Published On:</label>
                            <input type="date" class="form-control" name="publishedOn" id="publishedOn" required>
                        </div>
                        <div class="form-group col-md-6 mt-3 mt-md-0">
                            <label>Image ID:</label>
                            <input type="text" class="form-control" name="googleImageId" id="googleImageId" required>
                        </div>
                    </div>
                    <div class="form-group mt-3">
                        <label>Content</label>
                        <textarea class="form-control" name="content" rows="10" required></textarea>
                    </div>
                    <div class="form-group mt-3">
                        <label>Sub Content</label>
                        <textarea class="form-control" name="contentMore" rows="10" required></textarea>
                    </div>
                    <div class="text-center">
                        <button type="button" class="btn text-white" id="newsUpdateBtn" style="background-color: #d0802b">Send</button>
                    </div>
                </form>
            </div>
            <div class="col-lg-2 d-flex align-items-stretch"></div>
        </div>
    </div>
</section>
<script src="<c:url value="/resources/js/shari/shariPB.js"/>"></script>
<%--<script language="javascript" type="text/javascript">

    function _baseURL() {
        return shariGlobal.baseURL() + "/";
    }
    $('#btnSend').on('click', function (e) {
        debugger;
        var isValid = true;
        $('#feed_back').find(':input').each(function () {
            if (isValid == true) {
                isValid = $('#feedback').validate().element(this);
            } else {
                $('#feedback').validate().element(this);
            }
        });
        if (isValid == true) {
            $.ajax({
                url: _baseURL()+'sendFeedback',
                type: 'GET',
                data: $('#feedback').serialize(),
                success: function (res) {
                    if(res.status=='1'){
                        successMsg(res.text);
                    }else{

                    }
                }
            });
        }
    });

</script>--%>
</body>
