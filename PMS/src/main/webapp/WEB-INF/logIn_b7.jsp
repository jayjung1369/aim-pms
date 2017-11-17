<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link href="css/common.css" rel="stylesheet">
<link href="css/component.css" rel="stylesheet">
<link rel="shortcut icon" href="../images/aim/mom2.png">    
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Welcome to MOM2</title>
</head>
<body>
<div class="login-body">
    <div class="login">
          <div class="login-box">
            <div class="login-inner">
                <div class="logo-area">
                  <img src="images/aim/login-logo.png" > 
                </div>  
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
                   <input type="text" class="form-control-login" >
                  </span>  
                  </div>  
                  <!--PASSWORD-->
                  <div  class="info-area">
                   <span class="pw">Password
                  </span>  
                   <span class="pw-box">
                   <input type="password" class="form-control-login" >
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
                    <button type="button" class="btn btn-submit btn-sm" style="width:100%;font-size:1.1em;font-weight:300">&#x2714;&nbsp;Login</button>
                    </div> 
                </div> 
            </div>             
          </div>
              <!--footer-->     
           <div class="login-footer">(C) Copyright  MES Software 2014 <span style="font-weight:bold">aim systems,Inc.</span>  All rights reserved.</div>
     </div>  
</div>  
</body>
</html>