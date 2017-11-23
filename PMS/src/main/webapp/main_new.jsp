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
         
    <SCRIPT language="javascript">
	<!--
	 function Go(url) {
	 //아래에서 width와  height 수치로 새창의 크기 조절,left와 top으로 위치 조절
	  window.open(url, "mywin1", "width=1200, height=353, left=30, top=30, location=no, menubar=0, toolbar=0,resizable=no,copyhistory=no,directories=0,")
	 }
	//--></SCRIPT>  
	</head>

<body>

<c:set var="userId" value="${userId}" scope="session"></c:set>
<c:set var="userName" value="${userName}" scope="session"></c:set>
<c:set var="eamil" value="${eamil}" scope="session"></c:set>
<c:set var="userGroupName" value="${userGroupName}" scope="session"></c:set>


<div id="container">
  <div class="header">
   <!--top include 시작-->
    <div class="top">
    <div class="service-area">
        <!--title+bookmark시작-->
            <div class="service-area ci-box">
            <a href="${root}/main_new.jsp" target="_parent"><img src="${root}/resources/images/LogInViewImages/login-logo.png" style="border:0"></a>  
            </div>
        <!--title+bookmark끝-->
       
        <!--root시작-->
        <div class="service-area root-box">
            <div class="service-area root">Mian > Main Status</div>
        </div>
        <!--root끝-->
         <!--bookmark 시작-->
            <div class="service-area logout"><span class="aimicon icon-logout"></span></div>
        <!--bookmark 끝-->
         <!--bookmark 시작-->
            <div class="service-area bookmark-list"><span class="aimicon icon-bookmark"></span></div>
        <!--bookmark 끝-->
       
         <!--user 시작-->
        <div class="service-area user-box">
             <div class="service-area user-icon"></div><div class="user-input" id=s0 onclick=tgl(0) style=" cursor;pointer" ><a href="#"><input type="text" class="form-control-user" value="${userId}" readonly style="width:100%"></a>
            <!--사용자 환경설정시작-->
            <div class="info-box" id=d0 style=display:none> 
             <table>
             <tr>
             <td class="id">${userId}
             </td>
             </tr>
             <tr>
             <td class="name">${userName}
             </td>
             </tr>
              <tr>
             <td class="org">${userGroupName}
             </td>
             </tr>
             <tr>
             <td class="email">${email}
             </td>
             </tr>
             <tr>
             <td><hr>
             </td>
             </tr>
             <tr>
             <td>
                <span class="newtab">Open New Window<br></span>
                <span class="newtab-meg">Please button press on or off!</span>
                  <!--in or off-->
                  <ul class="ch">
                  <li class="active"><a href="#">On</a></li>
                  <li><a href="#">Off</a></li>
                  </ul>
                  <!--in or off-->
             </td>
             </tr>
              <tr>
             <td><hr>
             </td>
             </tr>
             <tr>
             <td>
             <button type="button" class="btn btn_searcher">Change user Info</button>
             </td>
             </tr>
             </table>                
            </div>
           <script>
           function tgl(v){ //타겟의 id넘버를 받아서, 레이어를 토글하는 함수
            var a=document.getElementById('d'+v).style.display; //레이어의 display 속성
            document.getElementById('d'+v).style.display=(a=='none')?'block':'none'; //속성이 보임이면 감춤, 감춤이면 보임으로 레이어의 display 속성을 토글
           }
          </script>
             <!--사용자 환경설정끝-->                    
            </div>
        </div>
        <!--user 끝-->
     </div>
    
     <div class="menu-area">
        <!--logo시작-->
         <div class="bookmark"><img src="images/aim/icon-yw-star.png" width="18" height="18"> </div>
         <div class="title-box" >Main Status</div>
        <!--logo끝-->
       
        <!--메뉴시작-->
        <div class="menu-box">
             <div class="dropdown">
                 <ul>
                  <li class="menu01_c">
                      <a href="#">WIP</a>
                        <ul style="width:125px">
                          <li class="sub01"><a href="wipall.html" target="_parent">WIP ALL</a>
                          </li>
                          <li class="sub01"><a href="wip.html" target="_parent">WIP</a>
                          </li>
                          <li class="sub01"><a href="lotlist.html" target="_parent">Lot List</a>
                          </li>
                        </ul>
                    </li>
                    <li class="menu02">
                      <a href="#">Inventory</a>
                          <ul style="width:125px">
                          <li class="sub01"><a  href="inventoryall.html" target="_parent">Inventory All</a>
                          </li>
                          <li class="sub01"><a href="inventory.html" target="_parent">Inventory</a>
                          </li>
                        </ul>
                    </li>
                    <li class="menu03">
                      <a href="#">Production</a>
                          <ul style="width:180px">
                          <li class="sub01"><a  href="movementalll.html" target="_parent">Movement All</a>
                          </li>
                          <li class="sub01"><a href="movement.html" target="_parent">Movement</a>
                          </li>
                          <li class="sub01 disabled">Ship
                          </li>
                          <li class="sub01 disabled">Rework
                          </li>
                          <li class="sub01 disabled">Hold
                          </li>
                          <li class="sub01"><a href="lothistory.html" target="_parent">Lot History</a>
                          </li>
                          <li class="sub01"><a href="glasshistory.html" target="_parent">Glass History</a>
                          </li>
                          <li class="sub01 disabled">Production All Summary
                          </li>
                          <li class="sub01 disabled">Production Summary
                          </li>
                        </ul>
                    </li>
                    <li  class="menu04">
                      <a href="#">Yield</a>
                          <ul style="width:125px">
                          <li class="sub01 disabled">Yield All
                          </li>
                           <li class="sub01 disabled">Yield
                          </li>
                        </ul>                      
                    </li>
                    <li  class="menu05">
                      <a href="#">TAT</a>
                          <ul style="width:125px">
                          <li class="sub01 disabled">TAT All
                          </li>
                           <li class="sub01 disabled">TAT
                          </li>
                        </ul>                      
                    </li>
                    <li  class="menu06">
                      <a href="#">Geneology</a>
                          <ul style="width:140px">
                          <li class="sub01 disabled">Lot Geneology
                          </li>
                           <li class="sub01 disabled">Glass Geneology
                          </li>
                        </ul>                      
                    </li>
                    <li  class="menu07">
                      <a href="#">Equipment</a>
                          <ul style="width:170px">
                          <li class="sub01 disabled">Equipment All
                          </li>
                           <li class="sub01 disabled">Equipment Utilization
                          </li>
                          <li class="sub01 disabled">Equipment Automation
                          </li>
                           <li class="sub01 disabled">Equipment List
                          </li>
                          <li class="sub01 disabled">Equipment History
                          </li>
                        </ul>                      
                    </li>
                  </ul>
              </div>
        </div><!--메뉴끝-->
    </div><!--메뉴area끝-->
  </div><!--top include 끝-->
    
    <!--bodyinclude 시작-->
  <div class="body">
   <!--본문 시작-->
   <div class="contents">
   <table class="layout" style="height:100%" >
   <tr >
   <td style="width:33.3333%;">
    <!--조건+jq 그리드 outline 시작-->
         <div class="box-grap">
          <a href="wipall.html" target="_parent"><span class="grap1"></span></a>
         </div><!--조건+jq 그리드 outline 끝-->
    </td>
    <td style="width:33.3333%">
         <div class="box-grap" >
          <a href="inventoryall.html" target="_parent"><span class="grap2"></span></a>
         </div><!--조건+jq 그리드 outline 끝-->
    </td>
    <td style="width:33.3333%">
         <div class="box-grap" >
          <a href="movementalll.html" target="_parent"><span class="grap3"></span></a>
         </div><!--조건+jq 그리드 outline 끝-->

       </td>
       </tr>
   <tr >
   <td style="width:33.3333%;">
    <!--조건+jq 그리드 outline 시작-->
         <div class="box-grap">
          <a href="wipall.html" target="_parent"><span class="grap4"></span></a>
         </div><!--조건+jq 그리드 outline 끝-->
    </td>
    <td style="width:33.3333%">
         <div class="box-grap" >
          <a href="wipall.html" target="_parent"><span class="grap5"></span></a>
         </div><!--조건+jq 그리드 outline 끝-->
    </td>
    <td style="width:33.3333%">
         <div class="box-grap" >
         <a href="wipall.html" target="_parent"> <span class="grap6"></span></a>
         </div><!--조건+jq 그리드 outline 끝-->

       </td>
       </tr>

       </table>
      </div><!--table layout본문 끝-->
    </div> 
  </div> 
</div>  
</body>
</html>
