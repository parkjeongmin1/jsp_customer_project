<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/style.css"/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
		<div class="customer_title">
			<strong>고객정보 수정</strong>
		</div>
	<div class="customer_wrap all">
		<div class="customer_write_wrap">
			<form name="frm" method="post" action="update?id=${customer.id}" enctype="multipart/form-data">
				<div class="customer_write">
					<div class="name dd">
					  <div class="row">
						<div class="col-4">
						   <label for="name" id="name">이름</label>
						</div>
						<div class="col-7">
						  <input type="text" id="name" name="name" maxlength="10" value="${customer.name }" />
						</div>
						<div class="col-1"></div>
					
				      </div>
				   </div>
		   <div class="address dd">
		     <div class="row">
		       <div class="col-4">
		         <label for="address" id="address">주소</label>
		       </div>
		       <div class="col-7">
		         <input type="text" name="address" maxlength="50" value="${customer.address }"/>
		       </div>
		       <div class="col-1"></div>
		     </div>   
           </div>
           <div class="phone dd" >
             <div class="row">
               <div class="col-4">
                 <label for="phone" id="phone" >핸드폰</label>
               </div>
               <div class="col-7">
                 <input type="text" name="phone" maxlength="20" value="${customer.phone}" />
               </div>
               <div class="col-1"></div>
             </div>
           </div>
           <div class="gender dd" >
             <div class="row">
               <div class="col-4">
                 <label for="gender" id="gender" >성별</label>
               </div>
               <div class="col-7" style="display: flex; padding-left:40px;">
                 <input type="radio" name="gender" value="${customer.gender}" style="margin-right: 5px;"/>남
                 <input type="radio" name="gender" value="${customer.gender}" style="margin-left: 5px; margin-right: 5px;"/>녀
               </div>
               <div class="col-1"></div>
             </div>
     
           </div>
           <div class="age dd">
             <div class="row">
               <div class="col-4">
                 <label for="age" id="age" >나이</label>
               </div>
               <div class="col-7">
                 <input type="text" name="age" value="${customer.age}"/>
               </div>
               <div class="col-1"></div>
             </div>   
           </div> 
           <div class="point dd">
             <div class="row">
               <div class="col-4">
                 <label for="point" id="point" >포인트</label>
               </div>
               <div class="col-7">
                 <input type="text" name="point" value="${customer.point}"/>
               </div>
               <div class="col-1"></div>
             </div>
           </div>
           <div class="grade dd">
           
             <div class="row">
               <div class="col-4">
                 <label for="grade" id="grade" >등급</label>
               </div>
               <div class="col-7">
                 <input type="text" name="grade" value="${customer.grade}"/>
               </div>
               <div class="col-1"></div>
             </div>
           </div>  
					<div style="padding-top:20px;">
						<label style="font-size: 1.4rem; padding-right: 20px;" for="file">사진 업로드</label>
						<input type="file" name="file" id="file" />
						<br />
						<c:if test="${customer}.img != null}">
						<img src="${customer.img }" alt="업로드 이미지" width="100" />
						</c:if>
						<input type="hidden" name="origin_file" value="${customer.img}" />
					</div>
				</div>
			</form>
			<div class="bt_wrap bt">
				<a onclick = "chkForm(); return false;" class="on">수정</a>
				<a href="index">취소</a>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="./js/script.js"></script>
	
</body>
</html>