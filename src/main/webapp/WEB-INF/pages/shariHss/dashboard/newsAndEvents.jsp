<%@ page import="bt.education.shariHss.dto.NewsDTO" %>
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
     <style>

        /*--------------------------------------------------------------
               # Blog
               --------------------------------------------------------------*/
        .blog {
            padding: 40px 0 20px 0;
        }
        .blog .entry {
            padding: 30px;
            margin-bottom: 60px;
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1);
        }

        .blog .entry .entry-img {
            max-height: 440px;
            margin: -30px -30px 20px -30px;
            overflow: hidden;
        }

        .blog .entry .entry-title {
            font-size: 28px;
            font-weight: bold;
            padding: 0;
            margin: 0 0 20px 0;
        }

        .blog .entry .entry-title a {
            color: #1e4356;
            transition: 0.3s;
        }

        .blog .entry .entry-title a:hover {
            color: #68A4C4;
        }

        .blog .entry .entry-meta {
            margin-bottom: 15px;
            #color: #72afce;
            color: orange;
        }

        .blog .entry .entry-meta ul {
            display: flex;
            flex-wrap: wrap;
            list-style: none;
            align-items: center;
            padding: 0;
            margin: 0;
        }

        .blog .entry .entry-meta ul li+li {
            padding-left: 20px;
        }

        .blog .entry .entry-meta i {
            font-size: 16px;
            margin-right: 8px;
            line-height: 0;
        }

        .blog .entry .entry-meta a {
            color: #777777;
            font-size: 14px;
            display: inline-block;
            line-height: 1;
        }

        .blog .entry .entry-content p {
            line-height: 24px;
        }

        .blog .entry .entry-content .read-more {
            -moz-text-align-last: right;
            text-align-last: right;
        }

        .blog .entry .entry-content .read-more a {
            display: inline-block;
            #background: #68A4C4;
            background: orange;
            color: #fff;
            padding: 6px 20px;
            transition: 0.3s;
            font-size: 14px;
        }

        .blog .entry .entry-content .read-more a:hover {
            background: #7aafcb;
        }

        .blog .entry .entry-content h3 {
            font-size: 22px;
            margin-top: 30px;
            font-weight: bold;
        }

        .blog .entry .entry-content blockquote {
            overflow: hidden;
            background-color: #fafafa;
            padding: 60px;
            position: relative;
            text-align: center;
            margin: 20px 0;
        }

        .blog .entry .entry-content blockquote p {
            color: #444;
            line-height: 1.6;
            margin-bottom: 0;
            font-style: italic;
            font-weight: 500;
            font-size: 22px;
        }

        .blog .entry .entry-content blockquote::after {
            content: "";
            position: absolute;
            left: 0;
            top: 0;
            bottom: 0;
            width: 3px;
            background-color: #1e4356;
            margin-top: 20px;
            margin-bottom: 20px;
        }

        .blog .entry .entry-footer {
            padding-top: 10px;
            border-top: 1px solid #e6e6e6;
        }

        .blog .entry .entry-footer i {
            color: #4c99c1;
            display: inline;
        }

        .blog .entry .entry-footer a {
            color: #255269;
            transition: 0.3s;
        }

        .blog .entry .entry-footer a:hover {
            color: #68A4C4;
        }

        .blog .entry .entry-footer .cats {
            list-style: none;
            display: inline;
            padding: 0 20px 0 0;
            font-size: 14px;
        }

        .blog .entry .entry-footer .cats li {
            display: inline-block;
        }

        .blog .entry .entry-footer .tags {
            list-style: none;
            display: inline;
            padding: 0;
            font-size: 14px;
        }

        .blog .entry .entry-footer .tags li {
            display: inline-block;
        }

        .blog .entry .entry-footer .tags li+li::before {
            padding-right: 6px;
            color: #6c757d;
            content: ",";
        }

        .blog .entry .entry-footer .share {
            font-size: 16px;
        }

        .blog .entry .entry-footer .share i {
            padding-left: 5px;
        }

        .blog .entry-single {
            margin-bottom: 30px;
        }

        .blog .blog-author {
            padding: 20px;
            margin-bottom: 30px;
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1);
        }

        .blog .blog-author img {
            width: 120px;
            margin-right: 20px;
        }

        .blog .blog-author h4 {
            font-weight: 600;
            font-size: 22px;
            margin-bottom: 0px;
            padding: 0;
            color: #1e4356;
        }

        .blog .blog-author .social-links {
            margin: 0 10px 10px 0;
        }

        .blog .blog-author .social-links a {
            color: rgba(30, 67, 86, 0.5);
            margin-right: 5px;
        }

        .blog .blog-author p {
            font-style: italic;
            color: #b7b7b7;
        }

        .blog .blog-comments {
            margin-bottom: 30px;
        }

        .blog .blog-comments .comments-count {
            font-weight: bold;
        }

        .blog .blog-comments .comment {
            margin-top: 30px;
            position: relative;
        }

        .blog .blog-comments .comment .comment-img {
            margin-right: 14px;
        }

        .blog .blog-comments .comment .comment-img img {
            width: 60px;
        }

        .blog .blog-comments .comment h5 {
            font-size: 16px;
            margin-bottom: 2px;
        }

        .blog .blog-comments .comment h5 a {
            font-weight: bold;
            color: #444;
            transition: 0.3s;
        }

        .blog .blog-comments .comment h5 a:hover {
            color: #68A4C4;
        }

        .blog .blog-comments .comment h5 .reply {
            padding-left: 10px;
            color: #1e4356;
        }

        .blog .blog-comments .comment h5 .reply i {
            font-size: 20px;
        }

        .blog .blog-comments .comment time {
            display: block;
            font-size: 14px;
            color: #2b607c;
            margin-bottom: 5px;
        }

        .blog .blog-comments .comment.comment-reply {
            padding-left: 40px;
        }

        .blog .blog-comments .reply-form {
            margin-top: 30px;
            padding: 30px;
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1);
        }

        .blog .blog-comments .reply-form h4 {
            font-weight: bold;
            font-size: 22px;
        }

        .blog .blog-comments .reply-form p {
            font-size: 14px;
        }

        .blog .blog-comments .reply-form input {
            border-radius: 4px;
            padding: 10px 10px;
            font-size: 14px;
        }

        .blog .blog-comments .reply-form input:focus {
            box-shadow: none;
            border-color: #b1d0e1;
        }

        .blog .blog-comments .reply-form textarea {
            border-radius: 4px;
            padding: 10px 10px;
            font-size: 14px;
        }

        .blog .blog-comments .reply-form textarea:focus {
            box-shadow: none;
            border-color: #b1d0e1;
        }

        .blog .blog-comments .reply-form .form-group {
            margin-bottom: 25px;
        }

        .blog .blog-comments .reply-form .btn-primary {
            border-radius: 4px;
            padding: 10px 20px;
            border: 0;
            background-color: #1e4356;
        }

        .blog .blog-comments .reply-form .btn-primary:hover {
            background-color: #255269;
        }

        .blog .blog-pagination {
            color: orange;
        }

        .blog .blog-pagination ul {
            display: flex;
            padding: 0;
            margin: 0;
            list-style: none;
        }

        .blog .blog-pagination li {
            margin: 0 5px;
            transition: 0.3s;
        }

        .blog .blog-pagination li a {
            color: #1e4356;
            padding: 7px 16px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .blog .blog-pagination li.active,
        .blog .blog-pagination li:hover {
            background: orange;
        }

        .blog .blog-pagination li.active a,
        .blog .blog-pagination li:hover a {
            color: #fff;
        }

        .blog .sidebar {
            padding: 30px;
            margin: 0 0 60px 20px;
            box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1);
        }

        .blog .sidebar .sidebar-title {
            font-size: 20px;
            font-weight: 700;
            padding: 0 0 0 0;
            margin: 0 0 15px 0;
            color: #1e4356;
            position: relative;
        }

        .blog .sidebar .sidebar-item {
            margin-bottom: 30px;
        }

        .blog .sidebar .search-form form {
            background: #fff;
            border: 1px solid #ddd;
            padding: 3px 10px;
            position: relative;
        }

        .blog .sidebar .search-form form input[type=text] {
            border: 0;
            padding: 4px;
            border-radius: 4px;
            width: calc(100% - 40px);
        }

        .blog .sidebar .search-form form button {
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            border: 0;
            background: none;
            font-size: 16px;
            padding: 0 15px;
            margin: -1px;
            #background: #68A4C4;
            background: orange;
            color: #fff;
            transition: 0.3s;
            border-radius: 0 4px 4px 0;
            line-height: 0;
        }

        .blog .sidebar .search-form form button i {
            line-height: 0;
        }

        .blog .sidebar .search-form form button:hover {
            background: #77adca;
        }

        .blog .sidebar .categories ul {
            list-style: none;
            padding: 0;
        }

        .blog .sidebar .categories ul li+li {
            padding-top: 10px;
        }

        .blog .sidebar .categories ul a {
            color: #1e4356;
            transition: 0.3s;
        }

        .blog .sidebar .categories ul a:hover {
            color: #68A4C4;
        }

        .blog .sidebar .categories ul a span {
            padding-left: 5px;
            color: #aaaaaa;
            font-size: 14px;
        }

        .blog .sidebar .recent-posts .post-item+.post-item {
            margin-top: 15px;
        }

        .blog .sidebar .recent-posts img {
            width: 80px;
            float: left;
        }

        .blog .sidebar .recent-posts h4 {
            font-size: 15px;
            margin-left: 95px;
            font-weight: bold;
        }

        .blog .sidebar .recent-posts h4 a {
            color: #1e4356;
            transition: 0.3s;
        }

        .blog .sidebar .recent-posts h4 a:hover {
            color: #68A4C4;
        }

        .blog .sidebar .recent-posts time {
            display: block;
            margin-left: 95px;
            font-style: italic;
            font-size: 14px;
            color: #aaaaaa;
        }

        .blog .sidebar .tags {
            margin-bottom: -10px;
        }

        .blog .sidebar .tags ul {
            list-style: none;
            padding: 0;
        }

        .blog .sidebar .tags ul li {
            display: inline-block;
        }

        .blog .sidebar .tags ul a {
            color: #3f8db5;
            font-size: 14px;
            padding: 6px 14px;
            margin: 0 6px 8px 0;
            border: 1px solid #e4eff5;
            display: inline-block;
            transition: 0.3s;
        }

        .blog .sidebar .tags ul a:hover {
            color: #fff;
            border: 1px solid #68A4C4;
            background: #68A4C4;
        }

        .blog .sidebar .tags ul a span {
            padding-left: 5px;
            color: #bedae8;
            font-size: 14px;
        }
    </style>
