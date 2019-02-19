<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="html" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>个人信息</title>

    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path %>/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="<%=path %>/css/animate.css" rel="stylesheet">
    <link href="<%=path %>/css/style.css" rel="stylesheet">

</head>

<body>

    <div id="wrapper">

        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav metismenu" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="<%=path%>/img/profile_small.jpg" />
                             </span>
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">小明</strong>
                             </span> <span class="text-muted text-xs block">管理员 <b class="caret"></b></span> </span> </a>

                        </div>
                        <div class="logo-element">
                            KM
                        </div>
                    </li>
                    <li >
                        <a href="GotoSearch.action"><i class="fa fa-search"></i> <span class="nav-label">知识搜索</span></a>

                    </li>
                    <li>
                        <a href="GotoCreatKnowledge.action"><i class="fa fa-book"></i> <span class="nav-label">知识创建</span></a>
                    </li>
                    <li >
                        <a href="GotoCheckList.action"><i class="fa fa-file-text-o"></i> <span class="nav-label">知识审核</span><span class="label label-success pull-right">NEW</span></a>
                    </li>
                    <li  >
                        <a href="GotoCatallogueManager.action"><i class="fa fa-list-ol"></i> <span class="nav-label">目录管理</span></a>
                    </li>
                    <li>
                        <a href="Gotokmgraph.action"><i class="fa fa-line-chart"></i> <span class="nav-label">知识统计</span></a>
                    </li>
                    <li >
                        <a href="GotoFileManager.action"><i class="fa fa-folder-o"></i> <span class="nav-label">文件管理</span></a>
                    </li>
                    <li >
                        <a href="GotoUserManager.action"><i class="fa fa-edit"></i> <span class="nav-label">用户信息</span></a>

                    </li>
                    <li >
                        <a href="GotoInfoManager.action"><i class="fa fa-cog"></i> <span class="nav-label">基础信息</span></a>
                    </li>

                    <li class="active">
                        <a href="GotoPerson.action"><i class="fa fa-sliders"></i> <span class="nav-label">我的设置</span></a>
                    </li>
                </ul>

            </div>
        </nav>

        <div id="page-wrapper" class="gray-bg">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header">
                        <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
                        <form role="search" class="navbar-form-custom" action="SearchAction.action" >
                            <div class="form-group">
                                <input  name="fieldname" type="text" placeholder="Search for something..." class="form-control" name="top-search" id="top-search">
                            </div>
                        </form>

                    </div>
                    <ul class="nav navbar-top-links navbar-right">
                        <li>
                            <span class="m-r-sm text-muted welcome-message">欢迎来到知识库管理系统</span>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                                <i class="fa fa-envelope"></i>  <span class="label label-warning">16</span>
                            </a>
                            <ul class="dropdown-menu dropdown-messages">
                                <li>
                                    <div class="dropdown-messages-box">
                                        <a href=" " class="pull-left">
                                            <img alt="image" class="img-circle" src="<%=path%>/img/a7.jpg">
                                        </a>
                                        <div class="media-body">
                                            <small class="pull-right">46小时前</small>
                                            <strong>李文俊</strong> 关注了 <strong>刘海洋</strong>. <br>
                                            <small class="text-muted">3 天 前- 10.06.2014</small>
                                        </div>
                                    </div>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <div class="dropdown-messages-box">
                                        <a href=" " class="pull-left">
                                            <img alt="image" class="img-circle" src="<%=path%>/img/a4.jpg">
                                        </a>
                                        <div class="media-body ">
                                            <small class="pull-right text-navy">5小时前</small>
                                            <strong>王昆</strong> 关注了 <strong>李文俊</strong>. <br>
                                            <small class="text-muted">昨天下午1:21 - 11.06.2014</small>
                                        </div>
                                    </div>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <div class="dropdown-messages-box">
                                        <a href="profile.html" class="pull-left">
                                            <img alt="image" class="img-circle" src="<%=path%>/img/profile.jpg">
                                        </a>
                                        <div class="media-body ">
                                            <small class="pull-right">23小时前</small>
                                            <strong>张三</strong> 赞了 <strong>李四</strong>. <br>
                                            <small class="text-muted">2天前 - 11.06.2014</small>
                                        </div>
                                    </div>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <div class="text-center link-block">
                                        <a href=" ">
                                            <i class="fa fa-envelope"></i> <strong>查看更多消息</strong>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
                                <i class="fa fa-bell"></i>  <span class="label label-primary">8</span>
                            </a>
                            <ul class="dropdown-menu dropdown-alerts">
                                <li>
                                    <a href=" ">
                                        <div>
                                            <i class="fa fa-envelope fa-fw"></i> 您有 16 条未读通知
                                            <span class="pull-right text-muted small">4 分钟 前</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href=" ">
                                        <div>
                                            <i class="fa fa-twitter fa-fw"></i> 3 个新粉丝
                                            <span class="pull-right text-muted small">12 分钟 前</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href=" ">
                                        <div>
                                            <i class="fa fa-upload fa-fw"></i> 服务器重启
                                            <span class="pull-right text-muted small">4 分钟 前</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <div class="text-center link-block">
                                        <a href=" ">
                                            <strong>查看更多通知</strong>
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </li>


                        <li>
                            <a href="<%=path %>/kmlogin.jsp">
                                <i class="fa fa-sign-out"></i> 退出登录
                            </a>
                        </li>
                    </ul>

                </nav>
            </div>
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>个人信息</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href=" ">主页</a>
                        </li>
                        
                        <li class="active">
                            <strong>个人信息</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
        <div class="wrapper wrapper-content animated fadeInRight">


            <div class="row m-b-lg m-t-lg">
                <div class="col-md-3">

                    <div class="profile-image">
                        <img src="<%=path%>/img/profile_small.jpg" class="img-circle circle-border m-b-md" alt="profile">
                    </div>
                    <div class="profile-info">
                        <div class="">
                            <div>
                                <h2 class="no-margins">
                                    小明
                                </h2>
                                <h4>管理员</h4>
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                <div>
                    <table class="table">
                        <tbody>
                        <tr>
                           
                            <td>
                                <button type="button" class="btn btn-primary m-r-sm">28</button>
                                知识
                            </td>
                            <td>
                                <button type="button" class="btn btn-info m-r-sm">15</button>
                               评论
                            </td>
                        </tr>
                        <tr>
                           
                            <td>
                                <button type="button" class="btn btn-success m-r-sm">40</button>
                                赞
                            </td>
                            <td>
                                <button type="button" class="btn btn-danger m-r-sm">30</button>
                                通知
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <button type="button" class="btn btn-warning m-r-sm">20</button>
                                警告
                            </td>
                            
                            <td>
                                <button type="button" class="btn btn-warning m-r-sm">30</button>
                                权限
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                
            </div>
                 <div class="col-md-3">
                <div class="widget style1 navy-bg">
                    <div class="row">
                        <div class="col-xs-4">
                            <i class="fa fa-cloud fa-5x"></i>
                        </div>
                        <div class="col-xs-8 text-right">
                            <span> 今日温度 </span>
                            <h2 class="font-bold">26'C</h2>
                        </div>
                    </div>
                </div>
            </div>
            
               


            </div>
            <div class="row">
            	<div class="col-lg-3">

                    <div class="ibox">
                        <div class="ibox-content">
                            <h3>我的信息</h3>
                            <p class="small">
                                <h5>小明<br/><br/>    性别：男  <br/><br/>    年龄：26 <br/><br/>    部门：研发部   <br/><br/>
                                	职位：经理   <br/><br/>
                                	联系方式：15244466899<br/><br/>
                                </h5> 
                                <br/> 
                                <br/> 
                            </p>
                            
							<div>
                                <div class="btn-group">
                                    <button class="btn btn-white btn-sm"><i class="fa fa-pencil"></i> 修改信息 </button>
                                    <button class="btn btn-white btn-sm"><i class="fa fa-pencil-square-o"></i> 修改密码 </button>
                                   
                                </div>
                            </div>
                        
                        </div>
                    </div>

                </div>


				<div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h3>我创建的知识</h3>
                            <ul class="list-unstyled file-list">
                                <li><a href=""><i class="fa fa-folder"></i> java从入门到精通</a></li>
                                 <li><a href=""><i class="fa fa-folder"></i> Project_document.docx</a></li>
                                  <li><a href=""><i class="fa fa-folder"></i> Project_document.docx</a></li>
                                   <li><a href=""><i class="fa fa-folder"></i> Project_document.docx</a></li>
                                    <li><a href=""><i class="fa fa-folder"></i> Project_document.docx</a></li>
                            </ul>
                        </div>
                    </div>

                </div>
                <div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h3>我的文件</h3>
                            <ul class="list-unstyled file-list">
                                <li><a href=""><i class="fa fa-file"></i> 概要设计.docx</a></li>
                               <li><a href=""><i class="fa fa-file"></i> 需求分析.docx</a></li>
                               <li><a href=""><i class="fa fa-file"></i> 需求分析.docx</a></li>
                               <li><a href=""><i class="fa fa-file"></i> 需求分析.docx</a></li>
                               <li><a href=""><i class="fa fa-file"></i> 需求分析.docx</a></li>
                               <li><a href=""><i class="fa fa-file"></i> 需求分析.docx</a></li>
                               
                            </ul>
                        </div>
                    </div>

                    

                </div>
                <div class="col-lg-3">
                    <div class="ibox">
                        <div class="ibox-content">
                            <h3>我收藏的知识</h3>
                            <ul class="list-unstyled file-list">
                                <li><a href=""><i class="fa fa-star"></i> java从入门到精通</a></li>
                                 <li><a href=""><i class="fa fa-star"></i> java从入门到精通</a></li>
                                 <li><a href=""><i class="fa fa-star"></i> java从入门到精通</a></li>
                                 
                                 <li><a href=""><i class="fa fa-star"></i> java从入门到精通</a></li>
                            </ul>
                        </div>
                    </div>

                </div>

                

        </div>
        </div>
        <div class="footer">
            <div class="pull-right">
                
            </div>
            <div>
                <strong>知识库管理系统</strong>
            </div>
        </div>

        </div>
        </div>



    <!-- Mainly scripts -->
    <script src="<%=path %>/js/jquery-2.1.1.js"></script>
    <script src="<%=path %>/js/bootstrap.js"></script>
    <script src="<%=path %>/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="<%=path %>/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="<%=path %>/js/inspinia.js"></script>
    <script src="<%=path %>/js/plugins/pace/pace.min.js"></script>

    <!-- Sparkline -->
    <script src="<%=path %>/js/plugins/sparkline/jquery.sparkline.min.js"></script>

    <script>
        $(document).ready(function() {


            $("#sparkline1").sparkline([34, 43, 43, 35, 44, 32, 44, 48], {
                type: 'line',
                width: '100%',
                height: '50',
                lineColor: '#1ab394',
                fillColor: "transparent"
            });


        });
    </script>

</body>

</html>
