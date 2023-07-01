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
<!------ Include the above in your HEAD tag ---------->
<html>
<head>
    <style>
        .btn:focus, .btn:active, button:focus, button:active {
            outline: none !important;
            box-shadow: none !important;
        }

        #image-gallery .modal-footer{
            display: block;
        }

        .thumb{
            margin-top: 15px;
            margin-bottom: 15px;
        }

        .zoom:hover {
            transform: scale(2.5); /* (150% zoom - Note: if the zoom is too large, it will go outside of the viewport) */
        }
    </style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="row">
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail zoom" href="#" data-image-id="<c:url value="/resources/assets/img/clients/client-1.jpg"/>" data-toggle="modal" data-title="" data-image="/resources/assets/img/clients/client-1.jpg" data-target="#image-gallery">
                    <img class="img-thumbnail zoom" src="<c:url value="/resources/assets/img/clients/client-1.jpg"/>" alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail zoom" href="#" data-image-id="" data-toggle="modal" data-title="" data-image="" data-target="#image-gallery">
                    <img class="img-thumbnail zoom" src="<c:url value="/resources/assets/img/clients/client-2.jpg"/>" alt="Another alt text">
                </a>
            </div>

            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail zoom" href="#" data-image-id="" data-toggle="modal" data-title="" data-image="" data-target="#image-gallery">
                    <img class="img-thumbnail zoom" src="<c:url value="/resources/assets/img/clients/client-6.jpg"/>" alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail zoom" href="#" data-image-id="" data-toggle="modal" data-title="Test1" data-image="" data-target="#image-gallery">
                    <img class="img-thumbnail zoom" src="<c:url value="/resources/assets/img/clients/client-4.jpg"/>" alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail zoom" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice" data-image="" data-target="#image-gallery">
                    <img class="img-thumbnail zoom" src="<c:url value="/resources/assets/img/clients/client-8.jpg"/>" alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail zoom" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice" data-image="" data-target="#image-gallery">
                    <img class="img-thumbnail zoom" src="<c:url value="/resources/assets/img/clients/client-6.jpg"/>" alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice" data-image="" data-target="#image-gallery">
                    <img class="img-thumbnail zoom" src="<c:url value="/resources/assets/img/clients/client-7.jpg"/>" alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice" data-image="" data-target="#image-gallery">
                    <img class="img-thumbnail zoom" src="<c:url value="/resources/assets/img/clients/client-8.jpg"/>" alt="Another alt text">
                </a>
            </div>

            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Im so nice" data-image="" data-target="#image-gallery">
                    <img class="img-thumbnail zoom" src="<c:url value="/resources/assets/img/clients/client-4.jpg"/>" alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                <a class="thumbnail" href="#" data-image-id="/resources/assets/img/clients/client-8.jpg" data-toggle="modal" data-title="Im so nice" data-image="" data-target="#image-gallery">
                    <img class="img-thumbnail zoom" src="<c:url value="/resources/assets/img/clients/client-8.jpg"/>" alt="Another alt text">
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                    <img class="img-thumbnail zoom" src="<c:url value="/resources/assets/img/clients/client-6.jpg"/>" alt="Another alt text">
            </div>
        </div>
        <div class="modal fade" id="image-gallery" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="image-gallery-title"></h4>
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <img id="image-gallery-image" class="img-responsive col-md-12" src="">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary float-left" id="show-previous-image"><i class="fa fa-arrow-left"></i></button>
                        <button type="button" id="show-next-image" class="btn btn-secondary float-right"><i class="fa fa-arrow-right"></i></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
