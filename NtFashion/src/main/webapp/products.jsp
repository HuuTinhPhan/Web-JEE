<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="Control.*"%>
<%@page import="Control.DaoImplement"%>
<%@page import="Modle.Products"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<!-- ======BOOTSTRAP===== -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous" />

<!-- ======FONTS GOOGLEAPIS===== -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />

<!-- =====FONT ANWESOME===== -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- =====FLAT ICON===== -->
<link rel="stylesheet"
	href="https://cdn-uicons.flaticon.com/2.1.0/uicons-solid-rounded/css/uicons-solid-rounded.css" />

<!-- =====CSS===== -->
<link rel="stylesheet" href="css/layets.css" />
<link rel="stylesheet" href="css/uploadFile.css" />

<link rel="stylesheet" href="css/tailwind.css">
<link rel="stylesheet" href="css/tailwind.output.css">


<!-- =====chart==== -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
<script
	src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js"
	defer></script>

<!-- =====TinyMCE===== -->
<script
	src="https://cdn.tiny.cloud/1/03zb87qf3u6gncwwh8bapfwbg2b16esxo40st9v5knl1aedf/tinymce/6/tinymce.min.js"
	referrerpolicy="origin"></script>

<!-- =====jquery==== -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
	integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<title>Products</title>


