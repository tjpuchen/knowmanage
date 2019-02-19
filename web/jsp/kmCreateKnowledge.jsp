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

    <title>知识创建</title>

    <link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=path%>/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="<%=path%>/css/animate.css" rel="stylesheet">
    <link href="<%=path%>/css/plugins/dropzone/basic.css" rel="stylesheet">
    <link href="<%=path%>/css/plugins/dropzone/dropzone.css" rel="stylesheet">
    <link href="<%=path%>/css/style.css" rel="stylesheet">
    <link href="<%=path%>/css/plugins/bootstrap-markdown/bootstrap-markdown.min.css" rel="stylesheet">
	<link href="<%=path%>/css/plugins/chosen/chosen.css" rel="stylesheet">
	<!-- Sweet Alert -->
    <link href="<%=path%>/css/plugins/sweetalert/sweetalert.css" rel="stylesheet">
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
                    <li  class="active">
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
                    <h2>知识创建</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="#">主页</a>
                        </li>
                      
                        <li class="active">
                            <strong>知识创建</strong>
                        </li>
                    </ol>
                </div>
                <div class="col-lg-2">

                </div>
            </div>
        <div class="wrapper wrapper-content animated fadeIn">
            <div class="row">
                <div class="col-lg-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>知识创建</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="#">配置选项 1</a>
                                </li>
                                <li><a href="#">配置选项 2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                       <form method="get" class="form-horizontal">
										<div class="form-group">
											<label class="col-sm-2 control-label">知识编号</label>
											<div class="col-sm-3"><input id="docphone" type="text" class="form-control"></div>
											<label class="col-sm-1 control-label">知识名称</label>
											<div class="col-sm-4"><input id="docname" type="text" class="form-control"></div>
										</div>
										<div class="hr-line-dashed"></div>
										
						                <div class="form-group">
						                <label class="col-sm-2 control-label">知识类型</label>
										<div class="col-sm-3">
											<select class="form-control m-b" name="account">
		                                        <option>项目期刊</option>
		                                        <option>软件文献</option>
		                                        <option>需求分析</option>
		                                        <option>软件开发</option>
		                                    </select>
										</div>
										<label class="col-sm-1 control-label">相关文档</label>
											<div class="col-sm-4">
												<select id="date" data-placeholder="选择与知识相关的文档" class="chosen-select" multiple style="width:350px;" tabindex="4">
						                
								                <option value="周一">java程序设计</option>
								                <option value="周二">javaweb程序设计</option>
								                <option value="周三">spring实战经典</option>
								                <option value="周四">mybatis实战经典</option>
								                <option value="周五">springMVC框架搭建</option>
								                <option value="周六">.net程序设计</option>
								                <option value="周日">Oracle简明教程</option>
								                </select>
											</div>
										
										</div>
						                
										<div class="hr-line-dashed"></div>
										<div class="form-group">
										<label class="col-sm-2 control-label">知识简介</label>
										
				                       
									    <div class="col-sm-10">
				                            <textarea name="content" data-provide="markdown" rows="10">
				
				                            </textarea>
				                           </div>
				                         </div>
										<div class="hr-line-dashed"></div>
										
									、
										
										
										
						               
										
						</form>
						<div class="form-group" align="right">
							<div class="col-sm-4 col-sm-offset-2" >
								<button class="btn btn-success btn-sm demo3" >保存</button>
							</div>
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
    <script src="<%=path%>/js/jquery-2.1.1.js"></script>
    <script src="<%=path%>/js/bootstrap.min.js"></script>
    <script src="<%=path%>/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="<%=path%>/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="<%=path%>/js/inspinia.js"></script>
    <script src="<%=path%>/js/plugins/pace/pace.min.js"></script>

    <!-- DROPZONE -->
    <script src="<%=path%>/js/plugins/dropzone/dropzone.js"></script>
 	<!-- Bootstrap markdown -->
    <script src="<%=path%>/js/plugins/bootstrap-markdown/bootstrap-markdown.js"></script>
    <script src="<%=path%>/js/plugins/bootstrap-markdown/markdown.js"></script>
 	<!-- Chosen -->
    <script src="<%=path%>/js/plugins/chosen/chosen.jquery.js"></script>
    <!-- Sweet alert -->
    <script src="<%=path%>/js/plugins/sweetalert/sweetalert.min.js"></script>
    <script>
        $(document).ready(function(){
        	
        	$('.demo3').click(function () {
            swal({
                title: "确定创建知识?",
               
               type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "OK",
                closeOnConfirm: false,
                closeOnCancel: false
            }, function (isConfirm) {
                 if (isConfirm) {
                     swal("成功!", "知识创建成功", "success");
                       window.setTimeout("window.location='kmSearch.jsp'",2000); 
                    
                 }else{
                      swal("失败", "知识创建失败", "error");
                 }
            });
        });

            Dropzone.options.myAwesomeDropzone = {

                autoProcessQueue: false,
                uploadMultiple: true,
                parallelUploads: 100,
                maxFiles: 100,

                // Dropzone settings
                init: function() {
                    var myDropzone = this;

                    this.element.querySelector("button[type=submit]").addEventListener("click", function(e) {
                        e.preventDefault();
                        e.stopPropagation();
                        myDropzone.processQueue();
                    });
                    this.on("sendingmultiple", function() {
                    });
                    this.on("successmultiple", function(files, response) {
                    });
                    this.on("errormultiple", function(files, response) {
                    });
                }

            }
             var config = {
			                '.chosen-select'           : {},
			                '.chosen-select-deselect'  : {allow_single_deselect:true},
			                '.chosen-select-no-single' : {disable_search_threshold:10},
			                '.chosen-select-no-results': {no_results_text:'Oops, nothing found!'},
			                '.chosen-select-width'     : {width:"95%"}
			                }
			            for (var selector in config) {
			                $(selector).chosen(config[selector]);
			            }
			            
			

       });
    </script>

</body>

</html>
