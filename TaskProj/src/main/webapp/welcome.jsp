<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>PPM</title>
        
        <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet" />
    
    <link href="resources/css/styles.css" rel="stylesheet" />
    </head>
    <body id="page-top">
       	<jsp:include page="menu.jsp"/>
        <!-- Header-->
        <jsp:include page="header.jsp"/>
        <!-- Content section 1-->
        <section>
            <div class="container px-5">
                <div class="row gx-5 align-items-center">
                    <div class="col-lg-6 order-lg-2">
                        <div class="p-5"><img class="img-fluid" src="resources/images/mainimg1.jpg"/></div>
                    </div>
                    <div class="col-lg-6 order-lg-1">
                        <div class="p-5">
                            <h1 class="display-4" align="center">바야흐로 반려식물의 시대!</h1>
                            <p align="center">반려식물은 이미 주류 반려생물로서, 점점 많은 사람들의 삶에 함께하는 중입니다</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Content section 2-->
        <section>
            <div class="container px-5">
                <div class="row gx-5 align-items-center">
                    <div class="col-lg-6">
                        <div class="p-5" align="center"><img class="img-fluid rounded-circle" src="resources/images/mainimg2.jpg"/></div>
                    </div>
                    <div class="col-lg-6">
                        <div class="p-5">
                            <h2 class="display-4" align="center">식물은 어렵지 않아요!</h2>
                            <p align="center">저희 PPM은 입문자들을 위해, 기르기 쉬운 위주로 추천드립니다!</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Content section 3-->
        <!-- <section>
            <div class="container px-5">
                <div class="row gx-5 align-items-center">
                    <div class="col-lg-6 order-lg-2">
                        <div class="p-5"><img class="img-fluid" src="resources/images/mainimg3.jpg"/></div>
                    </div>
                    <div class="col-lg-6 order-lg-1">
                        <div class="p-5">
                            <h2 class="display-4" align="center">지금 함께하세요!</h2>
                            <p align="center">걱정하지 마시고, 한번 키워보세요!</p>
                        </div>
                    </div>
                </div>
            </div>
        </section> -->
        
        <jsp:include page="footer.jsp"/>
    </body>
</html>
