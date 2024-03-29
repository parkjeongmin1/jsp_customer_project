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
<div class="ct_view">
 
  <div class="ct_view1"><h1>고객 상세정보</h1></div>
  <dl class="delete">
              <dt><a onclick="chkDelete(${customer.id}); return false;">삭제하기</a></dt>
  </dl>
  <div class="ct_title">
    <div class="ct_img_bg">
      <div class="ct_img">
      <c:if test="${customer.img != null}">
         <div class="cont"><img src="${customer.img}" alt="업로드 사진" style="width:300px; height:300px; margin-right: 20px;"></div>
      </c:if></div>
    </div>
    <div class="sub_title">
            <dl>
              <dt>이름: ${customer.name}</dt>
            </dl>    
            <dl>
              <dt>주소: ${customer.address}</dt>
            </dl>
            <dl>
              <dt>핸드폰: ${customer.phone}</dt>
            </dl>
            <dl>
              <dt>성별: ${customer.gender}</dt>
            </dl>
            <dl>
              <dt>나이: ${customer.age}</dt>
            </dl>     
            <dl>
              <dt>포인트: ${customer.point}</dt>
            </dl>
            <dl>
              <dt>등급: ${customer.grade}</dt>
            </dl>
    </div>
  </div>
 
  
  <div class="bt_wrap">
          <a href="index" class="on">목록</a>
          <a href="edit?id=${customer.id}">수정</a>
  </div>
  
    <script>
    //request 객체에 error 가 있을 경우 에러메세지 출력
    <c:if test="${error != null}">
      alert("${error}");
    </c:if>
    
    //쿼리스트링에 error가 있을 경우 에러메세지 출력
    <c:if test="${param.error != null}">
    alert("${param.error}");
    </c:if>
    </script>
    <script type="text/javascript" src="./js/script.js"></script>
</div>
</body>
</html>