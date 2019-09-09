<%--
  Created by IntelliJ IDEA.
  User: jchen
  Date: 2019/6/21
  Time: 0:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="/res/css/main.css">
    <link rel="stylesheet" type="text/css" href="/res/css/swiper.css">
    <style type="text/css">
        body {
            background: #eee;
            font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
            font-size: 14px;
            color: #000;
            margin: 0;
            padding: 0;
        }

        #banner {
            height: 630px;
        }

        .swiper-container {
            width: 100%;
            height: 632px;
        }

        .swiper-slide {
            text-align: center;
            font-size: 18px;
            background: #fff;

            /* Center slide text vertically */
            display: -webkit-box;
            display: -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            -webkit-justify-content: center;
            justify-content: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            -webkit-align-items: center;
            align-items: center;
        }

        <%-- the following will be written back to css--%>
    </style>
</head>
<body>
<!-- 页面的顶部 -->
<div id="top">
    <div class="container"></div>
</div>
<!-- 页面的头部 -->
<div id="header">
    <div class="container">
        <div class="header_left left">
            <div class="xlwb"></div>
            <div class="txwb"></div>
            <div class="tel">025-8888-8888</div>
        </div>
        <ul class="right">
            <li><a href="#">登录</a></li>
            <li><a href="#">注册</a></li>
            <li><a href="#">帮助中心</a></li>
            <li class="shop_car"><span></span><a href="#">购物车</a></li>
        </ul>
    </div>
</div>
<!-- 页面的导航 -->
<div id="nav">
    <div class="container">
        <div class="logo left">
            <img src="/res/image/tongyintang.jpg">
        </div>
        <ul class="right">
            <li><a href="#">首页</a></li>
            <li><a href="#">国玉</a></li>
            <li><a href="#">店面</a></li>
            <li><a href="#">艺术</a></li>
            <li> <a href="/" type="button" class="">返回</a></li>
        </ul>

    </div>
</div>
<!-- 页面的banner部分 -->
<div id="banner">
    <!-- <div class="container"></div> -->
    <div class="swiper-container">
        <div class="swiper-wrapper">
            <div class="swiper-slide"><img src="/res/image/hengxiang.jpg" width="900" height="630"></div>
            <div class="swiper-slide"><img src="/res/image/square.jpg" width="900" height="630"></div>
            <div class="swiper-slide"><img src="/res/image/hengxiang.jpg" width="1000" height="630"></div>
            <div class="swiper-slide"><img src="/res/image/yushi1.jpg" width="1000" height="630"></div>

        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination"></div>
        <div class="swiper-button-next">1</div>
        <div class="swiper-button-prev"></div>
    </div>
    <div class="banner-nav-bg"></div>
</div>
<!-- 页面的明星机型部分 -->
<div id="star">
    <div class="container">
        <div class="star_top">
<%--            <img src="/res/image/i-c-title.png">--%>
        </div>
        <ul>
            <li>
                <div>
                    <img src="/res/image/shangpin.jpg">
                </div>
                <h2>Y1</h2>
                <p>玉石A</p>
                <p class="money">&yen;1999 立即购买 <span></span></p>
            </li>
            <li class="line"></li>
            <li>
                <div>
                    <img src="/res/image/shangpin.jpg">
                </div>
                <h2>Y2</h2>
                <p>玉石B</p>
                <p class="money">&yen;2999 立即购买 <span></span></p>
            </li>
            <li class="line"></li>
            <li>
                <div>
                    <img src="/res/image/shangpin.jpg">
                </div>
                <h2>Y3</h2>
                <p>玉石C</p>
                <p class="money">&yen;3999 立即购买 <span></span></p>
            </li>
            <li class="line"></li>
            <li>
                <div>
                    <img src="/res/image/shangpin.jpg">
                </div>
                <h2>Y4</h2>
                <p>玉石D</p>
                <p class="money">&yen;4999 立即购买 <span></span></p>
            </li>
        </ul>
    </div>
</div>
<!-- 页面的精选配件部分 -->
<div id="accessory">
    <div class="container">
        <div class="acc_top">
<%--            <img src="/res/image/wb.png">--%>
        </div>
        <div class="acc_main">
            <div class="acc_left left">
                <div>
                    <img src="/res/image/shuxiang.jpg">
                </div>
                <div class="acc_all">
                    <p>桐音堂官方玉佩</p>
                    <ul>
                        <li>玉佩</li>
                        <li>玉佩</li>
                        <li>玉佩</li>
                        <li>玉佩</li>
                        <li>玉佩</li>
                        <li>玉佩</li>
                    </ul>
                    <h2 class="line"></h2>
                    <p class="acc">全部玉佩<span></span></p>
                </div>
                <div>
                    <img src="/res/image/square.jpg">
                </div>
                <div>
                    <img src="/res/image/hengxiang.jpg">
                </div>
            </div>
            <div class="acc_right right">
                <div>
                    <img src="/res/image/hengxiang.jpg">
                </div>
                <div>
                    <img src="/res/image/shuxiang.jpg">
                </div>
                <div>
                    <img src="/res/image/square.jpg">
                </div>
                <div>
                    <img src="/res/image/square.jpg">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 页面的搜索欧珀部分 -->
<div id="world">
    <div class="container">
        <div class="world_top">
