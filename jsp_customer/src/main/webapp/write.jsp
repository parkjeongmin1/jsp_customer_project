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
   <div class="customer_wrap">
     <div class="customer_title">
       <strong >고객 등록하기</strong>
     </div>
     <div class="customer_write_wrap">
       <form name="frm" method="post" action="insert" enctype="multipart/form-data">
         <div class="customer_write">
          <div class="all_info">
           <div class="name">
            <div class="row g-3 align-items-center">
  <div class="col-4">
    <label for="inputname6" class="col-form-label">이름</label>
  </div>
  <div class="col-7">
    <input type="text" id="inputname6" class="form-control" name="name">
  </div>
  <div class="col-1">
  </div>
</div>
           </div>
           <div class="address">
             <div class="row g-3 align-items-center">
  <div class="col-4">
    <label for="inputaddress6" class="col-form-label">주소</label>
  </div>
  <div class="col-7">
    <input type="text" id="inputaddress6" class="form-control" name="address">
  </div>
  <div class="col-1">
  </div>
</div>
</div>
             <div class="phone">
               <div class="row g-3 align-items-center">
  <div class="col-4">
    <label for="inputphone6" class="col-form-label">핸드폰</label>
  </div>
  <div class="col-7">
    <input type="text" id="inputphone6" class="form-control" name="phone">
  </div>
  <div class="col-1">
  </div>
</div>
           </div>
           <div class="gender"> 
            <div class="row g-3 align-items-center">
  <div class="col-4">
    <label for="inputphone6" class="col-form-label">성별</label>
  </div>
  <div class="col-7" style="display: flex;">
    <div class="form-check" style="margin-left: 20px; margin-right: 20px;">
               <input class="form-check-input" type="radio" name="gender" id="man" value="남">
               <label class="form-check-label" for="남">
                남
               </label>
            </div>
    <div class="form-check">
              <input class="form-check-input" type="radio" name="gender" id="woman" value="녀" checked>
              <label class="form-check-label" for="녀">
               녀
              </label>
            </div>
  </div>
  <div class="col-1">
  </div>
</div>
          </div>
           <div class="age">
             <div class="row g-3 align-items-center">
  <div class="col-4">
    <label for="inputage6" class="col-form-label">나이</label>
  </div>
  <div class="col-7">
    <input type="text" id="inputage6" class="form-control" name="age">
  </div>
  <div class="col-1">
  </div>
</div>
           </div>
           <div class="point">
              <div class="row g-3 align-items-center">
  <div class="col-4">
    <label for="inputpoint6" class="col-form-label">포인트</label>
  </div>
  <div class="col-7">
    <input type="text" id="inputpoint6" class="form-control" name="point">
  </div>
  <div class="col-1">
  </div>
</div>
           </div> 
           <div class="grade">
             <div class="row g-3 align-items-center">
  <div class="col-4">
    <label for="inputgrade6" class="col-form-label">등급</label>
  </div>
  <div class="col-7">
    <input type="text" id="inputgrade6" class="form-control" name="grade">
  </div>
  <div class="col-1">
  </div>
</div>
           </div> 
          </div>
           </div>
           <div style="text-align-last:center; margin-top: 20px;">
             <label style="font-size: 1.4rem;" for="file">사진 업로드</label>
             <input type="file" name="file" id="file" />
           </div>
       </form>
        </div>
       <div class="bt_wrap">
         <a onclick="chkForm(); return false;" class="on">등록</a>
         <a href="index">취소</a>
       </div>   
       </div>  
    <script type="text/javascript" src="./js/script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>