</head>
<body>
<% List<NewsDTO> newsDetails=(List<NewsDTO>) request.getAttribute("newsDetails"); %>
<% List<NewsDTO> announcement=(List<NewsDTO>) request.getAttribute("announcement"); %>
<!-- ======= Blog Section ======= -->
<%-- <div class="row no-gutters">
                <div class="col-lg-4 col-md-6">
                    <div class="icon-box">
                        <div class="icon"><i class="bi bi-laptop"></i></div>
                        <h4 class="title"><a href="">Lorem Ipsum</a></h4>
                        <p class="description">Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="icon-box">
                        <div class="icon"><i class="bi bi-briefcase"></i></div>
                        <h4 class="title"><a href="">Dolor Sitema</a></h4>
                        <p class="description">Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat tarad limino ata</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="icon-box">
                        <div class="icon"><i class="bi bi-calendar4-week"></i></div>
                        <h4 class="title"><a href="">Sed ut perspiciatis</a></h4>
                        <p class="description">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur trade stravi</p>
                    </div>
                </div>
            </div>--%>
<section id="blog" class="blog">
    <div class="container" data-aos="fade-up">
        <div class="row">
            <div class="col-lg-8 entries">
                <%for(int i=0;i<newsDetails.size();i++){%>
                <article class="entry">
                    <div class="entry-img">
                       <%-- <img src="<c:url value="/resources/assets/img/blog/blog-2.jpg"/>" alt="" class="img-fluid">--%>
                           <img src="https://drive.google.com/uc?export=view&id=<%=newsDetails.get(i).getGoogleImageId()%>" class="img-fluid" alt="">
                    </div>
                    <h2 class="entry-title">
                        <a href="blog-single.html"><%=newsDetails.get(i).getTitle()%></a>
                    </h2>
                    <div class="entry-meta">
                        <ul>
                            <li class="d-flex align-items-center"><i class="bi bi-person"></i> <a href="blog-single.html"><%=newsDetails.get(i).getAuthor()%></a></li>
                            <li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a href="blog-single.html"><time datetime="2023-03-01"><%=newsDetails.get(i).getPublishedOn()%></time></a></li>
                            <%--<li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i> <a href="blog-single.html">12 Comments</a></li>--%>
                        </ul>
                    </div>
                    <div class="entry-content">
                        <p>
                            <%=newsDetails.get(i).getContent()%>
                        </p>
                        <div class="read-more">
                            <a href="#blog1">Read More</a>
                        </div>
                        <p id="blog1" style="display: none">
                            <%=newsDetails.get(i).getContentMore()%>
                        </p>
                    </div>
                </article>
                <%}%>
                <!-- End blog entry -->
                <%--<article class="entry">
                    <div class="entry-img">
                        <img src="<c:url value="/resources/assets/img/blog/blog-3.jpg"/>" alt="" class="img-fluid">
                    </div>
                    <h2 class="entry-title">
                        <a href="blog-single.html"><%=newsDetails.get(1).getTitle()%> </a>
                    </h2>
                    <div class="entry-meta">
                        <ul>
                            <li class="d-flex align-items-center"><i class="bi bi-person"></i> <a href="blog-single.html"><%=newsDetails.get(1).getAuthor()%></a></li>
                            <li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a href="blog-single.html"><time datetime="2020-01-01"><%=newsDetails.get(1).getPublishedOn()%></time></a></li>
                            &lt;%&ndash;<li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i> <a href="blog-single.html">12 Comments</a></li>&ndash;%&gt;
                        </ul>
                    </div>
                    <div class="entry-content">
                        <p>
                            <%=newsDetails.get(1).getContent()%>
                        </p>
                        <div class="read-more">
                            <a href="blog-single.html">Read More</a>
                        </div>
                    </div>
                </article><!-- End blog entry -->
                <article class="entry">
                    <div class="entry-img">
                        <img src="<c:url value="/resources/assets/img/blog/blog-1.jpg"/>" alt="" class="img-fluid">
                    </div>
                    <h2 class="entry-title">
                        <a href="blog-single.html"><%=newsDetails.get(2).getTitle()%></a>
                    </h2>
                    <div class="entry-meta">
                        <ul>
                            <li class="d-flex align-items-center"><i class="bi bi-person"></i> <a href="blog-single.html"><%=newsDetails.get(2).getAuthor()%></a></li>
                            <li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a href="blog-single.html"><time datetime="2020-01-01"><%=newsDetails.get(2).getPublishedOn()%></time></a></li>
                            &lt;%&ndash;<li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i> <a href="blog-single.html">12 Comments</a></li>&ndash;%&gt;
                        </ul>
                    </div>
                    <div class="entry-content">
                        <p>
                            <%=newsDetails.get(2).getContent()%>
                        </p>
                        <div class="read-more">
                            <a href="blog-single.html">Read More</a>
                        </div>
                    </div>
                </article>--%>
            </div><!-- End blog entries list -->

            <div class="col-lg-4 col-md-12 col-sm-12">
                <div class="sidebar">
                    <form action="<c:url value="/login"/>" method="post">
                    <h3 class="sidebar-title">Sign In</h3>
                    <!-- End sidebar search formn-->
                    <div class="sidebar-item recent-posts">
                        <div class="post-item clearfix">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="bi bi-person-circle"></i></span>
                                <input type="text" class="form-control" placeholder="username" name="userId">
                            </div>
                            <div class="input-group-prepend mt-3">
                                <span class="input-group-text"><i class="bi bi-lock"></i></span>
                                <input type="password" class="form-control" placeholder="password" name="password">
                            </div>
                            <div class="row align-items-center remember mt-3">
                                <input type="checkbox">Remember Me
                            </div>
                            <div class="form-group mt-3">
                                <input type="submit" value="Login" class="btn center login_btn">
                            </div>
                            <%--<div class="d-flex justify-content-center links">
                                Don't have an account?<a href="#">Sign Up</a>
                            </div>--%>
                            <div class="d-flex justify-content-center">
                                <a href="#">Forgot your password?</a>
                            </div>
                        </div>
                    </div>
                    </form>    <!-- End sidebar recent global posts-->
                </div>
                <div class="sidebar">
                    <h3 class="sidebar-title">Search</h3>
                    <div class="sidebar-item search-form">
                        <form action="https://www.google.com/" target="_blank">
                            <input type="text">
                            <button type="submit"><i class="bi bi-search"></i></button>
                        </form>
                    </div>
                    <!-- End sidebar search formn-->
                    <h3 class="sidebar-title">ANNOUNCEMENT &nbsp; <i class="bi bi-megaphone text-orange"></i></h3>
                    <div class="sidebar-item recent-posts">
                        <%for(int i=0;i<announcement.size();i++){%>
                        <div class="post-item clearfix">
                            <%--<img src="assets/img/blog/blog-recent-1.jpg" alt="">--%>
                            <h5><a href="#"><%=announcement.get(i).getTitle()%></a></h5>
                            <p><%=announcement.get(i).getContent()%></p>
                                <%if(announcement.get(i).getGoogleImageId()!=null){%>
                                    <a href="<%=announcement.get(i).getGoogleImageId()%>">Click here for detail</a>
                                <%}%>
                        </div>
                        <%}%>

                        <%--<div class="post-item clearfix">
                            <img src="assets/img/blog/blog-recent-2.jpg" alt="">
                            <h4><a href="blog-single.html">Quidem autem et impedit</a></h4>
                            <time datetime="2020-01-01">Jan 1, 2020</time>
                        </div>
                        <div class="post-item clearfix">
                            <img src="assets/img/blog/blog-recent-3.jpg" alt="">
                            <h4><a href="blog-single.html">Id quia et et ut maxime similique occaecati ut</a></h4>
                            <time datetime="2020-01-01">Jan 1, 2020</time>
                        </div>--%>
                    </div><!-- End sidebar recent global posts-->
                </div><!-- End sidebar -->
                    <div class="sidebar">
                        <h3 class="sidebar-title">QUICK LINKS &nbsp; <i class="bi bi-link text-orange"></i></h3>
                        <div class="sidebar-item recent-posts">
                            <div class="post-item clearfix">
                                <%--<img src="assets/img/blog/blog-recent-3.jpg" alt="">--%>
                                <h5><a href="https://www.gov.bt/ministry-of-education-and-skills-development/" target="_blank">Ministry of Education and Skills Development</a></h5>
                               <%-- <time datetime="2020-01-01">Jan 1, 2020</time>--%>
                            </div>
                            <div class="post-item clearfix">
                                <%--<img src="assets/img/blog/blog-recent-4.jpg" alt="">--%>
                                <h5><a href="https://www.rcsc.gov.bt/en/" target="_blank">Royal Civil Service Commission, Royal Government of Bhutan</a></h5>
                                <%--<time datetime="2020-01-01">Jan 1, 2020</time>--%>
                            </div>
                            <div class="post-item clearfix">
                               <%-- <img src="assets/img/blog/blog-recent-5.jpg" alt="">--%>
                                <h5><a href="http://www.bbs.bt/news/" target="_blank">Bhutan Boardcasting Service</a></h5>
                            </div>
                        </div><!-- End sidebar recent Nation posts-->
                    </div><!-- End sidebar -->
            </div><!-- End blog sidebar -->
        </div>
    </div>
</section><!-- End Blog Section -->
</body>
</html>
