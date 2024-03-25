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
<title>Dashboard</title>


</head>
<body>
	<div class="container-fluid px-0">
		<!-- =====header===== -->
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
				<span class="fa-solid fa-house fontIcon"></span><a href="dashboard.jsp">Dashboard</a>
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
					<p style="padding-left: 35px;">
						<a href="addProduct.jsp" id="">Add product</a>
					</p>
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
		   <div class="content open" id="contentOrderDetail">
		    <div class="container-fluid grid px-0">
               <nav aria-label="breadcrumb">
                  <ol class="breadcrumb">
                     <li class="breadcrumb-item active" aria-current="page">Home</li>
                  </ol>
               </nav>
               <h2 class="my-6 text-2xl font-semibold text-gray-700 ">
                  E-commerce Dashboard
               </h2>
               <!-- Cards -->
               <div class="grid gap-6 mb-8 md:grid-cols-2 xl:grid-cols-4">
                  <!-- Card -->
                  <div class="flex items-center p-4 bg-white rounded-lg shadow-xs ">
                     <div class="mr-4 text-orange-500 bg-orange-100 rounded-full dark:text-orange-100 dark:bg-orange-500 center" style="width: 50px; height: 50px; border-radius: 50%;">
                        <i class="fa-brands fa-product-hunt"></i>
                     </div>
                     <div>
                        <p class="mb-2 text-sm font-medium text-gray-600 dark:text-gray-400">
                           New products
                        </p>
                        <p class="text-lg font-semibold text-gray-700 dark:text-gray-200">
                           25
                        </p>
                     </div>
                  </div>
                  <!-- Card -->
                  <div class="flex items-center p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800">
                     <div class="mr-4 text-green-500 bg-green-100 rounded-full dark:text-green-100 dark:bg-green-500 center" style="width: 50px; height: 50px; border-radius: 50%;">
                        <i class="fa-solid fa-people-group"></i>
                     </div>
                     <div>
                        <p class="mb-2 text-sm font-medium text-gray-600 dark:text-gray-400">
                           New members
                        </p>
                        <p class="text-lg font-semibold text-gray-700 dark:text-gray-200">
                           100
                        </p>
                     </div>
                  </div>
                  <!-- Card -->
                  <div class="flex items-center p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800">
                     <div class="mr-4 text-blue-500 bg-blue-100 rounded-full dark:text-blue-100 dark:bg-blue-500 center" style="width: 50px; height: 50px; border-radius: 50%;">
                        <i class="fa-solid fa-cart-shopping"></i>
                     </div>
                     <div>
                        <p class="mb-2 text-sm font-medium text-gray-600 dark:text-gray-400">
                           New sales
                        </p>
                        <p class="text-lg font-semibold text-gray-700 dark:text-gray-200">
                           376
                        </p>
                     </div>
                  </div>
                  <!-- Card -->
                  <div class="flex items-center p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800">
                     <div class="mr-4 text-teal-500 bg-teal-100 rounded-full dark:text-teal-100 dark:bg-teal-500 center" style="width: 50px; height: 50px; border-radius: 50%;">
                        <i class="fa-solid fa-crown"></i>
                     </div>
                     <div>
                        <p class="mb-2 text-sm font-medium text-gray-600 dark:text-gray-400">
                           Highest access
                        </p>
                        <p class="text-lg font-semibold text-gray-700 dark:text-gray-200">
                           1000
                        </p>
                     </div>
                  </div>
               </div>
               <h1 class="my-3 text-xl font-semibold text-gray-700">Lasted reviews</h1>
               <!-- New Table -->
               <div class="w-full overflow-hidden">
                  <!-- =====table1====== -->
                  <div class="w-full overflow-x-auto pageNumber open" id="page1">
                     <table class="table mb-0 fs-9 border-top">
                        <thead>
                           <tr>
                              <th class="align-middle">
                                 <div class="form-check center">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
                                 </div>
                              </th>
                              <th class=""></th>
                              <th class="align-middle" style="min-width:350px;">PRODUCT</th>
                              <th class="align-middle" scope="col" data-sort="customer" style="min-width:200px;">CUSTOMER</th>
                              <th class="align-middle" scope="col" data-sort="rating" style="min-width:110px;">RATING</th>
                              <th class="align-middle" scope="col" style="max-width:350px;" data-sort="review">REVIEW</th>
                              <th class="align-middle" scope="col" data-sort="time">TIME</th>
                           </tr>
                        </thead>
                        <tbody class="list" id="table-latest-review-body">
                           <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                              <td class="align-middle">
                                 <div class="form-check center">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
                                 </div>
                              </td>
                              <td class="align-middle">
                                 <a class="" href="#">
                                    <img class="border-radius-lg" src="image/products-no-bg/insta_1_img.png" alt="img" width="53" style="border-radius:5px; max-width: none;" />
                                 </a>
                              </td>
                              <td class="align-middle"><a class="fw-semibold" href="#">Fitbit Sense Advanced Smartwatch with Tools fo...</a></td>
                              <td class="align-middle">
                                 <a class="d-flex align-items-center text-body" href="#">
                                    <div class="customer_img">
                                       <img src="image/customer1.jpg" alt="imgCustomer">
                                    </div>
                                    <h6 class="mb-0 ms-3 text-body">Richard Dawkins</h6>
                                 </a>
                              </td>
                              <td class="align-middle fs-10">
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                              </td>
                              <td class="align-middle review" style="min-width:350px;">
                                 <p class="fs-9 fw-semibold mb-0">This Fitbit is fantastic! I was trying to be in better shape and needed some motivation, so I decided to treat myself to a new Fitbit.</p>
                              </td>
                              <td class="align-middle text-start">
                                 <div class="hover-hide">
                                    <h6 class="text-body-highlight mb-0">Just now</h6>
                                 </div>
                              </td>
                           </tr>
                           <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                              <td class="align-middle">
                                 <div class="form-check center">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
                                 </div>
                              </td>
                              <td class="align-middle">
                                 <a class="" href="#">
                                    <img class="border-radius-lg" src="image/products-no-bg/insta_1_img.png" alt="img" width="53" />
                                 </a>
                              </td>
                              <td class="align-middle"><a class="fw-semibold" href="#">Fitbit Sense Advanced Smartwatch with Tools fo...</a></td>
                              <td class="align-middle">
                                 <a class="d-flex align-items-center text-body" href="#">
                                    <div class="customer_img">
                                       <img src="image/customer2.jpg" alt="imgCustomer">
                                    </div>
                                    <h6 class="mb-0 ms-3 text-body">Richard Dawkins</h6>
                                 </a>
                              </td>
                              <td class="align-middle fs-10">
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                              </td>
                              <td class="align-middle review" style="min-width:350px;">
                                 <p class="fs-9 fw-semibold mb-0">This Fitbit is fantastic! I was trying to be in better shape and needed some motivation, so I decided to treat myself to a new Fitbit.</p>
                              </td>
                              <td class="align-middle text-start">
                                 <div class="hover-hide">
                                    <h6 class="text-body-highlight mb-0">Just now</h6>
                                 </div>
                              </td>
                           </tr>
                           <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                              <td class="align-middle">
                                 <div class="form-check center">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
                                 </div>
                              </td>
                              <td class="align-middle">
                                 <a class="" href="#">
                                    <img class="border-radius-lg" src="image/products-no-bg/insta_2_img.png" alt="img" width="53" style="border-radius:5px; max-width: none;" />
                                 </a>
                              </td>
                              <td class="align-middle"><a class="fw-semibold" href="#">Fitbit Sense Advanced Smartwatch with Tools fo...</a></td>
                              <td class="align-middle">
                                 <a class="d-flex align-items-center text-body" href="#">
                                    <div class="customer_img">
                                       <img src="image/customer3.jpg" alt="imgCustomer">
                                    </div>
                                    <h6 class="mb-0 ms-3 text-body">Richard Dawkins</h6>
                                 </a>
                              </td>
                              <td class="align-middle fs-10">
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                              </td>
                              <td class="align-middle review" style="min-width:350px;">
                                 <p class="fs-9 fw-semibold mb-0">This Fitbit is fantastic! I was trying to be in better shape and needed some motivation, so I decided to treat myself to a new Fitbit.</p>
                              </td>
                              <td class="align-middle text-start">
                                 <div class="hover-hide">
                                    <h6 class="text-body-highlight mb-0">Just now</h6>
                                 </div>
                              </td>
                           </tr>
                           <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                              <td class="align-middle">
                                 <div class="form-check center">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
                                 </div>
                              </td>
                              <td class="align-middle">
                                 <a class="" href="#">
                                    <img class="border-radius-lg" src="image/products-no-bg/insta_3_img.png" alt="img" width="53" style="border-radius:5px; max-width: none;" />
                                 </a>
                              </td>
                              <td class="align-middle"><a class="fw-semibold" href="#">Fitbit Sense Advanced Smartwatch with Tools fo...</a></td>
                              <td class="align-middle">
                                 <a class="d-flex align-items-center text-body" href="#">
                                    <div class="customer_img">
                                       <img src="image/customer4.jpg" alt="imgCustomer">
                                    </div>
                                    <h6 class="mb-0 ms-3 text-body">Richard Dawkins</h6>
                                 </a>
                              </td>
                              <td class="align-middle fs-10">
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                              </td>
                              <td class="align-middle review" style="min-width:350px;">
                                 <p class="fs-9 fw-semibold mb-0">This Fitbit is fantastic! I was trying to be in better shape and needed some motivation, so I decided to treat myself to a new Fitbit.</p>
                              </td>
                              <td class="align-middle text-start">
                                 <div class="hover-hide">
                                    <h6 class="text-body-highlight mb-0">Just now</h6>
                                 </div>
                              </td>
                           </tr>
                           <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                              <td class="align-middle">
                                 <div class="form-check center">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
                                 </div>
                              </td>
                              <td class="align-middle">
                                 <a class="" href="#">
                                    <img class="border-radius-lg" src="image/products-no-bg/insta_4_img.png" alt="img" width="53" style="border-radius:5px; max-width: none;" />
                                 </a>
                              </td>
                              <td class="align-middle"><a class="fw-semibold" href="#">Fitbit Sense Advanced Smartwatch with Tools fo...</a></td>
                              <td class="align-middle">
                                 <a class="d-flex align-items-center text-body" href="#">
                                    <div class="customer_img">
                                       <img src="image/customer5.jpg" alt="imgCustomer">
                                    </div>
                                    <h6 class="mb-0 ms-3 text-body">Richard Dawkins</h6>
                                 </a>
                              </td>
                              <td class="align-middle fs-10">
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                              </td>
                              <td class="align-middle review" style="min-width:350px;">
                                 <p class="fs-9 fw-semibold mb-0">This Fitbit is fantastic! I was trying to be in better shape and needed some motivation, so I decided to treat myself to a new Fitbit.</p>
                              </td>
                              <td class="align-middle text-start">
                                 <div class="hover-hide">
                                    <h6 class="text-body-highlight mb-0">Just now</h6>
                                 </div>
                              </td>
                           </tr>
                           <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                              <td class="align-middle">
                                 <div class="form-check center">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
                                 </div>
                              </td>
                              <td class="align-middle">
                                 <a class="" href="#">
                                    <img class="border-radius-lg" src="image/products-no-bg/p1.1_croptop_2d.png" alt="img" width="53" style="border-radius:5px; max-width: none;" />
                                 </a>
                              </td>
                              <td class="align-middle"><a class="fw-semibold" href="#">Fitbit Sense Advanced Smartwatch with Tools fo...</a></td>
                              <td class="align-middle">
                                 <a class="d-flex align-items-center text-body" href="#">
                                    <div class="customer_img">
                                       <img src="image/customer6.jpg" alt="imgCustomer">
                                    </div>
                                    <h6 class="mb-0 ms-3 text-body">Richard Dawkins</h6>
                                 </a>
                              </td>
                              <td class="align-middle fs-10">
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                              </td>
                              <td class="align-middle review" style="min-width:350px;">
                                 <p class="fs-9 fw-semibold mb-0">This Fitbit is fantastic! I was trying to be in better shape and needed some motivation, so I decided to treat myself to a new Fitbit.</p>
                              </td>
                              <td class="align-middle text-start">
                                 <div class="hover-hide">
                                    <h6 class="text-body-highlight mb-0">Just now</h6>
                                 </div>
                              </td>
                           </tr>
                           <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                              <td class="align-middle">
                                 <div class="form-check center">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
                                 </div>
                              </td>
                              <td class="align-middle">
                                 <a class="" href="#">
                                    <img class="border-radius-lg" src="image/products-no-bg/p1.2_croptop_2d.png" alt="img" width="53" style="border-radius:5px; max-width: none;" />
                                 </a>
                              </td>
                              <td class="align-middle"><a class="fw-semibold" href="#">Fitbit Sense Advanced Smartwatch with Tools fo...</a></td>
                              <td class="align-middle">
                                 <a class="d-flex align-items-center text-body" href="#">
                                    <div class="customer_img">
                                       <img src="image/customer7.jpg" alt="imgCustomer">
                                    </div>
                                    <h6 class="mb-0 ms-3 text-body">Richard Dawkins</h6>
                                 </a>
                              </td>
                              <td class="align-middle fs-10">
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                              </td>
                              <td class="align-middle review" style="min-width:350px;">
                                 <p class="fs-9 fw-semibold mb-0">This Fitbit is fantastic! I was trying to be in better shape and needed some motivation, so I decided to treat myself to a new Fitbit.</p>
                              </td>
                              <td class="align-middle text-start">
                                 <div class="hover-hide">
                                    <h6 class="text-body-highlight mb-0">Just now</h6>
                                 </div>
                              </td>
                           </tr>
                        </tbody>
                     </table>
                  </div>
                  <!-- =====table2====== -->
                  <div class="w-full overflow-x-auto pageNumber" id="page2">
                     <table class="table mb-0 fs-9 border-top">
                        <thead>
                           <tr>
                              <th class="align-middle">
                                 <div class="form-check center">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
                                 </div>
                              </th>
                              <th class=""></th>
                              <th class="" style="min-width:350px;">PRODUCT</th>
                              <th class="align-middle" scope="col" data-sort="customer" style="min-width:200px;">CUSTOMER</th>
                              <th class="align-middle" scope="col" data-sort="rating" style="min-width:110px;">RATING</th>
                              <th class="align-middle" scope="col" style="max-width:350px;" data-sort="review">REVIEW</th>
                              <th class="align-middle" scope="col" data-sort="time">TIME</th>
                           </tr>
                        </thead>
                        <tbody class="list" id="table-latest-review-body">
                           <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                              <td class="align-middle">
                                 <div class="form-check center">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
                                 </div>
                              </td>
                              <td class="align-middle">
                                 <a class="" href="#">
                                    <img src="image/products-no-bg/insta_1_img.png" alt="img" width="60" style="border-radius:5px; max-width: none;" />
                                 </a>
                              </td>
                              <td class="align-middle"><a class="fw-semibold" href="#">Fitbit Sense Advanced Smartwatch with Tools fo...</a></td>
                              <td class="align-middle">
                                 <a class="d-flex align-items-center text-body" href="#">
                                    <div class="customer_img">
                                       <img src="image/customer1.jpg" alt="imgCustomer">
                                    </div>
                                    <h6 class="mb-0 ms-3 text-body">Richard Dawkins</h6>
                                 </a>
                              </td>
                              <td class="align-middle fs-10">
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                              </td>
                              <td class="align-middle review" style="min-width:350px;">
                                 <p class="fs-9 fw-semibold mb-0">This Fitbit is fantastic! I was trying to be in better shape and needed some motivation, so I decided to treat myself to a new Fitbit.</p>
                              </td>
                              <td class="align-middle text-start">
                                 <div class="hover-hide">
                                    <h6 class="text-body-highlight mb-0">Just now</h6>
                                 </div>
                              </td>
                           </tr>
                           <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                              <td class="align-middle">
                                 <div class="form-check center">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
                                 </div>
                              </td>
                              <td class="align-middle">
                                 <a class="" href="#">
                                    <img src="image/products-no-bg/insta_1_img.png" alt="img" width="60" style="border-radius:5px; max-width: none;" />
                                 </a>
                              </td>
                              <td class="align-middle"><a class="fw-semibold" href="#">Fitbit Sense Advanced Smartwatch with Tools fo...</a></td>
                              <td class="align-middle">
                                 <a class="d-flex align-items-center text-body" href="#">
                                    <div class="customer_img">
                                       <img src="image/customer2.jpg" alt="imgCustomer">
                                    </div>
                                    <h6 class="mb-0 ms-3 text-body">Richard Dawkins</h6>
                                 </a>
                              </td>
                              <td class="align-middle fs-10">
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                              </td>
                              <td class="align-middle review" style="min-width:350px;">
                                 <p class="fs-9 fw-semibold mb-0">This Fitbit is fantastic! I was trying to be in better shape and needed some motivation, so I decided to treat myself to a new Fitbit.</p>
                              </td>
                              <td class="align-middle text-start">
                                 <div class="hover-hide">
                                    <h6 class="text-body-highlight mb-0">Just now</h6>
                                 </div>
                              </td>
                           </tr>
                           <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                              <td class="align-middle">
                                 <div class="form-check center">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
                                 </div>
                              </td>
                              <td class="align-middle">
                                 <a class="" href="#">
                                    <img src="image/products-no-bg/insta_2_img.png" alt="img" width="60" style="border-radius:5px; max-width: none;" />
                                 </a>
                              </td>
                              <td class="align-middle"><a class="fw-semibold" href="#">Fitbit Sense Advanced Smartwatch with Tools fo...</a></td>
                              <td class="align-middle">
                                 <a class="d-flex align-items-center text-body" href="#">
                                    <div class="customer_img">
                                       <img src="image/customer3.jpg" alt="imgCustomer">
                                    </div>
                                    <h6 class="mb-0 ms-3 text-body">Richard Dawkins</h6>
                                 </a>
                              </td>
                              <td class="align-middle fs-10">
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                              </td>
                              <td class="align-middle review" style="min-width:350px;">
                                 <p class="fs-9 fw-semibold mb-0">This Fitbit is fantastic! I was trying to be in better shape and needed some motivation, so I decided to treat myself to a new Fitbit.</p>
                              </td>
                              <td class="align-middle text-start">
                                 <div class="hover-hide">
                                    <h6 class="text-body-highlight mb-0">Just now</h6>
                                 </div>
                              </td>
                           </tr>
                           <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                              <td class="align-middle">
                                 <div class="form-check center">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
                                 </div>
                              </td>
                              <td class="align-middle">
                                 <a class="" href="#">
                                    <img src="image/products-no-bg/insta_3_img.png" alt="img" width="60" style="border-radius:5px; max-width: none;" />
                                 </a>
                              </td>
                              <td class="align-middle"><a class="fw-semibold" href="#">Fitbit Sense Advanced Smartwatch with Tools fo...</a></td>
                              <td class="align-middle">
                                 <a class="d-flex align-items-center text-body" href="#">
                                    <div class="customer_img">
                                       <img src="image/customer4.jpg" alt="imgCustomer">
                                    </div>
                                    <h6 class="mb-0 ms-3 text-body">Richard Dawkins</h6>
                                 </a>
                              </td>
                              <td class="align-middle fs-10">
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                              </td>
                              <td class="align-middle review" style="min-width:350px;">
                                 <p class="fs-9 fw-semibold mb-0">This Fitbit is fantastic! I was trying to be in better shape and needed some motivation, so I decided to treat myself to a new Fitbit.</p>
                              </td>
                              <td class="align-middle text-start">
                                 <div class="hover-hide">
                                    <h6 class="text-body-highlight mb-0">Just now</h6>
                                 </div>
                              </td>
                           </tr>
                           <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                              <td class="align-middle">
                                 <div class="form-check center">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
                                 </div>
                              </td>
                              <td class="align-middle">
                                 <a class="" href="#">
                                    <img src="image/products-no-bg/insta_4_img.png" alt="img" width="60" style="border-radius:5px; max-width: none;" />
                                 </a>
                              </td>
                              <td class="align-middle"><a class="fw-semibold" href="#">Fitbit Sense Advanced Smartwatch with Tools fo...</a></td>
                              <td class="align-middle">
                                 <a class="d-flex align-items-center text-body" href="#">
                                    <div class="customer_img">
                                       <img src="image/customer5.jpg" alt="imgCustomer">
                                    </div>
                                    <h6 class="mb-0 ms-3 text-body">Richard Dawkins</h6>
                                 </a>
                              </td>
                              <td class="align-middle fs-10">
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                              </td>
                              <td class="align-middle review" style="min-width:350px;">
                                 <p class="fs-9 fw-semibold mb-0">This Fitbit is fantastic! I was trying to be in better shape and needed some motivation, so I decided to treat myself to a new Fitbit.</p>
                              </td>
                              <td class="align-middle text-start">
                                 <div class="hover-hide">
                                    <h6 class="text-body-highlight mb-0">Just now</h6>
                                 </div>
                              </td>
                           </tr>
                        </tbody>
                     </table>
                  </div>
                  <!-- =====table3====== -->
                  <div class="w-full overflow-x-auto pageNumber" id="page3">
                     <table class="table mb-0 fs-9 border-top">
                        <thead>
                           <tr>
                              <th class="ps-1 align-middle">
                                 <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
                                 </div>
                              </th>
                              <th class=""></th>
                              <th class="" style="min-width:350px;">PRODUCT</th>
                              <th class="align-middle" scope="col" data-sort="customer" style="min-width:200px;">CUSTOMER</th>
                              <th class="align-middle" scope="col" data-sort="rating" style="min-width:110px;">RATING</th>
                              <th class="align-middle" scope="col" style="max-width:350px;" data-sort="review">REVIEW</th>
                              <th class="align-middle" scope="col" data-sort="time">TIME</th>
                           </tr>
                        </thead>
                        <tbody class="list" id="table-latest-review-body">
                           <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                              <td class="ps-1 align-middle">
                                 <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
                                 </div>
                              </td>
                              <td class="align-middle">
                                 <a class="" href="#">
                                    <img src="image/products-no-bg/p1.1_croptop_2d.png" alt="img" width="60" style="border-radius:5px; max-width: none;" />
                                 </a>
                              </td>
                              <td class="align-middle"><a class="fw-semibold" href="#">Fitbit Sense Advanced Smartwatch with Tools fo...</a></td>
                              <td class="align-middle">
                                 <a class="d-flex align-items-center text-body" href="#">
                                    <div class="customer_img">
                                       <img src="image/customer6.jpg" alt="imgCustomer">
                                    </div>
                                    <h6 class="mb-0 ms-3 text-body">Richard Dawkins</h6>
                                 </a>
                              </td>
                              <td class="align-middle fs-10">
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                              </td>
                              <td class="align-middle review" style="min-width:350px;">
                                 <p class="fs-9 fw-semibold mb-0">This Fitbit is fantastic! I was trying to be in better shape and needed some motivation, so I decided to treat myself to a new Fitbit.</p>
                              </td>
                              <td class="align-middle text-start">
                                 <div class="hover-hide">
                                    <h6 class="text-body-highlight mb-0">Just now</h6>
                                 </div>
                              </td>
                           </tr>
                           <tr class="hover-actions-trigger btn-reveal-trigger position-static">
                              <td class="ps-1 align-middle">
                                 <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
                                 </div>
                              </td>
                              <td class="align-middle">
                                 <a class="" href="#">
                                    <img src="image/products-no-bg/p1.2_croptop_2d.png" alt="img" width="60" style="border-radius:5px; max-width: none;" />
                                 </a>
                              </td>
                              <td class="align-middle"><a class="fw-semibold" href="#">Fitbit Sense Advanced Smartwatch with Tools fo...</a></td>
                              <td class="align-middle">
                                 <a class="d-flex align-items-center text-body" href="#">
                                    <div class="customer_img">
                                       <img src="image/customer7.jpg" alt="imgCustomer">
                                    </div>
                                    <h6 class="mb-0 ms-3 text-body">Richard Dawkins</h6>
                                 </a>
                              </td>
                              <td class="align-middle fs-10">
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                                 <span class="fa fa-star text-warning"></span>
                              </td>
                              <td class="align-middle review" style="min-width:350px;">
                                 <p class="fs-9 fw-semibold mb-0">This Fitbit is fantastic! I was trying to be in better shape and needed some motivation, so I decided to treat myself to a new Fitbit.</p>
                              </td>
                              <td class="align-middle text-start">
                                 <div class="hover-hide">
                                    <h6 class="text-body-highlight mb-0">Just now</h6>
                                 </div>
                              </td>
                           </tr>
                        </tbody>
                     </table>
                  </div>
                  <!-- =====table4====== -->
                  <div class="w-full overflow-x-auto pageNumber" id="page4">
                     <table class="w-full whitespace-no-wrap">
                        <thead>
                           <tr class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                              <th class="px-4 py-3">Client</th>
                              <th class="px-4 py-3">Amount</th>
                              <th class="px-4 py-3">Status</th>
                              <th class="px-4 py-3">Date</th>
                           </tr>
                        </thead>
                        <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">

                           <tr class="text-gray-700 dark:text-gray-400">
                              <td class="px-4 py-3">
                                 <div class="flex items-center text-sm">
                                    <!-- Avatar with inset shadow -->
                                    <div class="relative hidden w-8 h-8 mr-3 rounded-full md:block">
                                       <img class="object-cover w-full h-full rounded-full" src="https://images.unsplash.com/photo-1551069613-1904dbdcda11?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max&ixid=eyJhcHBfaWQiOjE3Nzg0fQ"
                                          alt="" loading="lazy" />
                                       <div class="absolute inset-0 rounded-full shadow-inner" aria-hidden="true"></div>
                                    </div>
                                    <div>
                                       <p class="font-semibold">Sarah Curry</p>
                                       <p class="text-xs text-gray-600 dark:text-gray-400">
                                          Designer
                                       </p>
                                    </div>
                                 </div>
                              </td>
                              <td class="px-4 py-3 text-sm">
                                 $ 86.00
                              </td>
                              <td class="px-4 py-3 text-xs">
                                 <span class="px-2 py-1 font-semibold leading-tight text-red-700 bg-red-100 rounded-full dark:text-red-100 dark:bg-red-700">
                                    Denied
                                 </span>
                              </td>
                              <td class="px-4 py-3 text-sm">
                                 6/10/2020
                              </td>
                           </tr>

                           <tr class="text-gray-700 dark:text-gray-400">
                              <td class="px-4 py-3">
                                 <div class="flex items-center text-sm">
                                    <!-- Avatar with inset shadow -->
                                    <div class="relative hidden w-8 h-8 mr-3 rounded-full md:block">
                                       <img class="object-cover w-full h-full rounded-full" src="https://images.unsplash.com/photo-1551006917-3b4c078c47c9?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max&ixid=eyJhcHBfaWQiOjE3Nzg0fQ"
                                          alt="" loading="lazy" />
                                       <div class="absolute inset-0 rounded-full shadow-inner" aria-hidden="true"></div>
                                    </div>
                                    <div>
                                       <p class="font-semibold">Rulia Joberts</p>
                                       <p class="text-xs text-gray-600 dark:text-gray-400">
                                          Actress
                                       </p>
                                    </div>
                                 </div>
                              </td>
                              <td class="px-4 py-3 text-sm">
                                 $ 1276.45
                              </td>
                              <td class="px-4 py-3 text-xs">
                                 <span class="px-2 py-1 font-semibold leading-tight text-green-700 bg-green-100 rounded-full dark:bg-green-700 dark:text-green-100">
                                    Approved
                                 </span>
                              </td>
                              <td class="px-4 py-3 text-sm">
                                 6/10/2020
                              </td>
                           </tr>

                           <tr class="text-gray-700 dark:text-gray-400">
                              <td class="px-4 py-3">
                                 <div class="flex items-center text-sm">
                                    <!-- Avatar with inset shadow -->
                                    <div class="relative hidden w-8 h-8 mr-3 rounded-full md:block">
                                       <img class="object-cover w-full h-full rounded-full" src="https://images.unsplash.com/photo-1546456073-6712f79251bb?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max&ixid=eyJhcHBfaWQiOjE3Nzg0fQ"
                                          alt="" loading="lazy" />
                                       <div class="absolute inset-0 rounded-full shadow-inner" aria-hidden="true"></div>
                                    </div>
                                    <div>
                                       <p class="font-semibold">Wenzel Dashington</p>
                                       <p class="text-xs text-gray-600 dark:text-gray-400">
                                          Actor
                                       </p>
                                    </div>
                                 </div>
                              </td>
                              <td class="px-4 py-3 text-sm">
                                 $ 863.45
                              </td>
                              <td class="px-4 py-3 text-xs">
                                 <span class="px-2 py-1 font-semibold leading-tight text-gray-700 bg-gray-100 rounded-full dark:text-gray-100 dark:bg-gray-700">
                                    Expired
                                 </span>
                              </td>
                              <td class="px-4 py-3 text-sm">
                                 6/10/2020
                              </td>
                           </tr>

                           <tr class="text-gray-700 dark:text-gray-400">
                              <td class="px-4 py-3">
                                 <div class="flex items-center text-sm">
                                    <!-- Avatar with inset shadow -->
                                    <div class="relative hidden w-8 h-8 mr-3 rounded-full md:block">
                                       <img class="object-cover w-full h-full rounded-full"
                                          src="https://images.unsplash.com/photo-1502720705749-871143f0e671?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max&s=b8377ca9f985d80264279f277f3a67f5" alt="" loading="lazy" />
                                       <div class="absolute inset-0 rounded-full shadow-inner" aria-hidden="true"></div>
                                    </div>
                                    <div>
                                       <p class="font-semibold">Dave Li</p>
                                       <p class="text-xs text-gray-600 dark:text-gray-400">
                                          Influencer
                                       </p>
                                    </div>
                                 </div>
                              </td>
                              <td class="px-4 py-3 text-sm">
                                 $ 863.45
                              </td>
                              <td class="px-4 py-3 text-xs">
                                 <span class="px-2 py-1 font-semibold leading-tight text-green-700 bg-green-100 rounded-full dark:bg-green-700 dark:text-green-100">
                                    Approved
                                 </span>
                              </td>
                              <td class="px-4 py-3 text-sm">
                                 6/10/2020
                              </td>
                           </tr>

                        </tbody>
                     </table>
                  </div>

                  <div class="grid px-4 py-3 text-xs font-semibold items-center tracking-wide text-gray-500 uppercase border-t dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800">
                     <span class="flex items-center col-span-3">
                        <div class="Showing">Showing 1-15 of 30</div>
                     </span>
                     <span class="col-span-2"></span>
                     <!-- Pagination -->
                     <span class="flex col-span-4 sm:mt-auto sm:justify-end">
                        <nav aria-label="Table navigation">
                           <ul class="inline-flex items-center">
                              <li>
                                 <button class="px-3 py-1 rounded-md rounded-l-lg focus:outline-none focus:shadow-outline-purple" aria-label="Previous">
                                    <svg aria-hidden="true" class="w-4 h-4 fill-current" viewBox="0 0 20 20">
                                       <path d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z" clip-rule="evenodd" fill-rule="evenodd"></path>
                                    </svg>
                                 </button>
                              </li>
                              <li onclick="content(event,'page1','pageNumber'), textColor(event,'bgPagination1')" class=" ">
                                 <button class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple bgPagination text-bg-primary" id="bgPagination1">
                                    1
                                 </button>
                              </li>
                              <li onclick="content(event,'page2','pageNumber'), textColor(event,'bgPagination2')">
                                 <button class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple bgPagination" id="bgPagination2">
                                    2
                                 </button>
                              </li>
                              <li onclick="content(event,'page3','pageNumber'), textColor(event,'bgPagination3')">
                                 <button class="px-3 py-1 transition-colors duration-150  rounded-md focus:outline-none focus:shadow-outline-purple bgPagination" id="bgPagination3">
                                    3
                                 </button>
                              </li>
                              <li onclick="content(event,'page4','pageNumber'), textColor(event,'bgPagination4')">
                                 <button class="px-3 py-1 rounded-md focus:outline-none focus:shadow-outline-purple bgPagination" id="bgPagination4">
                                    4
                                 </button>
                              </li>
                              <li>
                                 <button class="px-3 py-1 rounded-md rounded-r-lg focus:outline-none focus:shadow-outline-purple" aria-label="Next">
                                    <svg class="w-4 h-4 fill-current" aria-hidden="true" viewBox="0 0 20 20">
                                       <path d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd" fill-rule="evenodd"></path>
                                    </svg>
                                 </button>
                              </li>
                           </ul>
                        </nav>
                     </span>
                  </div>
               </div>

               <!-- Charts -->
               <h2 class="my-6 text-2xl font-semibold text-gray-700 dark:text-gray-200">
                  Charts
               </h2>
               <div class="grid gap-6 mb-8 md:grid-cols-2">
                  <div class="min-w-0 p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800">
                     <h4 class="mb-4 font-semibold text-gray-800 dark:text-gray-300">
                        Revenue
                     </h4>
                     <canvas id="pie"></canvas>
                  </div>
                  <div class="min-w-0 p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800">
                     <h4 class="mb-4 font-semibold text-gray-800 dark:text-gray-300">
                        Traffic
                     </h4>
                     <canvas id="line"></canvas>
                  </div>
                  <div class="min-w-0 p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800">
                     <h4 class="mb-4 font-semibold text-gray-800 dark:text-gray-300">
                        Traffic
                     </h4>
                     <canvas id="bars"></canvas>
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