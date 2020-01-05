<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta charset="utf-8" />
	<title>Tables - Ace Admin</title>

	<meta name="description" content="Static &amp; Dynamic Tables" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

	<!-- bootstrap & fontawesome -->
	<link rel="stylesheet" href="/admin/assets/css/bootstrap.min.css" />
	<link rel="stylesheet" href="/admin/assets/css/font-awesome.min.css" />

	<!-- page specific plugin styles -->

	<!-- text fonts -->
	<link rel="stylesheet" href="/admin/assets/css/ace-fonts.css" />

	<!-- ace styles -->
	<link rel="stylesheet" href="/admin/assets/css/ace.min.css" id="main-ace-style" />

	<!--[if lte IE 9]>
	<link rel="stylesheet" href="/admin/assets/css/ace-part2.min.css" />
	<![endif]-->
	<link rel="stylesheet" href="/admin/assets/css/ace-skins.min.css" />
	<link rel="stylesheet" href="/admin/assets/css/ace-rtl.min.css" />

	<!--[if lte IE 9]>
	<link rel="stylesheet" href="/admin/assets/css/ace-ie.min.css" />
	<![endif]-->

	<!-- inline styles related to this page -->

	<!-- ace settings handler -->
	<script src="/admin/assets/js/ace-extra.min.js"></script>

	<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

	<!--[if lte IE 8]>
	<script src="/admin/assets/js/html5shiv.min.js"></script>
	<script src="/admin/assets/js/respond.min.js"></script>
	<![endif]-->
</head>

