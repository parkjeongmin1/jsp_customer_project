<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/style.css"/>
</head>
<body>
   <div class="wrap">  
     <table class="customer_list">
     <caption>
       <h1 style="margin-top: 20px; margin-bottom: 20px;">고객정보관리 시스템</h1>
     </caption>
     <thead>
       <tr>
         <th>순서</th>
         <th>이름</th>
         <th>핸드폰번호</th>
         <th>성별</th>
         <th>등급</th>
       </tr>
       </thead>
       <tbody>
       
       <c:forEach var="customer" items="${customerList}">
          <tr>
            <td>${customer.id}</td>
            <td class="title"><a href="./view?id=${customer.id}">${customer.name}</a></td>
            <td>${customer.phone}</td>
            <td>${customer.gender}</td>
            <td>${customer.grade}</td>
          </tr>
       </c:forEach>
       </tbody>
     </table>
     <div class="bt_wrap bt_list" style="display: flex;">
       <a href="write">고객등록</a>
     </div>
   </div>
   <script>
     //request 객체에 error 가 있을 경우 에러메세지 출력
     //쿼리스트링에 error가 있을 경우 에러메세지 출력(request 객체에 포함되므로)
     <c:if test="${error != null}">
       alert("${error}");
     </c:if>
     
     //쿼리스트링에 error가 있을 경우 에러메세지 출력
     <c:if test="${param.error != null}">
     alert("${param.error}");
     </c:if>
   </script>
   
</body>
</html>