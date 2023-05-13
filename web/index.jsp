<%--
  Created by IntelliJ IDEA.
  User: Joyer
  Date: 2023/5/11
  Time: 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>商店</title>
    <link rel="icon" href="img/favicon.png" type="image/png">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" crossorigin="anonymous">
    <link rel="stylesheet" href="css/page/home.css"/>



</head>
<body>

<nav id="navbar" class="navbar navbar-expand-lg navbar-light bg-dark">
            <a class="navbar-brand text-light" href="#">NERV EVA主题商店</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-tsoggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link text-light" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-light" href="#">所有商品</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-light" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
                            分类
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" style="border-radius: 20px">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit" style="border-radius: 20px">Search</button>
                </form>
            </div>
</nav>

<div id="main_page" class="w-100">
    <%--  首页图片  --%>
    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel" style="margin: 20px 10% 20px 10%;">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner shadow"style="border-radius: 16px;">
                    <div class="carousel-item active">
                        <img src="img/hand/img_head.jpg" class="d-block w-100" alt="..." >
                        <div class="carousel-caption d-none d-md-block">
                            <h1>NERV 自营线上商店</h1>
                            <p>能买到不少自产自销的产品</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="img/hand/img_head_1.jpg" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h1>NERV 自营线上商店</h1>
                            <p>超多实惠商品！</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="img/hand/img_head_2.jpg" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h1>NERV 自营线上商店</h1>
                            <p>三号机大放价！</p>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-target="#carouselExampleCaptions" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-target="#carouselExampleCaptions" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </button>
            </div>

    <div class="container">
        <div class="row">
            <div class="col text-center">
                <img class="mx-auto floating-image"
                     src="img/ic/scrolldown.svg"
                     style="width: 50px;justify-content: center;"
                     onclick="touch_scrollToNextView()">
            </div>
        </div>
    </div>

    <div style="margin: 180px 70px 100px 70px">
        <h1 id="second" class="text-center responsive-font-sizestrue">"我们不生产橙汁，我们只是&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;人类补完计划的搬运工"</h1>
        <h3 class="text-muted text-right">----匿名&nbsp;&nbsp;</h3>
    </div>

    <!-- 页面内容 -->
    <div class="container mt-8" style="margin-bottom: 100px">
        <div class="row row-cols-1 row-cols-md-4 ratio ratio-4x3">
            <div class="col mb-4">
                <div class="card shadow h-100 zoom-effect d-flex flex-column">
                    <div class="ratio ratio-4x3">
                        <img src="img/product/product_1.jpg" class="card-img-top" alt="...">
                    </div>
                    <div class="card-body d-flex flex-column justify-content-between">
                        <h5 class="card-title">NERV 自主生产高浓度 LCL 500ml</h5>
                        <p class="card-text text-danger text-right">300 ￥</p>
                    </div>
                </div>
            </div>
            <div class="col mb-4">
                <div class="card shadow h-100 zoom-effect d-flex flex-column">
                    <div class="ratio ratio-4x3">
                        <img src="img/product/product_4.png"class="card-img-top" alt="...">
                    </div>
                    <div class="card-body d-flex flex-column justify-content-between">
                        <h5 class="card-title">NERV 自主生产 EVA控制插入栓</h5>
                        <p class="card-text text-danger text-right">300 ￥</p>
                    </div>
                </div>
            </div>
            <div class="col mb-4">
                <div class="card shadow h-100 zoom-effect d-flex flex-column">
                    <div class="ratio ratio-4x3">
                        <img src="img/product/product_5.jpg" class="card-img-top" alt="...">
                    </div>
                    <div class="card-body d-flex flex-column justify-content-between">
                        <h5 class="card-title">NERV 自主生产 EVA量产机 香香处刑神器</h5>
                        <p class="card-text text-danger text-right">8000 ￥</p>
                    </div>
                </div>
            </div>
            <div class="col mb-4">
                <div class="card shadow h-100 zoom-effect d-flex flex-column">
                    <div class="ratio ratio-4x3">
                        <img src="img/product/product_3.png" class="card-img-top" alt="...">
                    </div>
                    <div class="card-body d-flex flex-column justify-content-between">
                        <h5 class="card-title">[超低价出售]NERV 自主生产 女士自用原版原漆 三号机</h5>
                        <p class="card-text text-danger text-right">200 ￥</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row row-cols-1 row-cols-md-4 ratio ratio-4x3">
            <div class="col mb-4">
                <div class="card shadow h-100 zoom-effect d-flex flex-column">
                    <div class="ratio ratio-4x3">
                        <img src="img/product/product_1.jpg" class="card-img-top" alt="...">
                    </div>
                    <div class="card-body d-flex flex-column justify-content-between">
                        <h5 class="card-title">NERV 自主生产高浓度 LCL 500ml</h5>
                        <p class="card-text text-danger text-right">300 ￥</p>
                    </div>
                </div>
            </div>
            <div class="col mb-4">
                <div class="card shadow h-100 zoom-effect d-flex flex-column">
                    <div class="ratio ratio-4x3">
                        <img src="img/product/product_4.png"class="card-img-top" alt="...">
                    </div>
                    <div class="card-body d-flex flex-column justify-content-between">
                        <h5 class="card-title">NERV 自主生产 EVA控制插入栓</h5>
                        <p class="card-text text-danger text-right">300 ￥</p>
                    </div>
                </div>
            </div>
            <div class="col mb-4">
                <div class="card shadow h-100 zoom-effect d-flex flex-column">
                    <div class="ratio ratio-4x3">
                        <img src="img/product/product_5.jpg" class="card-img-top" alt="...">
                    </div>
                    <div class="card-body d-flex flex-column justify-content-between">
                        <h5 class="card-title">NERV 自主生产 EVA量产机 香香处刑神器</h5>
                        <p class="card-text text-danger text-right">8000 ￥</p>
                    </div>
                </div>
            </div>
            <div class="col mb-4">
                <div class="card shadow h-100 zoom-effect d-flex flex-column">
                    <div class="ratio ratio-4x3">
                        <img src="img/product/product_3.png" class="card-img-top" alt="...">
                    </div>
                    <div class="card-body d-flex flex-column justify-content-between">
                        <h5 class="card-title">[超低价出售]NERV 自主生产 女士自用原版原漆 三号机</h5>
                        <p class="card-text text-danger text-right">200 ￥</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <h1 class="text-center" style="margin: 100px 70px">还有更多产品，碇司令正在考虑要不要卖！</h1>
</div>
<%--尾部标签--%>
<footer class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <!-- 导航链接 -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="#">首页</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">关于我们</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">联系我们</a>
            </li>
        </ul>
        <!-- 网站信息 -->
        <span class="navbar-text ml-auto text-center">
          版权所有 &copy; 2023  NERV ®
        </span>
    </div>
</footer>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="js/ui/main_page.js"></script>
<script src="js/page/home.js"></script>
</body>
</html>