<body class="no-skin">
	<!-- #section:basics/navbar.layout -->
	<jsp:include page="public/top.jsp" flush="true"/>

	<!-- /section:basics/navbar.layout -->
	<div class="main-container" id="main-container">
	<script type="text/javascript">
		try{ace.settings.check('main-container' , 'fixed')}catch(e){}
	</script>

	<jsp:include page="public/left.jsp" flush="true">
		<jsp:param name="now" value="new_list"/>
	</jsp:include>
	<!-- /section:basics/sidebar -->
	<div class="main-content">
		<!-- #section:basics/content.breadcrumbs -->
		<div class="breadcrumbs" id="breadcrumbs">
			<script type="text/javascript">
				try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
			</script>

			<ul class="breadcrumb">
				<li>
					<i class="ace-icon fa fa-home home-icon"></i>
					<a href="#">Home</a>
				</li>

				<li>
					<a href="#">Tables</a>
				</li>
				<li class="active">Simple &amp; Dynamic</li>
			</ul><!-- /.breadcrumb -->

			<!-- #section:basics/content.searchbox -->
			<div class="nav-search" id="nav-search">
				<form class="form-search">
                    <span class="input-icon">
                        <input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
                        <i class="ace-icon fa fa-search nav-search-icon"></i>
                    </span>
				</form>
			</div><!-- /.nav-search -->

			<!-- /section:basics/content.searchbox -->
		</div>

		<!-- /section:basics/content.breadcrumbs -->
		<div class="page-content">
			<!-- #section:settings.box -->
			<div class="ace-settings-container" id="ace-settings-container">
				<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
					<i class="ace-icon fa fa-cog bigger-150"></i>
				</div>

				<div class="ace-settings-box clearfix" id="ace-settings-box">
					<div class="pull-left width-50">
						<!-- #section:settings.skins -->
						<div class="ace-settings-item">
							<div class="pull-left">
								<select id="skin-colorpicker" class="hide">
									<option data-skin="no-skin" value="#438EB9">#438EB9</option>
									<option data-skin="skin-1" value="#222A2D">#222A2D</option>
									<option data-skin="skin-2" value="#C6487E">#C6487E</option>
									<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
								</select>
							</div>
							<span>&nbsp; Choose Skin</span>
						</div>

						<!-- /section:settings.skins -->

						<!-- #section:settings.navbar -->
						<div class="ace-settings-item">
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
							<label class="lbl" for="ace-settings-navbar"> Fixed Navbar</label>
						</div>

						<!-- /section:settings.navbar -->

						<!-- #section:settings.sidebar -->
						<div class="ace-settings-item">
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
							<label class="lbl" for="ace-settings-sidebar"> Fixed Sidebar</label>
						</div>

						<!-- /section:settings.sidebar -->

						<!-- #section:settings.breadcrumbs -->
						<div class="ace-settings-item">
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
							<label class="lbl" for="ace-settings-breadcrumbs"> Fixed Breadcrumbs</label>
						</div>

						<!-- /section:settings.breadcrumbs -->

						<!-- #section:settings.rtl -->
						<div class="ace-settings-item">
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
							<label class="lbl" for="ace-settings-rtl"> Right To Left (rtl)</label>
						</div>

						<!-- /section:settings.rtl -->

						<!-- #section:settings.container -->
						<div class="ace-settings-item">
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
							<label class="lbl" for="ace-settings-add-container">
								Inside
								<b>.container</b>
							</label>
						</div>

						<!-- /section:settings.container -->
					</div><!-- /.pull-left -->

					<div class="pull-left width-50">
						<!-- #section:basics/sidebar.options -->
						<div class="ace-settings-item">
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" />
							<label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
						</div>

						<div class="ace-settings-item">
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" />
							<label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
						</div>

						<div class="ace-settings-item">
							<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-highlight" />
							<label class="lbl" for="ace-settings-highlight"> Alt. Active Item</label>
						</div>

						<!-- /section:basics/sidebar.options -->
					</div><!-- /.pull-left -->
				</div><!-- /.ace-settings-box -->
			</div><!-- /.ace-settings-container -->

			<!-- /section:settings.box -->
			<div class="page-content-area">
				<div class="page-header">
					<h1>
						Tables
						<small>
							<i class="ace-icon fa fa-angle-double-right"></i>
							Static &amp; Dynamic Tables
						</small>
					</h1>
				</div><!-- /.page-header -->

				<div class="row">
					<div class="col-xs-12">


						<div class="row">
							<div class="col-xs-12">
								<h3 class="header smaller lighter blue">jQuery dataTables</h3>
								<div class="table-header">
									Results for "Latest Registered Domains"
								</div>

								<div class="widget-main">
									<form class="form-inline">
										<div class="form-group">
											<label for="exampleInputName1">Name</label>
											<input type="text" class="form-control" id="exampleInputName1" placeholder="Jane Doe">
										</div>
										<div class="form-group">
											<label for="exampleInputEmail3">Email</label>
											<input type="email" class="form-control" id="exampleInputEmail3" placeholder="jane.doe@example.com">
										</div>
										栏目搜索：
										<select class="form-control" style="width:15%">
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
										</select>
										<select class="form-control" style="width:15%">
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
										</select>
										<div class="space space-4"></div>
										<div class="form-group">
											<label for="exampleInputName2">Name</label>
											<input type="text" class="form-control" id="exampleInputName2" placeholder="Jane Doe">
										</div>
										<div class="form-group" >
											<label for="exampleInputEmail2">Email</label>
											<input type="email" class="form-control" id="exampleInputEmail2" placeholder="jane.doe@example.com">
										</div>

										<button type="button" class="btn btn-info btn-sm">
											<i class="ace-icon fa fa-search bigger-110"></i>搜索
										</button>
									</form>
								</div>

								<!-- <div class="dataTables_borderWrap"> -->
								<div>
									<table id="sample-table-2" class="table table-striped table-bordered table-hover">
										<thead>
										<tr>
											<th class="center">
												<label class="position-relative">
													<input type="checkbox" class="ace" />
													<span class="lbl"></span>
												</label>
											</th>
											<th>Domain</th>
											<th>Price</th>
											<th class="hidden-480">Clicks</th>
											<th>
												<i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
												Update
											</th>
											<th class="hidden-480">Status</th>
											<th class="hidden-480">Status</th>
										</tr>
										</thead>

										<tbody>
										<tr>
											<td class="center">
												<label class="position-relative">
													<input type="checkbox" class="ace" />
													<span class="lbl"></span>
												</label>
											</td>

											<td>
												<a href="#">app.com</a>
											</td>
											<td>$45</td>
											<td class="hidden-480">3,330</td>
											<td>Feb 12</td>

											<td class="hidden-480">
												<span class="label label-sm label-warning">Expiring</span>
											</td>

											<td>
												<div class="hidden-sm hidden-xs action-buttons">
													<a class="blue" href="#">
														<i class="ace-icon fa fa-search-plus bigger-130"></i>
													</a>

													<a class="green" href="#">
														<i class="ace-icon fa fa-pencil bigger-130"></i>
													</a>

													<a class="red" href="#">
														<i class="ace-icon fa fa-trash-o bigger-130"></i>
													</a>
												</div>

												<div class="hidden-md hidden-lg">
													<div class="inline position-relative">
														<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
														</button>

														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<li>
																<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</td>
										</tr>

										<tr>
											<td class="center">
												<label class="position-relative">
													<input type="checkbox" class="ace" />
													<span class="lbl"></span>
												</label>
											</td>

											<td>
												<a href="#">base.com</a>
											</td>
											<td>$35</td>
											<td class="hidden-480">2,595</td>
											<td>Feb 18</td>

											<td class="hidden-480">
												<span class="label label-sm label-success">Registered</span>
											</td>

											<td>
												<div class="hidden-sm hidden-xs action-buttons">
													<a class="blue" href="#">
														<i class="ace-icon fa fa-search-plus bigger-130"></i>
													</a>

													<a class="green" href="#">
														<i class="ace-icon fa fa-pencil bigger-130"></i>
													</a>

													<a class="red" href="#">
														<i class="ace-icon fa fa-trash-o bigger-130"></i>
													</a>
												</div>

												<div class="hidden-md hidden-lg">
													<div class="inline position-relative">
														<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
														</button>

														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<li>
																<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</td>
										</tr>

										<tr>
											<td class="center">
												<label class="position-relative">
													<input type="checkbox" class="ace" />
													<span class="lbl"></span>
												</label>
											</td>

											<td>
												<a href="#">max.com</a>
											</td>
											<td>$60</td>
											<td class="hidden-480">4,400</td>
											<td>Mar 11</td>

											<td class="hidden-480">
												<span class="label label-sm label-warning">Expiring</span>
											</td>

											<td>
												<div class="hidden-sm hidden-xs action-buttons">
													<a class="blue" href="#">
														<i class="ace-icon fa fa-search-plus bigger-130"></i>
													</a>

													<a class="green" href="#">
														<i class="ace-icon fa fa-pencil bigger-130"></i>
													</a>

													<a class="red" href="#">
														<i class="ace-icon fa fa-trash-o bigger-130"></i>
													</a>
												</div>

												<div class="hidden-md hidden-lg">
													<div class="inline position-relative">
														<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
														</button>

														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<li>
																<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</td>
										</tr>

										<tr>
											<td class="center">
												<label class="position-relative">
													<input type="checkbox" class="ace" />
													<span class="lbl"></span>
												</label>
											</td>

											<td>
												<a href="#">best.com</a>
											</td>
											<td>$75</td>
											<td class="hidden-480">6,500</td>
											<td>Apr 03</td>

											<td class="hidden-480">
												<span class="label label-sm label-inverse arrowed-in">Flagged</span>
											</td>

											<td>
												<div class="hidden-sm hidden-xs action-buttons">
													<a class="blue" href="#">
														<i class="ace-icon fa fa-search-plus bigger-130"></i>
													</a>

													<a class="green" href="#">
														<i class="ace-icon fa fa-pencil bigger-130"></i>
													</a>

													<a class="red" href="#">
														<i class="ace-icon fa fa-trash-o bigger-130"></i>
													</a>
												</div>

												<div class="hidden-md hidden-lg">
													<div class="inline position-relative">
														<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
														</button>

														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<li>
																<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</td>
										</tr>

										<tr>
											<td class="center">
												<label class="position-relative">
													<input type="checkbox" class="ace" />
													<span class="lbl"></span>
												</label>
											</td>

											<td>
												<a href="#">pro.com</a>
											</td>
											<td>$55</td>
											<td class="hidden-480">4,250</td>
											<td>Jan 21</td>

											<td class="hidden-480">
												<span class="label label-sm label-success">Registered</span>
											</td>

											<td>
												<div class="hidden-sm hidden-xs action-buttons">
													<a class="blue" href="#">
														<i class="ace-icon fa fa-search-plus bigger-130"></i>
													</a>

													<a class="green" href="#">
														<i class="ace-icon fa fa-pencil bigger-130"></i>
													</a>

													<a class="red" href="#">
														<i class="ace-icon fa fa-trash-o bigger-130"></i>
													</a>
												</div>

												<div class="hidden-md hidden-lg">
													<div class="inline position-relative">
														<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
														</button>

														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<li>
																<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</td>
										</tr>

										<tr>
											<td class="center">
												<label class="position-relative">
													<input type="checkbox" class="ace" />
													<span class="lbl"></span>
												</label>
											</td>

											<td>
												<a href="#">team.com</a>
											</td>
											<td>$40</td>
											<td class="hidden-480">3,200</td>
											<td>Feb 09</td>

											<td class="hidden-480">
												<span class="label label-sm label-inverse arrowed-in">Flagged</span>
											</td>

											<td>
												<div class="hidden-sm hidden-xs action-buttons">
													<a class="blue" href="#">
														<i class="ace-icon fa fa-search-plus bigger-130"></i>
													</a>

													<a class="green" href="#">
														<i class="ace-icon fa fa-pencil bigger-130"></i>
													</a>

													<a class="red" href="#">
														<i class="ace-icon fa fa-trash-o bigger-130"></i>
													</a>
												</div>

												<div class="hidden-md hidden-lg">
													<div class="inline position-relative">
														<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
														</button>

														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<li>
																<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</td>
										</tr>

										<tr>
											<td class="center">
												<label class="position-relative">
													<input type="checkbox" class="ace" />
													<span class="lbl"></span>
												</label>
											</td>

											<td>
												<a href="#">up.com</a>
											</td>
											<td>$95</td>
											<td class="hidden-480">8,520</td>
											<td>Feb 22</td>

											<td class="hidden-480">
												<span class="label label-sm label-info arrowed arrowed-righ">Sold</span>
											</td>

											<td>
												<div class="hidden-sm hidden-xs action-buttons">
													<a class="blue" href="#">
														<i class="ace-icon fa fa-search-plus bigger-130"></i>
													</a>

													<a class="green" href="#">
														<i class="ace-icon fa fa-pencil bigger-130"></i>
													</a>

													<a class="red" href="#">
														<i class="ace-icon fa fa-trash-o bigger-130"></i>
													</a>
												</div>

												<div class="hidden-md hidden-lg">
													<div class="inline position-relative">
														<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
														</button>

														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<li>
																<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</td>
										</tr>

										<tr>
											<td class="center">
												<label class="position-relative">
													<input type="checkbox" class="ace" />
													<span class="lbl"></span>
												</label>
											</td>

											<td>
												<a href="#">view.com</a>
											</td>
											<td>$45</td>
											<td class="hidden-480">4,100</td>
											<td>Mar 12</td>

											<td class="hidden-480">
												<span class="label label-sm label-success">Registered</span>
											</td>

											<td>
												<div class="hidden-sm hidden-xs action-buttons">
													<a class="blue" href="#">
														<i class="ace-icon fa fa-search-plus bigger-130"></i>
													</a>

													<a class="green" href="#">
														<i class="ace-icon fa fa-pencil bigger-130"></i>
													</a>

													<a class="red" href="#">
														<i class="ace-icon fa fa-trash-o bigger-130"></i>
													</a>
												</div>

												<div class="hidden-md hidden-lg">
													<div class="inline position-relative">
														<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
														</button>

														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<li>
																<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</td>
										</tr>

										<tr>
											<td class="center">
												<label class="position-relative">
													<input type="checkbox" class="ace" />
													<span class="lbl"></span>
												</label>
											</td>

											<td>
												<a href="#">nice.com</a>
											</td>
											<td>$38</td>
											<td class="hidden-480">3,940</td>
											<td>Feb 12</td>

											<td class="hidden-480">
												<span class="label label-sm label-info arrowed arrowed-righ">Sold</span>
											</td>

											<td>
												<div class="hidden-sm hidden-xs action-buttons">
													<a class="blue" href="#">
														<i class="ace-icon fa fa-search-plus bigger-130"></i>
													</a>

													<a class="green" href="#">
														<i class="ace-icon fa fa-pencil bigger-130"></i>
													</a>

													<a class="red" href="#">
														<i class="ace-icon fa fa-trash-o bigger-130"></i>
													</a>
												</div>

												<div class="hidden-md hidden-lg">
													<div class="inline position-relative">
														<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
														</button>

														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<li>
																<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</td>
										</tr>

										<tr>
											<td class="center">
												<label class="position-relative">
													<input type="checkbox" class="ace" />
													<span class="lbl"></span>
												</label>
											</td>

											<td>
												<a href="#">fine.com</a>
											</td>
											<td>$25</td>
											<td class="hidden-480">2,983</td>
											<td>Apr 01</td>

											<td class="hidden-480">
												<span class="label label-sm label-warning">Expiring</span>
											</td>

											<td>
												<div class="hidden-sm hidden-xs action-buttons">
													<a class="blue" href="#">
														<i class="ace-icon fa fa-search-plus bigger-130"></i>
													</a>

													<a class="green" href="#">
														<i class="ace-icon fa fa-pencil bigger-130"></i>
													</a>

													<a class="red" href="#">
														<i class="ace-icon fa fa-trash-o bigger-130"></i>
													</a>
												</div>

												<div class="hidden-md hidden-lg">
													<div class="inline position-relative">
														<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
														</button>

														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<li>
																<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</td>
										</tr>

										<tr>
											<td class="center">
												<label class="position-relative">
													<input type="checkbox" class="ace" />
													<span class="lbl"></span>
												</label>
											</td>

											<td>
												<a href="#">good.com</a>
											</td>
											<td>$50</td>
											<td class="hidden-480">6,500</td>
											<td>Feb 02</td>

											<td class="hidden-480">
												<span class="label label-sm label-inverse arrowed-in">Flagged</span>
											</td>

											<td>
												<div class="hidden-sm hidden-xs action-buttons">
													<a class="blue" href="#">
														<i class="ace-icon fa fa-search-plus bigger-130"></i>
													</a>

													<a class="green" href="#">
														<i class="ace-icon fa fa-pencil bigger-130"></i>
													</a>

													<a class="red" href="#">
														<i class="ace-icon fa fa-trash-o bigger-130"></i>
													</a>
												</div>

												<div class="hidden-md hidden-lg">
													<div class="inline position-relative">
														<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
														</button>

														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<li>
																<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</td>
										</tr>

										<tr>
											<td class="center">
												<label class="position-relative">
													<input type="checkbox" class="ace" />
													<span class="lbl"></span>
												</label>
											</td>

											<td>
												<a href="#">great.com</a>
											</td>
											<td>$55</td>
											<td class="hidden-480">6,400</td>
											<td>Feb 24</td>

											<td class="hidden-480">
												<span class="label label-sm label-success">Registered</span>
											</td>

											<td>
												<div class="hidden-sm hidden-xs action-buttons">
													<a class="blue" href="#">
														<i class="ace-icon fa fa-search-plus bigger-130"></i>
													</a>

													<a class="green" href="#">
														<i class="ace-icon fa fa-pencil bigger-130"></i>
													</a>

													<a class="red" href="#">
														<i class="ace-icon fa fa-trash-o bigger-130"></i>
													</a>
												</div>

												<div class="hidden-md hidden-lg">
													<div class="inline position-relative">
														<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
														</button>

														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<li>
																<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</td>
										</tr>

										<tr>
											<td class="center">
												<label class="position-relative">
													<input type="checkbox" class="ace" />
													<span class="lbl"></span>
												</label>
											</td>

											<td>
												<a href="#">shine.com</a>
											</td>
											<td>$25</td>
											<td class="hidden-480">2,200</td>
											<td>Apr 01</td>

											<td class="hidden-480">
												<span class="label label-sm label-inverse arrowed-in">Flagged</span>
											</td>

											<td>
												<div class="hidden-sm hidden-xs action-buttons">
													<a class="blue" href="#">
														<i class="ace-icon fa fa-search-plus bigger-130"></i>
													</a>

													<a class="green" href="#">
														<i class="ace-icon fa fa-pencil bigger-130"></i>
													</a>

													<a class="red" href="#">
														<i class="ace-icon fa fa-trash-o bigger-130"></i>
													</a>
												</div>

												<div class="hidden-md hidden-lg">
													<div class="inline position-relative">
														<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
														</button>

														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<li>
																<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</td>
										</tr>

										<tr>
											<td class="center">
												<label class="position-relative">
													<input type="checkbox" class="ace" />
													<span class="lbl"></span>
												</label>
											</td>

											<td>
												<a href="#">rise.com</a>
											</td>
											<td>$42</td>
											<td class="hidden-480">3,900</td>
											<td>Feb 01</td>

											<td class="hidden-480">
												<span class="label label-sm label-info arrowed arrowed-righ">Sold</span>
											</td>

											<td>
												<div class="hidden-sm hidden-xs action-buttons">
													<a class="blue" href="#">
														<i class="ace-icon fa fa-search-plus bigger-130"></i>
													</a>

													<a class="green" href="#">
														<i class="ace-icon fa fa-pencil bigger-130"></i>
													</a>

													<a class="red" href="#">
														<i class="ace-icon fa fa-trash-o bigger-130"></i>
													</a>
												</div>

												<div class="hidden-md hidden-lg">
													<div class="inline position-relative">
														<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
														</button>

														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<li>
																<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</td>
										</tr>

										<tr>
											<td class="center">
												<label class="position-relative">
													<input type="checkbox" class="ace" />
													<span class="lbl"></span>
												</label>
											</td>

											<td>
												<a href="#">above.com</a>
											</td>
											<td>$35</td>
											<td class="hidden-480">3,420</td>
											<td>Mar 12</td>

											<td class="hidden-480">
												<span class="label label-sm label-warning">Expiring</span>
											</td>

											<td>
												<div class="hidden-sm hidden-xs action-buttons">
													<a class="blue" href="#">
														<i class="ace-icon fa fa-search-plus bigger-130"></i>
													</a>

													<a class="green" href="#">
														<i class="ace-icon fa fa-pencil bigger-130"></i>
													</a>

													<a class="red" href="#">
														<i class="ace-icon fa fa-trash-o bigger-130"></i>
													</a>
												</div>

												<div class="hidden-md hidden-lg">
													<div class="inline position-relative">
														<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
														</button>

														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<li>
																<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</td>
										</tr>

										<tr>
											<td class="center">
												<label class="position-relative">
													<input type="checkbox" class="ace" />
													<span class="lbl"></span>
												</label>
											</td>

											<td>
												<a href="#">share.com</a>
											</td>
											<td>$30</td>
											<td class="hidden-480">3,200</td>
											<td>Feb 11</td>

											<td class="hidden-480">
												<span class="label label-sm label-info arrowed arrowed-righ">Sold</span>
											</td>

											<td>
												<div class="hidden-sm hidden-xs action-buttons">
													<a class="blue" href="#">
														<i class="ace-icon fa fa-search-plus bigger-130"></i>
													</a>

													<a class="green" href="#">
														<i class="ace-icon fa fa-pencil bigger-130"></i>
													</a>

													<a class="red" href="#">
														<i class="ace-icon fa fa-trash-o bigger-130"></i>
													</a>
												</div>

												<div class="hidden-md hidden-lg">
													<div class="inline position-relative">
														<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
														</button>

														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<li>
																<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</td>
										</tr>

										<tr>
											<td class="center">
												<label class="position-relative">
													<input type="checkbox" class="ace" />
													<span class="lbl"></span>
												</label>
											</td>

											<td>
												<a href="#">fair.com</a>
											</td>
											<td>$35</td>
											<td class="hidden-480">3,900</td>
											<td>Mar 26</td>

											<td class="hidden-480">
												<span class="label label-sm label-inverse arrowed-in">Flagged</span>
											</td>

											<td>
												<div class="hidden-sm hidden-xs action-buttons">
													<a class="blue" href="#">
														<i class="ace-icon fa fa-search-plus bigger-130"></i>
													</a>

													<a class="green" href="#">
														<i class="ace-icon fa fa-pencil bigger-130"></i>
													</a>

													<a class="red" href="#">
														<i class="ace-icon fa fa-trash-o bigger-130"></i>
													</a>
												</div>

												<div class="hidden-md hidden-lg">
													<div class="inline position-relative">
														<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
														</button>

														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<li>
																<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</td>
										</tr>

										<tr>
											<td class="center">
												<label class="position-relative">
													<input type="checkbox" class="ace" />
													<span class="lbl"></span>
												</label>
											</td>

											<td>
												<a href="#">year.com</a>
											</td>
											<td>$48</td>
											<td class="hidden-480">3,990</td>
											<td>Feb 15</td>

											<td class="hidden-480">
												<span class="label label-sm label-warning">Expiring</span>
											</td>

											<td>
												<div class="hidden-sm hidden-xs action-buttons">
													<a class="blue" href="#">
														<i class="ace-icon fa fa-search-plus bigger-130"></i>
													</a>

													<a class="green" href="#">
														<i class="ace-icon fa fa-pencil bigger-130"></i>
													</a>

													<a class="red" href="#">
														<i class="ace-icon fa fa-trash-o bigger-130"></i>
													</a>
												</div>

												<div class="hidden-md hidden-lg">
													<div class="inline position-relative">
														<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
														</button>

														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<li>
																<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</td>
										</tr>

										<tr>
											<td class="center">
												<label class="position-relative">
													<input type="checkbox" class="ace" />
													<span class="lbl"></span>
												</label>
											</td>

											<td>
												<a href="#">day.com</a>
											</td>
											<td>$55</td>
											<td class="hidden-480">5,600</td>
											<td>Jan 29</td>

											<td class="hidden-480">
												<span class="label label-sm label-info arrowed arrowed-righ">Sold</span>
											</td>

											<td>
												<div class="hidden-sm hidden-xs action-buttons">
													<a class="blue" href="#">
														<i class="ace-icon fa fa-search-plus bigger-130"></i>
													</a>

													<a class="green" href="#">
														<i class="ace-icon fa fa-pencil bigger-130"></i>
													</a>

													<a class="red" href="#">
														<i class="ace-icon fa fa-trash-o bigger-130"></i>
													</a>
												</div>

												<div class="hidden-md hidden-lg">
													<div class="inline position-relative">
														<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
														</button>

														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<li>
																<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</td>
										</tr>

										<tr>
											<td class="center">
												<label class="position-relative">
													<input type="checkbox" class="ace" />
													<span class="lbl"></span>
												</label>
											</td>

											<td>
												<a href="#">light.com</a>
											</td>
											<td>$40</td>
											<td class="hidden-480">3,100</td>
											<td>Feb 17</td>

											<td class="hidden-480">
												<span class="label label-sm label-success">Registered</span>
											</td>

											<td>
												<div class="hidden-sm hidden-xs action-buttons">
													<a class="blue" href="#">
														<i class="ace-icon fa fa-search-plus bigger-130"></i>
													</a>

													<a class="green" href="#">
														<i class="ace-icon fa fa-pencil bigger-130"></i>
													</a>

													<a class="red" href="#">
														<i class="ace-icon fa fa-trash-o bigger-130"></i>
													</a>
												</div>

												<div class="hidden-md hidden-lg">
													<div class="inline position-relative">
														<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
														</button>

														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<li>
																<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</td>
										</tr>

										<tr>
											<td class="center">
												<label class="position-relative">
													<input type="checkbox" class="ace" />
													<span class="lbl"></span>
												</label>
											</td>

											<td>
												<a href="#">sight.com</a>
											</td>
											<td>$58</td>
											<td class="hidden-480">6,100</td>
											<td>Feb 19</td>

											<td class="hidden-480">
												<span class="label label-sm label-inverse arrowed-in">Flagged</span>
											</td>

											<td>
												<div class="hidden-sm hidden-xs action-buttons">
													<a class="blue" href="#">
														<i class="ace-icon fa fa-search-plus bigger-130"></i>
													</a>

													<a class="green" href="#">
														<i class="ace-icon fa fa-pencil bigger-130"></i>
													</a>

													<a class="red" href="#">
														<i class="ace-icon fa fa-trash-o bigger-130"></i>
													</a>
												</div>

												<div class="hidden-md hidden-lg">
													<div class="inline position-relative">
														<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
														</button>

														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<li>
																<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</td>
										</tr>

										<tr>
											<td class="center">
												<label class="position-relative">
													<input type="checkbox" class="ace" />
													<span class="lbl"></span>
												</label>
											</td>

											<td>
												<a href="#">right.com</a>
											</td>
											<td>$50</td>
											<td class="hidden-480">4,400</td>
											<td>Apr 01</td>

											<td class="hidden-480">
												<span class="label label-sm label-warning">Expiring</span>
											</td>

											<td>
												<div class="hidden-sm hidden-xs action-buttons">
													<a class="blue" href="#">
														<i class="ace-icon fa fa-search-plus bigger-130"></i>
													</a>

													<a class="green" href="#">
														<i class="ace-icon fa fa-pencil bigger-130"></i>
													</a>

													<a class="red" href="#">
														<i class="ace-icon fa fa-trash-o bigger-130"></i>
													</a>
												</div>

												<div class="hidden-md hidden-lg">
													<div class="inline position-relative">
														<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
														</button>

														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<li>
																<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</td>
										</tr>

										<tr>
											<td class="center">
												<label class="position-relative">
													<input type="checkbox" class="ace" />
													<span class="lbl"></span>
												</label>
											</td>

											<td>
												<a href="#">once.com</a>
											</td>
											<td>$20</td>
											<td class="hidden-480">1,400</td>
											<td>Apr 04</td>

											<td class="hidden-480">
												<span class="label label-sm label-info arrowed arrowed-righ">Sold</span>
											</td>

											<td>
												<div class="hidden-sm hidden-xs action-buttons">
													<a class="blue" href="#">
														<i class="ace-icon fa fa-search-plus bigger-130"></i>
													</a>

													<a class="green" href="#">
														<i class="ace-icon fa fa-pencil bigger-130"></i>
													</a>

													<a class="red" href="#">
														<i class="ace-icon fa fa-trash-o bigger-130"></i>
													</a>
												</div>

												<div class="hidden-md hidden-lg">
													<div class="inline position-relative">
														<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
														</button>

														<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<li>
																<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																</a>
															</li>

															<li>
																<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</td>
										</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>

					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.page-content-area -->
		</div><!-- /.page-content -->
	</div><!-- /.main-content -->

	<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
		<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
	</a>
