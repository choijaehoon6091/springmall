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
	<H1 class="text-center">SampleList</H1>
	<table class="table table-dark">
		<thead>
			<tr>
				<td colspan="3"></td>
				<c:if test="${sId != null}">
					<td>${sId} 님 로그인중..</td>
					<td><a href="/sample/logoutSample"><button class="btn btn-primary">로그아웃</button></td> 
				</c:if>
				<c:if test="${sId == null}">
					<td align="center"><a href="/sample/loginSample"><button class="btn btn-primary">로 그 인</button></td>
					<td align="center"><a href="/sample/addSample"><button class="btn btn-primary">회 원 가 입</button></a></td>
				</c:if>
			</tr>
			<tr class="info" align="center">
				<td>no</td>
				<td>id</td>
				<td>pw</td>
				<td>DELETE</td>
				<td>UPDATE</td>
			</tr>	
			<tr>
				<td> SAMPLE NO </td>
				<td> SAMPLE ID </td>
				<td> SAMPLE PW </td>
				<td> DELETE </td>
				<td> UPDATE </td>
			</tr>
		</thead>
		<tbody>
			<!-- model 안의  sampleList 가져와서 사용  -->
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
				<tr>		
					<td><c:if test="${startRow >9}">
						<a href="/sample/sampleList?startRow=${startRow -10}"><button>＜＜이전 </button></a>
					</c:if>
					</td> 
					<td></td><td></td><td></td>
					<td><c:if test="${startRow < totalCount-10}">
						<a href="/sample/sampleList?startRow=${startRow +10}"><button type="button" style="float: right;">다음＞＞</button></a>
					</c:if></td>
				</tr>
				<tr>
              	  <td colspan="3"></td>
                	<td><a href="/sample/loginSample"><button class="btn btn-primary">로 그 인</button></td>
                	<td><a href="/sample/addSample"><button class="btn btn-success">샘플 추가</button></a></td>
           		 </tr>
	</table>
</body>
</html>