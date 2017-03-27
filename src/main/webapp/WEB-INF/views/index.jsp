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

<article itemscope itemtype="http://schema.org/Article">
	<header class="jumbotron subhead" id="overview">
	<div class="container">
	<h1 itemprop="name">Poduct</h1>
	</div>
	</header>


	<hr>
	<footer>
		<p>&copy; ru.koshevoy 2017</p>
	</footer>
	</div>
</article>
<spring:url value="/resources/core/css/hello.js" var="coreJs" />
<spring:url value="/resources/core/css/bootstrap.min.js" var="bootstrapJs" />

<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

</body>
</html>