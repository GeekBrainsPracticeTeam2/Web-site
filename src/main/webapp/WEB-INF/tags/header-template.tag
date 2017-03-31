<!DOCTYPE html>
<%@tag description="Template Site tag" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<c:url value="/index.html" var="index"/>
<c:url value="/about.html" var="about"/>
<c:url value="/contact.html" var="contact"/>
<c:url value="/reviews.html" var="reviews"/>
<c:url value="/tech.html" var="tech"/>


<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html"><spring:message code="navMenu.home"/></a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                   <div class="container">
                           <ul class="nav navbar-nav">
                           <li>
                           <a href="${index}">Main</a>
                           </li>
                           <li>
                           <a href="${about}">Company</a>
                           </li>
                           <li>
                           <a href="${tech}">Technical assistance</a>
                           </li>
                           <li>
                           <a href="${contact}">Contact</a>
                           </li>
                           <li>
                           <a href="${reviews}">Reviews</a>
                           </li>
                           </ul>
                       </div>
            </div>
        </div>

    </div>
    <!-- /.container -->
</nav>