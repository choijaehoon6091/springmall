<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modify form</title>
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
      	$('#modifyBtn').click(()=>{
            if(!isNaN($('#samplePw').val()) || $('samplePw').val().length >= 10){
                $('#samplePwHelper').text('pw은 10자이하 문자만 입력하세요');
                $('#samplePw').focus();
            }else{
                $('#samplePwHelper').text('');
                $('#modifyForm').submit();          
            }
        });
</script>
</head>
<body>
    <h2>Sample수정</h2>
    <form id="modifyForm" action="${pageContext.request.contextPath}/sample/modifySample" method="post">
        <table class="table table-dark">
            <tr>
                <td>NO</td>
                <td><input type="text" name="sampleNo" value="${sample.sampleNo}" readonly="readonly"/></td>
            </tr>
            <tr>
                <td>ID</td>
                <td><input type="text" name="sampleId" value="${sample.sampleId}"/> <span id="sampleIdHelper"></span></td>
            </tr>
            <tr>
                <td>PW</td>
                <td><input type="text" name="samplePw" value="${sample.samplePw}"/> <span id="samplePwHelper"></span></td>
            </tr>
            <tr>
                <td callspan="2"><button id="modifyBtn" class="btn btn-success">수정</button></td>
            </tr>
        </table>
    </form>
</body>
</html>