<%@ page language="java" import="java.util.* " pageEncoding="UTF-8"%>
<%@ page import="com.km.search.DocumentEntity " %>
<%@ taglib prefix="html" uri="/struts-tags"%>
<%@ taglib uri="http://jsptags.com/tags/navigation/pager" prefix="pg"%>
<%@taglib uri="/WEB-INF/c.tld" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>搜索</title>

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
                    <h2>搜索</h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="">主页</a>
                        </li>
                        <li class="active">
                            <strong>	搜索页</strong>
                        </li>
                    </ol>
                </div>
            </div>
        <div class="wrapper wrapper-content animated fadeInRight">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox float-e-margins">
                        <div class="ibox-content">
                            <h2>
                                ${session.rsize}条结果 来自: <span class="text-navy">“${request.sk}”</span>
                            </h2>
                            <small>搜索时间  (0.23 秒)</small>

                            <div class="search-form">
                                <form action="SearchAction.action" method="get">
                                    <div class="input-group">
                                        <input type="text" name="fieldname" class="form-control input-lg" value="${request.sk}">
                                        <div class="input-group-btn">
                                            <button class="btn btn-lg btn-primary" type="submit" >搜索</button>
                                        </div>
                                         <div>&nbsp;</div>
                                        <div class="input-group-btn">
                                            <button class="btn btn-lg btn-primary" type="button" onclick="window.location.href='GotoSearchByothe.action'">高级搜索 </button>
                                        </div>
                                    </div>

                                </form>
                            </div>
                            <%int a =0; %>
			<c:forEach items="${rlist}" var="eachdoc" varStatus="st">
				<TABLE cellSpacing=0 cellPadding=0 border=0>
					<TBODY>
					      
						<TR>
							<TD class="f EC_PP">
							<div class="hr-line-dashed"></div>
                            <div class="search-result">
                                 
                                <h3><a href="GotoDetail.action?a=<%=a%>">${eachdoc.filename}</a></h3>
                               
                                <p>
                                ${eachdoc.contents}
                                </p>
                            </div>
								<%a=+1; %>

							</TD>
						</TR>
					</TBODY>
				</TABLE>
			</c:forEach>
                            <div class="hr-line-dashed"></div>
                            
                            <div class="text-center">
                            <div class="btn-group">
                            <c:choose>
								<c:when test="${not empty requestScope.pageNumBean.upPageNum}">
									<a href="${pageUrl}${requestScope.pageNumBean.upPageNum}&sk=${sk1}">
									<button class="btn btn-white" type="button"><i class="fa fa-chevron-left"></i></button>
									</a>
								</c:when>
								<c:otherwise>  
				 			       <button class="btn btn-white" type="button"><i class="fa fa-chevron-left"></i></button>  
				   				</c:otherwise>
							</c:choose>
							</div>
							<div class="btn-group">
							<c:forEach items="${requestScope.pageNumBean.pages}" var="item">
								<c:choose>
									<c:when test="${item == requestScope.pageNumBean.currentNum}">
										<a href="${pageUrl}${item}&sk=${sk1}">
										<button class="btn btn-white active" >${item}</button>
										</a>
									</c:when>
									<c:otherwise>
										<a href="${pageUrl}${item}&sk=${sk1}">
										<button class="btn btn-white">[${item}]</button>
										</a>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							</div>
							<div class="btn-group">
							<c:choose>
								<c:when test="${not empty requestScope.pageNumBean.downPageNum}">
									<a href="${pageUrl}${requestScope.pageNumBean.downPageNum}&sk=${sk1}">
									<button class="btn btn-white" type="button"><i class="fa fa-chevron-right"></i></button>
									</a>
								</c:when>
								<c:otherwise>  
				    			  <button class="btn btn-white" type="button"><i class="fa fa-chevron-right"></i></button>
				    			</c:otherwise>
							</c:choose>
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
    <script src="<%=path %>/js/jquery-2.1.1.js"></script>
    <script src="<%=path %>/js/bootstrap.min.js"></script>
    <script src="<%=path %>/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="<%=path %>/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="<%=path %>/js/inspinia.js"></script>
    <script src="<%=path %>/js/plugins/pace/pace.min.js"></script>


</body>

</html>
