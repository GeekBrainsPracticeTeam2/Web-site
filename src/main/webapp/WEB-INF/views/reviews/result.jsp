<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>The company was founded 28.03.2017</title>

<spring:url value="/resources/core/css/hello.css" var="coreCss" />
<spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />
</head>
<body data-spy="scroll" data-target=".bs-docs-sidebar">

<c:url value="/index.html" var="index"/>
<c:url value="/about.html" var="about"/>
<c:url value="/contact.html" var="contact"/>
<c:url value="/reviews.html" var="reviews"/>
<c:url value="/tech.html" var="tech"/>
<div class="wrapper">
	<div class="navbar navbar-inverse">
	    <div class="navbar-inner">
        <div class="container">
			<div class="row">
				<ul class="nav navbar-nav">
				<li>
					<a href="${index}">Main</a>
				</li>
				<li>
					<a href="${about}">Company</a>
				</li>
				<li>
					<a href="${tech}">Technical support</a>
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
	 <h1>Result</h1>
        <p th:text="'name: ' + ${review.name}" />
        <p th:text="'subject: ' + ${review.subject}" />
        <p th:text="'email: ' + ${review.email}" />
        <p th:text="'message: ' + ${review.message}" />
        <a href="/reviews">Submit another message</a>
</div>
<spring:url value="/resources/core/css/hello.js" var="coreJs" />
<spring:url value="/resources/core/css/bootstrap.min.js" var="bootstrapJs" />

<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<div style="background-color: #fff; border: 1px solid #ccc; box-shadow: 2px 2px 3px rgba(0, 0, 0, 0.2); position: absolute; left: 0px; top: -10000px; transition: visibility 0s linear 0.3s, opacity 0.3s linear; opacity: 0; visibility: hidden; z-index: 2000000000;">
<div style="width: 100%; height: 100%; position: fixed; top: 0px; left: 0px; z-index: 2000000000; background-color: #fff; opacity: 0.05;  filter: alpha(opacity=5)">
</div>
<div class="g-recaptcha-bubble-arrow" style="border: 11px solid transparent; width: 0; height: 0; position: absolute; pointer-events: none; margin-top: -11px; z-index: 2000000000;">
</div>
<div class="g-recaptcha-bubble-arrow" style="border: 10px solid transparent; width: 0; height: 0; position: absolute; pointer-events: none; margin-top: -10px; z-index: 2000000000;">
</div>
<div style="z-index: 2000000000; position: relative;">
<iframe src="https://www.google.com/recaptcha/api2/bframe?hl=ru&amp;v=r20170320152239&amp;k=6LeUOxETAAAAAACGG3uEvIuQN2HApdetB3E0dtEI#ag0672u2nxi" title="check
</div>
</div>

</body>
</html>