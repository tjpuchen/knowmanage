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

    <title>高级搜索</title>

    <link href="<%=path %>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path %>/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- FooTable -->
    <link href="<%=path %>/css/plugins/footable/footable.core.css" rel="stylesheet">

    <link href="<%=path %>/css/animate.css" rel="stylesheet">
    <link href="<%=path %>/css/style.css" rel="stylesheet">
    
    <link href="<%=path %>/css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
    
    <link href="<%=path %>/css/plugins/datapicker/datepicker3.css" rel="stylesheet">

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
                <div class="col-lg-9">
                    <h2>高级搜索</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href=" ">主页</a>
                        </li>
                        <li class="active">
                            <strong>	高级搜索</strong>
                        </li>
                    </ol>
                </div>
            </div>
        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-content">
                        	<h2><span class="text-navy">知识搜索</span></h2>
                           
                            <div class="search-form " >
                                <form action="AdvanceSearchAction.action" method="post">
                                	 <div class="row">
						                    <div class="col-sm-4">
						                        <label class="control-label" for="place">选择检索的类型</label>
				                            		<select class="form-control m-b" name="qtype">
				                            			<option  value="term" selected="selected">精确</option>
				                                        <option value="fuzz">模糊</option>
				                                        <option value="pref">前缀</option>
				                                        
				                                    </select>
						                    </div>
						                     <div class="col-sm-4">
						                        <div class="form-group">
						                           <label class="control-label" for="place">选择检索的文档类型</label>
				                            		<select class="form-control m-b" name="filetype">
				                                        <option value="all" selected="selected">项目期刊</option>
				                                        <option value="all">软件文献</option>
				                                        <option value="all">需求分析</option>
				                                        <option value="all">软件开发</option>
				                                    </select>
						                        </div>
						                    </div>
						                    <div class="col-sm-4">
						                        <div class="form-group">
						                            <label class="control-label" for="place">选择每页显示的文档数</label>
				                            		<select  class="form-control m-b" name="pagetype">
				                                        <option value="10" selected="selected">每页显示10条
                										<option value="20">每页显示20条
                										<option value="50">每页显示50条
				                                    </select>
				                                    <input name="totalpage" type="hidden" value="100">
						                        </div>
						                    </div>
						                </div>
					                 <div class="row">
				                    <div class="col-sm-4">
				                        <div class="form-group">
				                            <label class="control-label" for="date_added">时间区间</label>
				                            <div class="input-group date">
				                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input id="date_added" type="text" class="form-control" value="03/04/2014">
				                            </div>
				                            
				                        </div>
				                    </div>
				                  
				                    <div class="col-sm-4">
				                        <div class="form-group">
				                            <label class="control-label" for="date_added">&nbsp;</label>
				                            <div class="input-group date">
				                                <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input id="date_added" type="text" class="form-control" value="03/04/2014">
				                            </div>
				                        </div>
				                    </div>
				                    
				                	</div>
				                	<center>
	                    	 <h5 class="logo-name">KM</h5>
                                    <div class="input-group col-sm-8">
                                        <input type="text" placeholder="" id="fieldname"  name="fieldname" class="form-control input-lg ">
                                        <div class="input-group-btn">
                                            <button class="btn btn-lg btn-primary" onclick="check()">搜索</button>
                                        </div>
                                      
                                    </div>
	                    	 
	                    	 
                            
                             </center>
  
                                </form>
                            </div>
                             
                                
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
    <script src="<%=path %>/js/bootstrap.min.js"></script>
    <script src="<%=path %>/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="<%=path %>/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="<%=path %>/js/inspinia.js"></script>
    <script src="<%=path %>/js/plugins/pace/pace.min.js"></script>

    <!-- Data picker -->
    <script src="<%=path %>/js/plugins/datapicker/bootstrap-datepicker.js"></script>

    <!-- FooTable -->
    <script src="<%=path %>/js/plugins/footable/footable.all.min.js"></script>
    
     <script src="<%=path %>/js/plugins/sweetalert/sweetalert.min.js"></script>

    <!-- Page-Level Scripts -->
    <script>
         
    function check(){
		var val= document.getElementById('fieldname').value;
		
		if(val==""){
			   return false;
		   }
		   else
		   {
		   document.forms[0].submit();
		   }
		}
        
        $(document).ready(function() {

            $('.footable').footable();

            $('#date_added').datepicker({
                todayBtn: "linked",
                keyboardNavigation: false,
                forceParse: false,
                calendarWeeks: true,
                autoclose: true
            });

            $('#date_modified').datepicker({
                todayBtn: "linked",
                keyboardNavigation: false,
                forceParse: false,
                calendarWeeks: true,
                autoclose: true
            });
            
           
       

        });
             
             
			
       
       
       
       
      

			

    </script>

</body>

</html>
