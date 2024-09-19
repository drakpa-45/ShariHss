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

<body>
<div class="container">
    <div class="d-flex justify-content-center h-100">
        <div class="card">
            <div class="card-header">
                <h3>Sign In</h3>
            </div>
            <div class="card-body">
                <form>
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="bi bi-person-circle"></i></span>
                        </div>
                        <input type="text" class="form-control" placeholder="username">
                    </div>
                    <br>
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="bi bi-lock"></i></span>
                        </div>
                        <input type="password" class="form-control" placeholder="password">
                    </div>
                    <br>
                    <div class="row align-items-center remember">
                        <input type="checkbox">Remember Me
                    </div>
                    <br>
                    <div class="form-group">
                        <input type="submit" value="Login" class="btn center login_btn">
                    </div>
                </form>
            </div>
            <div class="card-footer">
                <div class="d-flex justify-content-center links">
                    Don't have an account?<a href="#">Sign Up</a>
                </div>
                <div class="d-flex justify-content-center">
                    <a href="#">Forgot your password?</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
