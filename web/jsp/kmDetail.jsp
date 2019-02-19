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

    <title>知识详情</title>

    <link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path%>/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="<%=path%>/css/plugins/slick/slick.css" rel="stylesheet">
    <link href="<%=path%>/css/plugins/slick/slick-theme.css" rel="stylesheet">

    <link href="<%=path%>/css/animate.css" rel="stylesheet">
    <link href="<%=path%>/css/style.css" rel="stylesheet">



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
                <li  class="active">
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
                <li>
                    <a href="GotoInfoManager.action"><i class="fa fa-cog"></i> <span class="nav-label">基础信息</span></a>
                </li>

                <li>
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
                    <form role="search" class="navbar-form-custom" action="kmSearchResults.jsp">
                        <div class="form-group">
                            <input type="text" placeholder="Search for something..." class="form-control" name="top-search" id="top-search">
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
                <h2>知识详情</h2>
                <ol class="breadcrumb">
                    <li>
                        <a href="">主页</a>
                    </li>
                    <li>
                        <a>${rlist[c].filename}</a>
                    </li>
                    <li class="active">
                        <strong>知识详情</strong>
                    </li>
                </ol>
            </div>
            <div class="col-lg-2">

            </div>
        </div>

        <div class="wrapper wrapper-content animated fadeInRight">

            <div class="row">
                <div class="col-lg-12">

                    <div class="ibox product-detail">
                        <div class="ibox-content">

                            <div class="row">
                                
                                <div class="col-md-7">

                                    <h2 class="font-bold m-b-xs">
                                        ${rlist[c].filename}
                                    </h2>
                                           
                                    <div class="m-t-md">
                                       
                                    </div>
                                    <hr>

                                    <h4>文档描述</h4>

                                    <div class=" text-muted">
                                     ${rlist[c].contents}
                                     
                                    </div>
                                  
                                    <br>
                                    <br>
                                    <br>
                                    <br>
                                    <br>
        
                                   
									<table class="table">
				                        <tbody>
				                        <tr>
				                           
				                            <td>
				                                <button type="button" class="btn btn-info btn-sm"><i class="fa fa-eye">浏览</i></button>
				                                14666
				                            </td>
				                            <td>
				                                <button type="button" class="btn btn-warning btn-sm"><i class="fa fa-comment">评论</i></button>
				                               120
				                            </td>
				                            <td>
				                                <button type="button" class="btn btn-success btn-sm"><i class="fa fa-thumbs-up">赞</i> </button>
				                               150
				                            </td>
				                            <td>
				                                <button type="button" class="btn btn-danger btn-sm"><i class="fa fa-star">收藏</i></button>
				                                1510
				                            </td>
				                        </tr>
				                        </tbody>
				                    </table>
				                   
                                    



                                </div>
                                <div class="col-md-5">
							<h5>xx知识目录</h5>

                            <div class="dd" id="nestable">
                                <ol class="dd-list">
                                    <li class="dd-item" data-id="1">
                                        <div class="dd-handle">1 - Lorem ipsum</div>
                                    </li>
                                    <li class="dd-item" data-id="2">
                                        <div class="dd-handle">2 - Dolor sit</div>
                                        <ol class="dd-list">
                                            <li class="dd-item" data-id="3">
                                                <div class="dd-handle">3 - Adipiscing elit</div>
                                            </li>
                                            <li class="dd-item" data-id="4">
                                                <div class="dd-handle">4 - Nonummy nibh</div>
                                            </li>
                                        </ol>
                                    </li>
                                    <li class="dd-item" data-id="5">
                                        <div class="dd-handle">5 - Consectetuer</div>
                                        <ol class="dd-list">
                                            <li class="dd-item" data-id="6">
                                                <div class="dd-handle">6 - Aliquam erat</div>
                                            </li>
                                            <li class="dd-item" data-id="7">
                                                <div class="dd-handle">7 - Veniam quis</div>
                                            </li>
                                        </ol>
                                    </li>
                                    <li class="dd-item" data-id="8">
                                        <div class="dd-handle">8 - Tation ullamcorper</div>
                                    </li>
                                    <li class="dd-item" data-id="9">
                                        <div class="dd-handle">9 - Ea commodo</div>
                                    </li>
                                </ol>
                            </div>
                                    

                                </div>
                            </div>

                        </div>
                        <div class="ibox-footer col-md-12">
                            <div class="col-md-1"></div>
                            <div class="col-md-6">
                                <a href="${rlist[c].originalFileName}"><button class="btn btn-primary m-r-sm" ><i class="fa fa-eye"></i> 在线预览</button></a>
                                <div class="btn-group">
                                   
                                    <button class="btn btn-white m-r-sm"><i class="fa fa-star"></i> 添加到收藏 </button>
                                    <button class="btn btn-white m-r-sm"><i class="fa fa-download"></i> 下载文档 </button>
                                    <button class="btn btn-white m-r-sm" onclick="window.location.href='GotoDiscoverError.action'"><i class="fa fa-times"></i> 文档反馈 </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ibox">
                        <div class="ibox-content">
                            <h3>相关评论</h3>

                            <ul class="sortable-list connectList agile-list" id="inprogress">
                                <li class="success-element" id="task9">
                                    有时，偶然的，有时在目的（注入的幽默等）。
                                    <div class="agile-detail">
                                        <a href="#" class="pull-right btn btn-xs btn-white">Tag</a>
                                        <i class="fa fa-clock-o"></i> 12.10.2015
                                    </div>
                                </li>
                                <li class="success-element" id="task10">
                                    许多桌面出版软件包和网页编辑器现在使用Lorem存有作为默认的。
                                    <div class="agile-detail">
                                        <a href="#" class="pull-right btn btn-xs btn-white">Mark</a>
                                        <i class="fa fa-clock-o"></i> 05.04.2015
                                    </div>
                                </li>
                                <li class="warning-element" id="task11">
                                    看起来合理。生成Lorem Ipsum 因此总是无重复，注入幽默，或无特征词等。
                                    <div class="agile-detail">
                                        <a href="#" class="pull-right btn btn-xs btn-white">Mark</a>
                                        <i class="fa fa-clock-o"></i> 16.11.2015
                                    </div>
                                </li>
                                <li class="warning-element" id="task12">
                                    看起来合理。生成Lorem Ipsum 因此总是无重复，注入幽默，或无特征词等。
                                    <div class="agile-detail">
                                        <a href="#" class="pull-right btn btn-xs btn-white">Tag</a>
                                        <i class="fa fa-clock-o"></i> 09.12.2015
                                    </div>
                                </li>
                                <li class="info-element" id="task13">
                                    看起来合理。生成Lorem Ipsum 因此总是无重复，注入幽默，或无特征词等。
                                    <div class="agile-detail">
                                        <a href="#" class="pull-right btn btn-xs btn-primary">Done</a>
                                        <i class="fa fa-clock-o"></i> 08.04.2015
                                    </div>
                                </li>
                                <li class="success-element" id="task14">
                                    看起来合理。生成Lorem Ipsum 因此总是无重复，注入幽默，或无特征词等。
                                    <div class="agile-detail">
                                        <a href="#" class="pull-right btn btn-xs btn-white">Mark</a>
                                        <i class="fa fa-clock-o"></i> 05.04.2015
                                    </div>
                                </li>
                                <li class="danger-element" id="task15">
                                    看起来合理。生成Lorem Ipsum 因此总是无重复，注入幽默，或无特征词等。
                                    <div class="agile-detail">
                                        <a href="#" class="pull-right btn btn-xs btn-white">Mark</a>
                                        <i class="fa fa-clock-o"></i> 11.04.2015
                                    </div>
                                </li>
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
<script src="<%=path%>/js/jquery-2.1.1.js"></script>
<script src="<%=path%>/js/bootstrap.min.js"></script>
<script src="<%=path%>/js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="<%=path%>/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="<%=path%>/js/inspinia.js"></script>
<script src="<%=path%>/js/plugins/pace/pace.min.js"></script>

<!-- slick carousel-->
<script src="<%=path%>/js/plugins/slick/slick.min.js"></script>

<script>
    $(document).ready(function(){


        $('.product-images').slick({
            dots: true
        });

    });

</script>

</body>

</html>
