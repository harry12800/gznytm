<%--
  Created by IntelliJ IDEA.
  User: Yuexin
  Date: 2017/1/18
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>$Title$</title>
    <link rel="stylesheet" type="text/css" href="css/gznytm.css"/>
    <link rel="stylesheet" type="text/css" href="css/font-awesome.css"/>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/bootstrap-datetimepicker.min.css"/>
    <script src="/js/jquery-2.1.4.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="/js/bootstrap-datetimepicker.js" type="text/javascript" charset="utf-8"></script>
    <script src="/js/locales/bootstrap-datetimepicker.zh-CN.js" type="text/javascript" charset="utf-8"></script>
    <script src="/js/echarts.js" type="text/javascript" charset="utf-8"></script>
    <script src="/js/h-asset-chart.js" type="text/javascript" charset="utf-8"></script>

    <script src="/js/asset-table.js" type="text/javascript" charset="utf-8"></script>
    <script src="/js/asset.js" type="text/javascript" charset="utf-8"></script>
    <script src="/js/asset.ui.js" type="text/javascript" charset="utf-8"></script>
    <script src="/js/asset.window.js" type="text/javascript" charset="utf-8"></script>
    <style>

        body canvas {
            -webkit-filter: url("#turbulence");
            filter: url("#turbulence");
            background-color: #4790ff;
        }
        .card{
            backface-visibility: hidden;
            position: absolute;
            top:0;
            right:0;
            bottom:0;
            left:0;
        }
        .front{
            background:url("http://assets.jq22.com/plugin/2017-01-20-11-18-28.png") no-repeat center/100% 100%;
            z-index:10000;
        }
        .back{
            background:url("http://assets.jq22.com/plugin/2017-01-20-00-14-37.png") no-repeat center/100% 100%;
            transform: rotateY(180deg);
            z-index:10001;
            background-color: #ffb7b9;
        }
        .img_card{
            position: relative;
            width: 102px;
            height: 143px;
            transition: 5s;
            transform-style:preserve-3d;
        }
        .stage{
            float:left;
            perspective: 1000;
            -webkit-perspective:400;
            border-radius: 8px;
        }
        .stage:nth-child(1) .img_card{
            transform: rotateY(0deg);
        }
        .stage:nth-child(2) .img_card{
            transform: rotateY(30deg);
        }
        .stage:nth-child(3) .img_card{
            transform: rotateY(60deg);
        }
        .stage:nth-child(4) .img_card{
            transform: rotateY(90deg);
        }
        .stage:nth-child(5) .img_card{
             transform: rotateY(120deg);
         }
        .stage:nth-child(6) .img_card{
              transform: rotateY(150deg);
          }
        .stage:nth-child(7) .img_card{
            transform: rotateY(180deg);
        }


    </style>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" style="font-family:微软雅黑;height: 50px;">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar"><span class="sr-only">Toggle navigation</span> <span
                    class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></button>
            <a class="navbar-logo" href=""><img src="" height="100%" alt=" "></a></div>
        <div id="navbar" class="navbar-collapse collapse">

            <ul class="nav navbar-nav navbar-right">
                <li><a href="#" data-toggle="modal" data-target="#myModal">
                    <i class="fa fa-user"></i> &nbsp;123<span class="sr-only">(current)</span></a>

                </li>
            </ul>
        </div>
        <!--/.nav-collapse -->

    </div>
</nav>
<canvas id="c"></canvas>
<svg xlmns="http://www.w3.org/2000/svg" version="1.1" style="display: none">
    <defs>
        <filter id="turbulence">
            <feTurbulence type="fractalNoise" baseFrequency="0.05 0.05" numOctaves="1" result="noice"></feTurbulence>
            <feDisplacementMap xChannelSelector="R" yChannelSelector="G" scale="4"
                               in="SourceGraphic"></feDisplacementMap>
        </filter>
    </defs>
</svg>

<div class="container" style="position:relative;text-align: center">

    <a class="nav_a">a</a>|
    <a class="nav_a">b<i class="fa fa-angle-down"></i></a>

    <ul class="list-unstyled" style="text-align:center;margin: 0 auto;clear: both">
        <li class="pull-left"><a class="nav_a_li border_transition border_transition_line"> 背景dd</a></li>
        <li class="pull-left"><a class="nav_a_li border_transition border_transition_line">
            背景dd</a></li>
    </ul>
</div>

<div class="container" style="position:relative;text-align: center">
    <div class="row">
        <div class="col-sm-3">
            <div class="stage">
            <div  class="img_card" href="" target="_blank">
                <div class="card front " >
                <div class="card back  "  >
            </div>
            </div>
            <div class="cover-info">
                <a href="" target="_blank"><h4>纯js+css贴纸特效</h4></a>
                <small>纯js+css贴纸特效，便签会随着鼠标移动产生卷纸弯曲效果，非常的酷。</small>
            </div>
            <div class="cover-fields pull-left">
                <i class="fa fa-list-ul"></i> &nbsp;
                悬停
            </div>
            <div class="cover-stat  pull-left" >
                <i class="fa fa-eye"></i><span class="f10"> &nbsp;62</span>
                <i class="fa fa-heart"></i><span class="f10"> &nbsp;0</span>
                <div class="cover-yh">
                    <a href="mem265455" data-container="body" data-toggle="popover" data-placement="top"
                       data-content="sun " data-original-title="" title="">
                        <i class="fa fa-user-secret"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
<script src="/js/js_back_an.js" type="text/javascript" charset="utf-8"></script>
</html>