<%--            <img src="/res/image/weibo.png">--%>
        </div>
        <div class="world_main">
            <div class="world_left left">
                <div class="a1 fade">
                    <div>
                        <img src="/res/image/square.jpg" height = "300" width = "300">
                    </div>

                </div>
                <div class="a2 fade">
                    <div>
                        <img src="/res/image/square.jpg" height = "300" width = "300">
                    </div>

                </div>
                <div class="a3 fade">
                    <div>
                        <img src="/res/image/square.jpg" height = "300" width = "300">
                    </div>
                </div>
                <div class="a4 fade">
                    <div>
                        <img src="/res/image/square.jpg" height = "300" width = "300">
                    </div>
                </div>
            </div>
            <div class="world_right right">
                <div class="world_title">
                    <div class="news">新闻</div>
                    <div class="weibo">微博</div>
                </div>
                <ul>
                    <li>
                        <dl>
                            <dt>
                                <img src="/res/image/square.jpg">
                            </dt>
                            <dd>玉石之路 历史留给后人的精髓</dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt>
                                <img src="/res/image/square.jpg">
                            </dt>
                            <dd>玉石之路 历史留给后人的精髓</dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt>
                                <img src="/res/image/square.jpg">
                            </dt>
                            <dd>玉石之路 历史留给后人的精髓</dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt>
                                <img src="/res/image/square.jpg">
                            </dt>
                            <dd>玉石之路 历史留给后人的精髓</dd>
                        </dl>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- 页面的服务部分 -->
<div id="serve">
    <div class="container">
        <ul>
            <li>
                <dl>
                    <dt></dt>
                    <dd class="dd1">正品保障</dd>
                    <dd class="dd2">所有的商品都是原装产品</dd>
                </dl>
            </li>
            <li>
                <dl>
                    <dt></dt>
                    <dd class="dd1">正品保障</dd>
                    <dd class="dd2">所有的商品都是原装产品</dd>
                </dl>
            </li>
            <li>
                <dl>
                    <dt></dt>
                    <dd class="dd1">正品保障</dd>
                    <dd class="dd2">所有的商品都是原装产品</dd>
                </dl>
            </li>
            <li>
                <dl>
                    <dt></dt>
                    <dd class="dd1">正品保障</dd>
                    <dd class="dd2">所有的商品都是原装产品</dd>
                </dl>
            </li>
            <li>
                <dl>
                    <dt></dt>
                    <dd class="dd1">正品保障</dd>
                    <dd class="dd2">所有的商品都是原装产品</dd>
                </dl>
            </li>
        </ul>
    </div>
</div>
<!-- 页面的售后服务部分 -->
<div id="after_sale">
    <div class="container">
        <ul>
            <li>
                <ol>
                    <li><a href="#">关于我们</a></li>
                    <li><a href="#">关于桐音堂</a></li>
                    <li><a href="#">新闻中心</a></li>
                    <li><a href="#">人才招聘</a></li>
                </ol>
            </li>
            <li>
                <ol>
                    <li><a href="#">关于我们</a></li>
                    <li><a href="#">关于桐音堂</a></li>
                    <li><a href="#">新闻中心</a></li>
                    <li><a href="#">人才招聘</a></li>
                </ol>
            </li>
            <li>
                <ol>
                    <li><a href="#">关于我们</a></li>
                    <li><a href="#">关于桐音堂</a></li>
                    <li><a href="#">新闻中心</a></li>
                    <li><a href="#">人才招聘</a></li>
                </ol>
            </li>
            <li>
                <ol>
                    <li><a href="#">关于我们</a></li>
                    <li><a href="#">关于桐音堂</a></li>
                    <li><a href="#">新闻中心</a></li>
                    <li><a href="#">人才招聘</a></li>
                </ol>
            </li>
            <li>
                <ol>
                    <li><span class="xl"></span><a href="#">新浪微博</a></li>
                    <li><span class="xl"></span><a href="#">腾讯微博</a></li>
                    <li><span class="xl"></span><a href="#">人人网</a></li>
                    <li><span class="xl"></span><a href="#">QQ空间</a></li>
                </ol>
            </li>
            <li>
                <ol>
                    <li><a href="#">关于我们</a></li>
                    <li><a href="#">关于桐音堂</a></li>
                    <li><a href="#">新闻中心</a></li>
                    <li><a href="#">人才招聘</a></li>
                </ol>
            </li>
        </ul>
    </div>
</div>
<!-- 页面的底部 -->
<div id="footer">
    <div class="container">
        <p>
            <img src="/res/image/tongyintang.jpg" width = "90" height = "30">
            <span>@2019 *address</span>
            <a href="#">版权说明</a>
            <a href="#">版权说明</a>
            <a href="#">版权说明</a>
            <a href="#">版权说明</a>
            <a href="#">版权说明</a>
        </p>
    </div>
</div>
<script type="text/javascript" src="/res/js/swiper.js"></script>
<script type="text/javascript" src="/res/js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="/res/js/index.js"></script>
<script type="text/javascript">
    var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        paginationClickable: true,
        loop: true,
        autoplay: 3000,


        speed: 1000,
        prevButton: '.swiper-button-prev',
        nextButton: '.swiper-button-next',
        effect: 'fade',//  effect: 'flip',effect: 'coverflow',slide', 'fade',cube
        grabCursor: true,
        cube: {
            shadow: false,
            slideShadows: false,
            shadowOffset: 20,
            shadowScale: 0.94
        }
    });
</script>
</body>
</html>