</div><!-- /.main-container -->

<!-- basic scripts -->

<!--[if !IE]> -->
<script type="text/javascript">
	window.jQuery || document.write("<script src='/admin/assets/js/jquery.min.js'>"+"<"+"/script>");
</script>

<!-- <![endif]-->

<!--[if IE]>
<script type="text/javascript">
	window.jQuery || document.write("<script src='/admin/assets/js/jquery1x.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
<script type="text/javascript">
	if('ontouchstart' in document.documentElement) document.write("<script src='/admin/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
</script>
<script src="/admin/assets/js/bootstrap.min.js"></script>

<!-- page specific plugin scripts -->
<script src="/admin/assets/js/jquery.dataTables.min.js"></script>
<script src="/admin/assets/js/jquery.dataTables.bootstrap.js"></script>

<!-- ace scripts -->
<script src="/admin/assets/js/ace-elements.min.js"></script>
<script src="/admin/assets/js/ace.min.js"></script>


<!-- the following scripts are used in demo only for onpage help and you don't need them -->
<link rel="stylesheet" href="/admin/assets/css/ace.onpage-help.css" />
<link rel="stylesheet" href="/admin/assets/js/themes/sunburst.css" />

<script type="text/javascript"> ace.vars['base'] = '..'; </script>
<script src="/admin/assets/js/ace/elements.onpage-help.js"></script>
<script src="/admin/assets/js/ace/ace.onpage-help.js"></script>
<script src="/admin/assets/js/rainbow.js"></script>
<script src="/admin/assets/js/language/generic.js"></script>
<script src="/admin/assets/js/language/html.js"></script>
<script src="/admin/assets/js/language/css.js"></script>
<script src="/admin/assets/js/language/javascript.js"></script>
</body>
</html>

