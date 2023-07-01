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
                <article class="entry">
                    <div class="entry-img">
                        <img src="<c:url value="/resources/assets/img/blog/blog-1.jpg"/>" alt="" class="img-fluid">
                    </div>
                    <h2 class="entry-title">
                        <a href="blog-single.html">School Rimdo Concludes with Kaago and Luung by Venerable Lam Neten of Paro Dratshang</a>
                    </h2>
                    <div class="entry-meta">
                        <ul>
                            <li class="d-flex align-items-center"><i class="bi bi-person"></i> <a href="blog-single.html">Kelzang Sherab</a></li>
                            <li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a href="blog-single.html"><time datetime="2023-03-01">March 1, 2023</time></a></li>
                            <%--<li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i> <a href="blog-single.html">12 Comments</a></li>--%>
                        </ul>
                    </div>
                    <div class="entry-content">
                        <p>
                            We are bound by the four elements of earth, water, fire and wind. Our body is therefore vulnerable to these elements at any time. We need to protect ourselves by evocking the deities on a regular basis.
                            One such program in the school is the school rimdo. In a most befitting manner, the school conducted rimdo today. The school was blessed to have the presence of venerable Lam Neten of Paro dratshang. Lam took his break time to interact with the children to initiate Kago and Luung to the members of the school. It was also touching to have his heart touching advice to our children on the values of time  and other issues pertaining our youth of the present time. There was much awakening and a sense of realization in all. A powerful message indeed.
                            There was the feel of the occasion unlike other times.
                        </p>
                        <div class="read-more">
                            <a href="#blog1">Read More</a>
                        </div>
                        <p id="blog1" style="display: none">
                            We are bound by the four elements of earth, water, fire and wind. Our body is therefore vulnerable to these elements at any time. We need to protect ourselves by evocking the deities on a regular basis.
                            One such program in the school is the school rimdo. In a most befitting manner, the school conducted rimdo today. The school was blessed to have the presence of venerable Lam Neten of Paro dratshang. Lam took his break time to interact with the children to initiate Kago and Luung to the members of the school. It was also touching to have his heart touching advice to our children on the values of time  and other issues pertaining our youth of the present time. There was much awakening and a sense of realization in all. A powerful message indeed.
                            There was the feel of the occasion unlike other times.
                        </p>
                    </div>
                </article><!-- End blog entry -->
                <article class="entry">
                    <div class="entry-img">
                        <img src="<c:url value="/resources/assets/img/blog/blog-2.jpg"/>" alt="" class="img-fluid">
                    </div>
                    <h2 class="entry-title">
                        <a href="blog-single.html">Children revive the culture of Traditional dance competition. </a>
                    </h2>
                    <div class="entry-meta">
                        <ul>
                            <li class="d-flex align-items-center"><i class="bi bi-person"></i> <a href="blog-single.html">Drakpa</a></li>
                            <li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a href="blog-single.html"><time datetime="2020-01-01">Jan 1, 2020</time></a></li>
                            <%--<li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i> <a href="blog-single.html">12 Comments</a></li>--%>
                        </ul>
                    </div>
                    <div class="entry-content">
                        <p>
                            Our vibrant culture was given a voice in the school again. It is one that makes what we are. Our unique way of portraying the identity falls on each one of us and more so the youth who are the future of the nation.
                            Such programs were given no space in the school annual calendar in the last few years and has affected our children so much. Our children had to re-learn the basics of choreography from the scratch yet the performance was not bad.
                            Children only needs guidance and a bit of inspiration from the teachers and elders. There is nothing that cannot be achieved given the right direction and instruction. Failure comes only from an unclear instruction and directions.
                        </p>
                        <div class="read-more">
                            <a href="blog-single.html">Read More</a>
                        </div>
                    </div>
                </article><!-- End blog entry -->
                <article class="entry">
                    <div class="entry-img">
                        <img src="<c:url value="/resources/assets/img/blog/blog-3.jpg"/>" alt="" class="img-fluid">
                    </div>
                    <h2 class="entry-title">
                        <a href="blog-single.html">Elected Captains are awarded with badge and oath taking ceremony.</a>
                    </h2>
                    <div class="entry-meta">
                        <ul>
                            <li class="d-flex align-items-center"><i class="bi bi-person"></i> <a href="blog-single.html">John Doe</a></li>
                            <li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a href="blog-single.html"><time datetime="2020-01-01">Jan 1, 2020</time></a></li>
                            <%--<li class="d-flex align-items-center"><i class="bi bi-chat-dots"></i> <a href="blog-single.html">12 Comments</a></li>--%>
                        </ul>
                    </div>
                    <div class="entry-content">
                        <p>
                            Captains badge awarding and oath taking ceremony was held today morning during the assembly at the courtyard of the administrative block. Students were briefed on their roles as they take up the leadership responsibilities this auspicious day on the 14th of March 2023. It is important to learn and experience new ideas when the opportunity knocks.
                            The elected captains were the creams of the school. Hereafter, they will steer the wheel of Shari HSS along with the Principal and staff till the end of the academic session. We would like to congratulate each one of them and wish them a wonderful academic year ahead.
                            May the school shine through the tireless efforts and the wonderful support rendered in various capacities.
                        </p>
                        <div class="read-more">
                            <a href="blog-single.html">Read More</a>
                        </div>
                    </div>
                </article><!-- End blog entry -->
                <%--<div class="blog-pagination">
                    <ul class="justify-content-center">
                        <li><a href="#">1</a></li>
                        <li class="active"><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                    </ul>
                </div>--%>
            </div><!-- End blog entries list -->

            <div class="col-lg-4 col-md-12 col-sm-12">
                <jsp:include page="login.jsp"></jsp:include>
                <div class="sidebar">
                    <h3 class="sidebar-title">Search</h3>
                    <div class="sidebar-item search-form">
                        <form action="https://www.google.com/" target="_blank">
                            <input type="text">
                            <button type="submit"><i class="bi bi-search"></i></button>
                        </form>
                    </div>
                    <!-- End sidebar search formn-->
                    <h3 class="sidebar-title">Recent Global News</h3>
                    <div class="sidebar-item recent-posts">
                        <div class="post-item clearfix">
                            <img src="assets/img/blog/blog-recent-1.jpg" alt="">
                            <h4><a href="blog-single.html">Nihil blanditiis at in nihil autem</a></h4>
                            <time datetime="2020-01-01">Jan 1, 2020</time>
                        </div>
                        <div class="post-item clearfix">
                            <img src="assets/img/blog/blog-recent-2.jpg" alt="">
                            <h4><a href="blog-single.html">Quidem autem et impedit</a></h4>
                            <time datetime="2020-01-01">Jan 1, 2020</time>
                        </div>
                        <div class="post-item clearfix">
                            <img src="assets/img/blog/blog-recent-3.jpg" alt="">
                            <h4><a href="blog-single.html">Id quia et et ut maxime similique occaecati ut</a></h4>
                            <time datetime="2020-01-01">Jan 1, 2020</time>
                        </div>
                    </div><!-- End sidebar recent global posts-->
                </div><!-- End sidebar -->
                    <div class="sidebar">
                        <h3 class="sidebar-title">Recent National News</h3>
                        <div class="sidebar-item recent-posts">
                            <div class="post-item clearfix">
                                <img src="assets/img/blog/blog-recent-3.jpg" alt="">
                                <h4><a href="blog-single.html">Id quia et et ut maxime similique occaecati ut</a></h4>
                                <time datetime="2020-01-01">Jan 1, 2020</time>
                            </div>
                            <div class="post-item clearfix">
                                <img src="assets/img/blog/blog-recent-4.jpg" alt="">
                                <h4><a href="blog-single.html">Laborum corporis quo dara net para</a></h4>
                                <time datetime="2020-01-01">Jan 1, 2020</time>
                            </div>
                            <div class="post-item clearfix">
                                <img src="assets/img/blog/blog-recent-5.jpg" alt="">
                                <h4><a href="blog-single.html">Et dolores corrupti quae illo quod dolor</a></h4>
                                <time datetime="2020-01-01">Jan 1, 2020</time>
                            </div>
                        </div><!-- End sidebar recent Nation posts-->
                    </div><!-- End sidebar -->
            </div><!-- End blog sidebar -->
        </div>
    </div>
</section><!-- End Blog Section -->
</body>
</html>
