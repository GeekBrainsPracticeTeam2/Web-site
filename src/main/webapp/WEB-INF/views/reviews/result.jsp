<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>

	<jsp:body>

		<header id="myCarousel" class="carousel slide">
		<!-- Indicators -->
		<div class="container">
			<h1>Result</h1>
				${review.name}
				${review.subject}
				${review.email}
				${review.message}
				${tmplist}
			<a href="/reviews">Submit another message</a>
		</div>

	</jsp:body>

</page:template>