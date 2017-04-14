<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><spring:message code="titre.application" /></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>

<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Buena Vista Medical</a>
		</div>
		<ul class="nav navbar-nav">
			<li><c:url value="/accueil" var="url" /> <a
				href="${url}"> <spring:message code="titre.accueil" />
			</a></li>
			<li><c:url value="/afficherListeCourses" var="url" /> <a
				href="${url}"> <spring:message code="titre.listecourses" />
			</a></li>
			<li><c:url value="/afficherCreationListeCourses" var="url" /> <a
				href="${url}"> <spring:message
						code="titre.creation.elementcourses" />
			</a></li>
			<li><c:url value="/afficherSuppressionListeCourses" var="url" />
				<a href="${url}"> <spring:message
						code="titre.suppression.elementcourses" />
			</a></li>
			</a>
			</li>
			<li><c:url value="/afficherModificationListeCourses" var="url" />
				<a href="${url}"> <spring:message
						code="titre.modification.elementcourses" />
			</a></li>
		</ul>
	</div>
	</nav>

	<table>
		<tbody>
			<tr>
				<td valign="top">
					</td>
				<td valign="top"><tiles:insertAttribute name="principal" /></td>
			</tr>
		</tbody>
	</table>
</body>
</html>