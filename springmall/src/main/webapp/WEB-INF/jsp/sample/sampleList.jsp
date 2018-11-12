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
					<td>${sId} �� �α�����..</td>
					<td><a href="/sample/logoutSample"><button class="btn btn-primary">�α׾ƿ�</button></td> 
				</c:if>
				<c:if test="${sId == null}">
					<td align="center"><a href="/sample/loginSample"><button class="btn btn-primary">�� �� ��</button></td>
					<td align="center"><a href="/sample/addSample"><button class="btn btn-primary">ȸ �� �� ��</button></a></td>
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
				<tr>		
					<td><c:if test="${startRow >9}">
						<a href="/sample/sampleList?startRow=${startRow -10}"><button>�������� </button></a>
					</c:if>
					</td> 
					<td></td><td></td><td></td>
					<td><c:if test="${startRow < totalCount-10}">
						<a href="/sample/sampleList?startRow=${startRow +10}"><button type="button" style="float: right;">��������</button></a>
					</c:if></td>
				</tr>
				<tr>
              	  <td colspan="3"></td>
                	<td><a href="/sample/loginSample"><button class="btn btn-primary">�� �� ��</button></td>
                	<td><a href="/sample/addSample"><button class="btn btn-success">���� �߰�</button></a></td>
           		 </tr>
	</table>
</body>
</html>