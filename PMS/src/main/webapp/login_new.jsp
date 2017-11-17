<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Welcome to MOM2</title>
    <link rel="stylesheet" type="text/css" href="${root}/resources/css/images/LogInCss/common.css"/>
    <link rel="stylesheet" type="text/css" href="${root}/resources/css/images/LogInCss/component.css"/>
    <link rel="stylesheet" type="text/css" href="${root}/resources/css/images/LogInCss/common-back.css"/>   
    <link rel="stylesheet" type="text/css" href="${root}/resources/css/images/LogInCss/component-back.css"/>    
    
    <link rel="shortcut icon" href="${root}/resources/images/LogInViewImages/mom2.png">    
	</head>

<body>

<div class="login-body">
    <div class="login">
          <div class="login-box">
            <div class="login-inner">
                <div class="logo-area">
                  <img src="${root}/resources/images/LogInViewImages/login-logo.png" > 
                </div>  
                <form action="${root }/main/login.do" id="addMemberForm" method="post" onsubmit="return login(this)">
                <div class="inner-area">
                  <!--LANGUAGE-->
                  <div class="info-area">
                   <span class="lang">Language
                   </span>  
                   <span class="lang-box">
                   <select id="select"   class="form-control-login" >
                   <option>Korean</option>
                   <option>English</option>
                   <option>China</option>
                   </select>
                  </span>  
                  </div>  
                  <!-- USERID-->
                  <div  class="info-area">
                   <span class="ud">User ID
                  </span>  
                   <span  class="ud-box">
                   <input type="text" name="userId" class="form-control-login" >
                  </span>  
                  </div>  
                  <!--PASSWORD-->
                  <div  class="info-area">
                   <span class="pw">Password
                  </span>  
                   <span class="pw-box">
                   <input type="password" name="password" class="form-control-login" >
                  </span>  
                  </div> 
                   <!--Remember me-->
                  <div class="checkbox" style="width:290px;font-size:.8em;color:#1f77a4;">
                    <label style="display:inline-block;font-weight:300;float:right;margin-top:0px;">
                      <input type="checkbox">KEEP ME SIGNED IN
                    </label>
                 </div> 
                 <!--button-->                 
                  <div class="butn-row" style="margin-top:-8px;width:300px;">
                    <button type="submit" id="login"  class="btn btn-submit btn-sm" style="width:100%;font-size:1.1em;font-weight:300">&#x2714;&nbsp;Login</button>
                    </div> 
                </div> 
                </form>
            </div>             
          </div>
              <!--footer-->     
           <div class="login-footer">(C) Copyright  MES Software 2014 <span style="font-weight:bold">aim systems,Inc.</span>  All rights reserved.</div>
     </div>  
</div>  

</body>
</html>
