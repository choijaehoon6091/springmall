<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>sampleList</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<H1>SampleList</H1>
	<table class="table">
		<thead>
			<tr>
				<td> SAMPLE NO </td>
				<td> SAMPLE ID </td>
				<td> SAMPLE PW </td>
				<td> DELETE </td>
				<td> UPDATE </td>
			</tr>
		</thead>
		<tbody>
			<!-- model ����  sampleList �����ͼ� ���  -->
			<c:forEach var="sample" items="${sampleList}"> 
				<tr>
					<td>${sample.sampleNo}</td>
					<td>${sample.sampleId}</td>
					<td>${sample.samplePw}</td>
					<td><a href="/sample/removeSample?sampleNo=${sample.sampleNo}">DELETE</a></td>
					<td><a href="/sample/modifySample?sampleNo=${sample.sampleNo}">UPDATE</a></td>
				</tr>
			</c:forEach>					
		</tbody>		
	</table>
</body>
</html>