</head>
<body>
	<div class="container-fluid px-0">
		<div class="mx-0 d-flex header center sticky-top">
			<div class="col-1 center toggleIcon">
				<i class="fa-solid fa-bars"></i>
			</div>
			<div class="col-2 navbar_left d-flex align-items-center">
				<img src="image/logo.png" alt="logo" />
				<p>NT Fashion</p>
			</div>
			<div class="col-5 navbar_center justify-center">
				<form action="">
					<div class="w-full search-box">
						<form class="position-relative" data-bs-toggle="search"
							data-bs-display="static">
							<input class="form-control rounded-full search-input search fs-9"
								style="border-radius: 20px" type="search"
								placeholder="Search..." aria-label="Search" /> <span
								class="fas fa-search search-box-icon"></span>
						</form>
					</div>
				</form>
			</div>
			<div class="col-3 navbar_right center">
				<div class="col-3 bell">
					<a href="#" onclick="dropdown(event,'bell_dropdown')"><i
						class="fa-solid fa-bell"></i></a>
					<div class="dropdownNotification" id="bell_dropdown"
						style="top: 43px;">
						<div class="row recentNotification">
							<p>
								<b>Recent Notification</b>
							</p>
						</div>

						<ul>
							<li class="m-2">
								<div class="row center">
									<div class="col-3 icon center">
										<i class="fa-regular fa-folder-open"></i>
									</div>
									<div class="col-9 contentDropdown ">
										<p class="fs-9">
											You have an offer! <b>Successful done</b>
										</p>
										<p class="fs-9">20 minutes ago</p>
									</div>
								</div>
							</li>
							<li class="m-2">
								<div class="row center">
									<div class="col-3 icon center">
										<i class="fa-regular fa-folder-open"></i>
									</div>
									<div class="col-9 contentDropdown">
										<p class="fs-9">
											You upload your fast product <b>Successful done</b>
										</p>
										<p class="fs-9">20 minutes ago</p>
									</div>
								</div>
							</li>
							<li class="m-2">
								<div class="row center">
									<div class="col-3 icon center">
										<i class="fa-regular fa-folder-open"></i>
									</div>
									<div class="col-9 contentDropdown">
										<p class="fs-9">
											Your Account has been created <b>Successful done</b>
										</p>
										<p class="fs-9">20 minutes ago</p>
									</div>
								</div>
							</li>
							<li class="m-2">
								<div class="row center">
									<div class="col-3 icon center">
										<i class="fa-regular fa-folder-open"></i>
									</div>
									<div class="col-9 contentDropdown">
										<p class="fs-9">
											Thank you !you made your fast sel <b>Successful done</b>
										</p>
										<p class="fs-9">20 minutes ago</p>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-3 center light">
					<i class="fa-solid fa-lightbulb"></i>
				</div>
				<div class="col-6 author">
					<a href="#" class="center"
						onclick="dropdown(event,'author_dropdown')">
						<div class="author_img">
							<img src="image/PHANHUUTNH.jpg" alt="face" />
						</div>
						<div class="author_info">
							<p>PhanHuuTinh</p>
							<p class="fs-10">VietNam</p>
						</div>
					</a>
					<div class="dropdownNotification" id="author_dropdown"
						style="top: 47px; width: 200px; right: 0px; left: 0px;">
						<div class="row myprofile">
							<p>
								<b>My profile</b>
							</p>
						</div>
						<ul>
							<li class="m-2">
								<div class="row center">
									<div class="col-3 icon center">
										<i class="fa-regular fa-user"></i>
									</div>
									<div class="col-8 contentDropdown">
										<p>Profile</p>
									</div>
								</div>
							</li>
							<li class="m-2">
								<div class="row center">
									<div class="col-3 icon center">
										<i class="fa-solid fa-gear"></i>
									</div>
									<div class="col-8 contentDropdown">
										<p>Setting</p>
									</div>
								</div>
							</li>
						</ul>
					</div>

				</div>
			</div>
		</div>
		<!-- =====colum-left===== -->
		<div class="colum-left">
			<button class="accordion-button"
				id="textColor1" style="margin-bottom: 10px;">
				<span class="fa-solid fa-house fontIcon"></span> Dashboard
			</button>

			<button class="accordion-button center"
				onclick="toggle(2), toggleColor(6)" id="textColor6"
				style="margin-bottom: 10px;">
				<span class="fa-solid fa-cart-shopping fontIcon "></span> E commerce
				<span class="material-symbols-outlined rotate-icon"
					id="rotated-icon2"> arrow_right </span>
			</button>

			<div class="accordion-content" id="show2">
				<button class="accordion-button defaultPaddingDropdownLevel_1"
					onclick="toggle(3), toggleColor(7)" id="textColor7"
					style="padding-top: 5px; padding-bottom: 5px;">
					Admin <span class="material-symbols-outlined rotate-icon"
						id="rotated-icon3"> arrow_right </span>
				</button>
				<div class="accordion-content" id="show3">
					<form action="NtStore" method="get">
					<p style="padding-left: 35px;">
						<a href="addProduct.jsp" type="submit" >Add product</a>
						<input type="hidden" value="addProduct">
					</p>
					</form>
						
					<p style="padding-left: 35px;">
						<a href="products.jsp" id="">Products</a>
					</p>
					<p style="padding-left: 35px;">
						<a href="members.jsp" id="">Members</a>
					</p>
					<p style="padding-left: 35px;">
						<a href="memberDetail.jsp" id="">Members details</a>
					</p>
					<p style="padding-left: 35px;">
						<a href="orders.jsp" id="">Orders</a>
					</p>
					<p style="padding-left: 35px;">
						<a href="orderDetail.jsp" id="">Orders details</a>
					</p>
					<p onclick="toggleColor(14)" style="padding-left: 35px;">
						<a href="#" id="textColor14">Refund</a>
					</p>
				</div>

				<button class="accordion-button defaultPaddingDropdownLevel_1"
					onclick="toggle(4), toggleColor(15)" id="textColor15"
					style="padding-top: 5px; padding-bottom: 5px;">
					Customer <span class="material-symbols-outlined rotate-icon"
						id="rotated-icon4"> arrow_right </span>
				</button>
				<div class="accordion-content " id="show4">
					<p onclick="toggleColor(16)" style="padding-left: 35px;">
						<a href="#" id="textColor16">Homepage</a>
					</p>
					<p onclick="toggleColor(17)" style="padding-left: 35px;">
						<a href="#" id="textColor17">Product details</a>
					</p>
					<p onclick="toggleColor(18)" style="padding-left: 35px;">
						<a href="#" id="textColor18">Product filter</a>
					</p>
					<p onclick="toggleColor(19)" style="padding-left: 35px;">
						<a href="#" id="textColor19">Cart</a>
					</p>
					<p onclick="toggleColor(20)" style="padding-left: 35px;">
						<a href="#" id="textColor20">Checkout</a>
					</p>
					<p onclick="toggleColor(21)" style="padding-left: 35px;">
						<a href="#" id="textColor21">Shipping info</a>
					</p>
					<p onclick="toggleColor(22)" style="padding-left: 35px;">
						<a href="#" id="textColor22">Profile</a>
					</p>
					<p onclick="toggleColor(23)" style="padding-left: 35px;">
						<a href="#" id="textColor23">Order tracking</a>
					</p>
					<p onclick="toggleColor(24)" style="padding-left: 35px;">
						<a href="#" id="textColor24">Invoice</a>
					</p>
				</div>
			</div>

			<button class="accordion-button" onclick="toggle(5), toggleColor(25)"
				id="textColor25" style="margin-bottom: 10px;">
				<span class="fa-solid fa-phone fontIcon"></span> CRM <span
					class="material-symbols-outlined rotate-icon" id="rotated-icon5">
					arrow_right </span>
			</button>
			<div class="accordion-content defaultPaddingDropdownLevel_1"
				id="show5">
				<p onclick="toggleColor(26)">
					<a href="#" id="textColor26">Analytics</a>
				</p>
				<p onclick="toggleColor(27)" class="w-100 d-flex align-items-center">
					<a href="#" class="me-2" id="textColor27">Deals</a> <i href="#"
						class="ps-2 pe-2"
						style="background-color: #c7ebff; border: 1px solid #60c6ff; border-radius: 3px; color: #005585; font-size: 8px;">NEW</i>
				</p>
				<p onclick="toggleColor(28)">
					<a href="#" id="textColor28">Deals details</a>
				</p>
				<p onclick="toggleColor(29)">
					<a href="#" id="textColor29">Leads</a>
				</p>
				<p onclick="toggleColor(30)">
					<a href="#" id="textColor30">Leads details</a>
				</p>
				<p onclick="toggleColor(31)">
					<a href="#" id="textColor31">Reports</a>
				</p>

				<div class="d-flex align-items-center width-100">
					<p onclick="toggleColor(32)"
						class="w-100 d-flex align-items-center">
						<a href="#" class="me-2" id="textColor32">Reports details</a> <i
							href="#" class="ps-2 pe-2"
							style="background-color: #c7ebff; border: 1px solid #60c6ff; border-radius: 3px; color: #005585; font-size: 8px;">NEW</i>
					</p>
				</div>

				<p onclick="toggleColor(33)">
					<a href="#" id="textColor33">Add contact</a>
				</p>
			</div>

			<button class="accordion-button" onclick="toggle(6), toggleColor(34)"
				id="textColor34" style="margin-bottom: 10px;">
				<span class="fa-solid fa-clipboard fontIcon"></span> Project
				management <span class="material-symbols-outlined rotate-icon"
					id="rotated-icon6"> arrow_right </span>
			</button>
			<div class="accordion-content defaultPaddingDropdownLevel_1"
				id="show6">
				<p onclick="toggleColor(35)">
					<a href="#" id="textColor35">Create new</a>
				</p>
				<p onclick="toggleColor(36)">
					<a href="#" id="textColor36">Project list view</a>
				</p>
			</div>

			<button class="accordion-button" onclick="toggle(7), toggleColor(37)"
				id="textColor37" style="margin-bottom: 10px;">
				<span class="fa-solid fa-envelope fontIcon"></span> Email <span
					class="material-symbols-outlined rotate-icon" id="rotated-icon7">
					arrow_right </span>
			</button>
			<div class="accordion-content defaultPaddingDropdownLevel_1"
				id="show7">
				<p onclick="toggleColor(38)">
					<a href="#" id="textColor38">Inbox</a>
				</p>
				<p onclick="toggleColor(39)">
					<a href="#" id="textColor39">Chat details</a>
				</p>
			</div>

			<button class="accordion-button" onclick="toggle(8), toggleColor(40)"
				id="textColor40" style="margin-bottom: 10px;">
				<span class="fa-solid fa-bookmark fontIcon"></span> Pages <span
					class="material-symbols-outlined rotate-icon" id="rotated-icon8">
					arrow_right </span>
			</button>
			<div class="accordion-content defaultPaddingDropdownLevel_1"
				id="show8">
				<p onclick="toggleColor(41)">
					<a href="#" id="textColor41">Login</a>
				</p>
				<p onclick="toggleColor(42)">
					<a href="#" id="textColor42">Register</a>
				</p>
				<p onclick="toggleColor(422)">
					<a href="#" id="textColor42">Forgot password</a>
				</p>
			</div>

			<button class="accordion-button" onclick="toggleColor(43)"
				id="textColor43" style="margin-bottom: 10px;">
				<span class="fa-solid fa-message fontIcon"></span> Chats
			</button>

			<button class="accordion-button"
				onclick="content(event,'contentChart', 'content'), toggleColor(44)"
				id="textColor44" style="margin-bottom: 10px;">
				<span class="fi fi-sr-square-kanban fontIcon"></span>Chart
			</button>

			<button class="accordion-button"
				onclick="toggle(10), toggleColor(47)" id="textColor47"
				style="margin-bottom: 10px;">
				<span class="fa-solid fa-share-nodes fontIcon"></span> Social <span
					class="material-symbols-outlined rotate-icon" id="rotated-icon10">
					arrow_right </span>
			</button>
			<div class="accordion-content defaultPaddingDropdownLevel_1"
				id="show10">
				<p onclick="toggleColor(48)">
					<a href="#" id="textColor48">Inbox</a>
				</p>
				<p onclick="toggleColor(49)">
					<a href="#" id="textColor49">Chat details</a>
				</p>
			</div>

			<button class="accordion-button" onclick="toggleColor(50)"
				id="textColor50" style="margin-bottom: 10px;">
				<span class="fa-solid fa-calendar fontIcon"></span> Calendar
			</button>
		</div>
		<!-- =====colum-right===== -->
		<div class="container-fluid colum-right">
			<div class="content open" id="contentProducts">
				<div class="container-fluid grid px-0">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item " aria-current="page"><a href="#">E
									commerce</a></li>
							<li class="breadcrumb-item active" aria-current="page">Admin</li>
							<li class="breadcrumb-item active" aria-current="page">Products</li>
						</ol>
					</nav>
					<h2
						class="my-6 font-semibold text-2xl text-gray-700 dark:text-gray-200">
						Products</h2>

					<div class="d-flex flex-wrap gap-3 justify-content-between mb-4">
						<div class="d-flex flex-wrap gap-3 align-items-center">
							<div class="search-box">
								<form role="search">
									<div class="position-relative">
										<input class="form-control search-input search fs-9"
											id="searchBar" name="searchBar" type="text"
											placeholder="Search products" />
										<ul class="listItem position-absolute"
											style="list-style: none; background-color: white;"></ul>
									</div>
									<span class="fas fa-search search-box-icon"></span>
								</form>
							</div>

							<div class="d-inline-flex" style="padding-top: 2px;">
								<div class="myDropdown" style="margin: 3px;"
									onclick="contentAuto(event,'type','myDropdown-menu')">
									<button class="border border-radius-sm p-1 fs-9 d-flex"
										type="button">
										CATEGORY <span class="fas fa-angle-down ms-2 mt-1"></span>
									</button>
									<ul
										class="filter myDropdown-menu display-none border border-radius-sm fs-9"
										id="type">
										<li><button data-name="all" type="button" href="#">All</button></li>
										<li><button data-name="1" type="button" href="#">Shirt</button></li>
										<li><button data-name="2" type="button" href="#">Trousers</button></li>
										<li><button data-name="3" type="button" href="#">Bags</button></li>
										<li><button data-name="4" type="button" href="#">Socks</button></li>
										<li><button data-name="5" type="button" href="#">Hats</button></li>
									</ul>
								</div>
							</div>
						</div>

						<div class="text-end center">
							<button class="btn btn-link d-flex text-body me-4 px-0 center">
								<span class="fa-solid fa-file-export fs-9 me-2"></span> Export
							</button>
							<button class="btn btn-primary d-flex center" id="addBtn"
								>
								<span class="fas fa-plus me-2"></span> <a href="addProduct.jsp">Add product</a>
							</button>
						</div>
					</div>
					<div class="w-full overflow-hidden">
						<div class="w-full overflow-x-auto" style="scrollbar-width: none;">
							<form action="NtStore" method="post">
								<table class="table  fs-9 mb-0">
									<thead>
										<tr>
											<th class="align-middle" style="width: 5%;">
												<div class="form-check center">
													<input class="form-check-input"
														id="checkbox-bulk-products-select" type="checkbox"
														data-bulk-select='{"body":"products-table-body"}' />
												</div>
											</th>
											<th class="align-middle fs-10 " scope="col" style="width: 5%">ID</th>
											<th class="align-middle fs-10" scope="col" style="width: 10%"></th>
											<th class="align-middle" scope="col"
												style="width: 20%; min-width: 200px;" data-sort>PRODUCT
												NAME</th>
											<th class="align-middle" scope="col" data-sort=""
												style="width: 10%; max-width: 10px;">CATEGORY</th>
											<th class="align-middle " scope="col" data-sort=""
												style="width: 5%; min-width: 100px;">PRICE</th>
											<th class="align-middle " scope="col" data-sort=""
												style="width: 10%;">COLOR</th>
											<th class="align-middle " scope="col" data-sort=""
												style="width: 10%; min-width: 250px;">DECRIPTION</th>
											<th class="align-middle" scope="col" style="width: 10%;"></th>
										</tr>
									</thead>
									<%
									DAO service = new DaoImplement();
									request.setAttribute("category", service);
									List<Products> Product = service.getProducts();
									request.setAttribute("Product", Product);
									%>

									<tbody class="filterable-cards" id="">
										<c:forEach var="product" items="${Product}" varStatus="loop">
											<!--  varStatus="loop" create value index for loop -->

											<tr class="" data-name="${product.category_id}">
												<td class="align-middle">
													<div class="form-check center">
														<input class="form-check-input" type="checkbox"
															data-bulk-select-row='{"product":"Fitbit Sense Advanced Smartwatch with Tools for Heart Health, Stress Management & Skin Temperature Trends, Carbon/Graphite, One Size (S & L Bands...","productImage":"/products/1.png","price":"$39","category":"Plants","tags":["Health","Exercise","Discipline","Lifestyle","Fitness"],"star":false,"vendor":"Blue Olive Plant sellers. Inc","publishedOn":"Nov 12, 10:45 PM"}' />
													</div>
												</td>
												<td class="align-middle"><a class="" href="">
														${product.product_id} </a></td>
												<td class="align-middle"><a class="center" href="">
														<img class="border-radius-lg" src="${product.images[0]}"
														alt="" width="53" />
												</a></td>
												<td class="product align-middle pe-5"><a
													class="fw-semibold line-clamp-3 mb-0 white-space-nowrap"
													href=""> ${product.product_name} </a></td>
												<td class="align-middle white-space-nowrap fs-9">${category.getCategoryName(product.category_id)}</td>
												<td class="align-middle white-space-nowrap fs-9">$${product.price}</td>
												<td class="align-middle white-space-nowrap fs-9">${product.colors[0]}</td>
												<td class="align-middle white-space-nowrap fs-9">${product.description}</td>

												<td class="align-middle white-space-nowrap text-center btn-reveal-trigger">
													<form action="NtStore" method="post">
														<input type="hidden" name="productId" value="${product.product_id}">
														<button class="me-2"  type="submit"><i class="fa-solid fa-pen text-primary"></i></button>												
														<button  name="implement" value="remove" type="submit"><i class="fa-solid fa-trash text-danger"></i></button>
													</form>
												</td>
											</tr>
										</c:forEach>
									</tbody>

								</table>
							</form>
						</div>

						<div
							class="row align-items-center justify-content-between py-2 pe-0 fs-9">
							<div class="col-auto d-flex">
								<p class="mb-0 d-none d-sm-block me-3 fw-semibold text-body"
									data-list-info="data-list-info"></p>
								<a class="fw-semibold" href="#!" data-list-view="*">View all<span
									class="fas fa-angle-right ms-1" data-fa-transform="down-1"></span></a><a
									class="fw-semibold d-none" href="#!" data-list-view="less">View
									Less<span class="fas fa-angle-right ms-1"
									data-fa-transform="down-1"></span>
								</a>
							</div>
							<div class="col-auto d-flex">
								<button class="page-link" data-list-pagination="prev">
									<span class="fas fa-chevron-left"></span>
								</button>
								<ul class="mb-0 pagination"></ul>
								<button class="page-link pe-0" data-list-pagination="next">
									<span class="fas fa-chevron-right"></span>
								</button>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

</body>
<script src="js/app.js"></script>
<script src="js/charts-bars.js"></script>
<script src="js/charts-lines.js"></script>
<script src="js/charts-pie.js"></script>
<script src="js/focus-trap.js"></script>
<script src="js/init-alpine.js"></script>
<script src="js/tinyMCE.js"></script>
<script src="js/uploadFile.js"></script>
<script src="js/filterable.js"></script>
<script src="js/autoComplete.js"></script>

</html>