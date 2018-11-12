<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert form</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(document).ready(()=>{
	    $('#sampleId').blur(()=>{
	        if(!isNaN($('#sampleId').val()) || $('sampleId').val().length < 2){
	            $('#sampleIdHelper').text('id는 2자이상 문자만 입력하세요');
	            $('#sampleId').focus();
	        }else{
	            $('#sampleIdHelper').text('');
	            $('#PW').focus();
	        }
	    });
	  	$('#addBtn').click(()=>{
	        if(!isNaN($('#samplePw').val()) || $('samplePw').val().length >= 10){
	            $('#samplePwHelper').text('pw은 10자이하 문자만 입력하세요');
	            $('#samplePw').focus();
	        }else{
	            $('#samplePwHelper').text('');
	            $('#addSampleForm').submit();          
	        }
	    });
</script>
</head>
<body>
    <h2>샘플 추가</h2>
    <form id="addSampleForm" action="${pageContext.request.contextPath}/sample/addSample" method="post" enctype="multipart/form-data">
        <table class="table table-dark">
            <tr>
                <td>ID</td>
                <td><input type="text" name="sampleId"/> <span id="sampleIdHelper"></span></td>
            </tr>
            <tr>
                <td>PW</td>
                <td><input type="text" name="samplePw"/> <span id="samplePwHelper"></span></td>
            </tr>
            <tr>
                <td>FILE</td>
                <td><input type="file" name="multipartfile"/></td>
            </tr>
            <tr>
                <td colspan="2"><button id="addBtn" class="btn btn-success">추가 완료</button></td>
            </tr>
        </table>
    </form>
</body>
</html>