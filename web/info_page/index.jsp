<%--
  Created by IntelliJ IDEA.
  User: Joyer
  Date: 2023/5/11
  Time: 14:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="icon" href="../img/favicon.png" type="image/png">
    <title>商品页-NERV 自主生产高浓度 LCL 500ml</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/page/info_page.css">

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

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#">Home</a></li>
        <li class="breadcrumb-item"><a href="#">所有商品</a></li>
        <li class="breadcrumb-item active" aria-current="page">商品页</li>
    </ol>
</nav>

<div id="main_page" class="w-100">
    <div id="product_info_div" class="row">
        <div class="col-sm-6">
            <div id="product_img" class="card w-40" style="">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>

                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="../img/product/product_1.jpg" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="../img/product/product_instroduce/product_instroduce.jpg" class="d-block w-100" alt="...">
                        </div>

                    </div>
                    <button class="carousel-control-prev" type="button" data-target="#carouselExampleIndicators" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-target="#carouselExampleIndicators" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </button>
                </div>
            </div>
        </div>
        <div class="col-sm-6">
            <form id="product_info">
                <h1 id="product_name">NERV 自主生产高浓度 LCL</h1>
                <p>选择商品种类</p>
                <div id="product_category" class="btn-toolbar" role="toolbar" aria-label="Button toolbar" style="margin: 20px 0">
                    <div class="btn-group" role="group" aria-label="Button group 1">
                        <button type="button" class="btn  btn-outline-primary">500 ml</button>
                    </div>
                    <div class="btn-group" role="group" aria-label="Button group 2">
                        <button type="button" class="btn  btn-outline-primary">1 L</button>
                    </div>
                    <div class="btn-group" role="group" aria-label="Button group 3">
                        <button type="button" class="btn  btn-outline-primary">5 L</button>
                    </div>
                </div>

                <div class="d-flex flex-column">
                    <div class="row mt-auto">
                        <div class="col">
                            <input type="number"
                                   class="form-control"
                                   id="quantity"
                                   value="1"
                                   style="width: 5em;margin: 20px 0"
                                   oninput="calculatePrice()">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <h2 id="price" class="text-danger">1</h2>
                            <br>
                            <button id="buy_button" type="button" class="btn btn-primary w-100">购买</button>
                        </div>
                    </div>
                </div>

            </form>
        </div>
    </div>


    <div id="product_introduce" class="border" >

        <h1 class="text-center" style="margin:20px 0">人类的肉身其实也属于LCL</h1>
        <p>
            LCL 液是由 NERV 地下最终教条区的第二使徒莉莉丝（Lilith）不断生产出来的。人类将这种液体充满EVA的插入栓作为驾驶员与 EVA 的介质以提供缓冲，并且该液体可以为EVA驾驶员提供氧气。已知LCL液体可以阻隔使徒的精神攻击。根据气体扩散作用原理，LCL液的溶解氧浓度高于大气含氧量。
            亚当和莉莉丝为地球带来了“黑之月”与“白之月”，灵魂和生命分别诞生。但是作为灵魂和生命的容器的肉体却迟迟未出现。莉莉丝产生LCL之海，然后诞生原始的肉体，再配上灵魂和生命，才出现了动物、植物与人类。人类补完计划启动后，所有的生物的肉体都化为LCL液，同时失去了容纳灵魂和生命的功能，灵魂回归黑之月，肉体以LCL之液的形式汇入LCL之海。

            <br>
            <img class="img-thumbnail m-100" src="../img/product/product_instroduce/product_instroduce_1.jpg"/>
            <br>

            LCL 的成分与产生生命的“原始汤”近似。莉莉丝产生LCL液，然后生命从LCL液中诞生。NERV将莉莉丝囚于最终教条区，但是LCL液并未停止产生。NERV将LCL液用作EVA与驾驶员的介质。可能有连接驾驶员灵魂与EVA的作用。“人类补完计划”发动以后，世界上存活的人类的肉体都化为LCL液，最后汇入LCL之海中。
        </p>

        <p>所以，这玩意不仅能喝，还能当作空气进行呼吸！拿它充满泳池跳进去来体验一把水里鱼儿的快乐。</p>

        <p>
            可以这么说，NERV 所生产售卖的 LCL 液是世界上浓度最高的，也是世界上卖得最便宜的。<del>虽然其实就只有我们在卖别人根本生产不出来</del>
        </p>

        <p>机会难得，NERV 打算将仓库中的 LCL 作为商品卖出去，不好说什么时候会下架，有兴趣的请赶紧抢购。<del class="hide_text">可能还可以买到带部分凌波丽肉体的LCL</del></p>

        <img class="mx-auto h-30" src="../img/favicon.png"/>
    </div>
</div>

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

<script src="../js/ui/main_page.js"></script>
<script src="../js/page/info_page.js"></script>
</body>
</html>
