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
<title>Member Detail</title>


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
			<button class="accordion-button "
				id="textColor1" style="margin-bottom: 10px;">
				<span class="fa-solid fa-house fontIcon"></span> <a href="dashboard.jsp">Dashboard</a>
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
		   <div class="content open" id="contentMembers">
            <div class="container-fluid grid m-0 p-0">
               <nav aria-label="breadcrumb">
                  <ol class="breadcrumb">
                     <li class="breadcrumb-item " aria-current="page"><a href="#">E commerce</a></li>
                     <li class="breadcrumb-item active" aria-current="page">Admin</li>
                     <li class="breadcrumb-item active" aria-current="page">Member Details</li>
                  </ol>
               </nav>
               <h2 class="my-6 font-semibold text-2xl text-gray-700 dark:text-gray-200">
                  Member Details
               </h2>

               <div class="row g-3 h-100">
                  <div class="col-12 col-md-7 mb-xxl-3">
                     <div class="card h-100">
                        <div class="card-body d-flex pb-3">
                           <div class="col-12 d-flex align-items-center text-sm-start flex-wrap">
                              <div class="col-5 center">
                                 <div class=""><img class="rounded-circle avatar" src="image/customer1.jpg" alt="" /></div>
                              </div>
                              <div class="col-7">
                                 <h2 class="fw-semibold fs-7">Ansolo Lazinatov</h2>
                                 <div class="d-flex gap-1">
                                    <p class="text-body-secondary">Id:</p>
                                    <p class="fw-semibold text-body-secondary">0009</p>
                                 </div>
                                 <div class="d-flex gap-1">
                                    <p class="text-body-secondary">Orders:</p>
                                    <p class="fw-semibold text-body-secondary">36</p>
                                 </div>
                                 <div class="d-flex gap-1">
                                    <p class="text-body-secondary">Ranting and reviews:</p>
                                    <p class="fw-semibold text-body-secondary">43</p>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-12 col-md-5 mb-xxl-3">
                     <div class="card h-100">
                        <div class="card-body pb-3">
                           <div class="d-flex align-items-center mb-3">
                              <h3 class="me-1 fw-semibold fs-7">Default Address</h3><button class="btn btn-link p-0"><span class="fas fa-pen fs-8 ms-3 text-body-quaternary"></span></button>
                           </div>
                           <div class="mb-3">
                              <h5 class="fw-semibold fs-8">Address</h5>
                              <p class="text-body-secondary">Shatinon Mekalan<br />Vancouver, British Columbia<br />Canada</p>
                           </div>
                           <div class="mb-3">
                              <h5 class="fw-semibold fs-8">Email</h5><a type="email" href="" style="color: blue; text-decoration: underline;">shatinon@jeemail.com</a>
                           </div>
                           <h5 class="fw-semibold fs-8">Phone</h5><a class="text-body-secondary" href="tel:+1234567890" style="text-decoration: underline;">+1234567890</a>
                        </div>
                     </div>
                  </div>
                  <div class="col-12 pd-3 col-md-12 ">
                     <div class="card h-100">
                        <div class="card-body">
                           <h3 class="mb-4 fs-7 fw-semibold">Referent</h3>
                           <div class="row m-3">
                              <div class="m-2">
                                 <h5 class="card-title fw-semibold white-space-nowrap">Products interest:</h5>
                                 <div class="d-flex" style="column-gap:10px;">
                                    <p class="text-body-secondary">Polo</p>
                                    <p class="text-body-secondary">Shirt</p>
                                    <p class="text-body-secondary">Short</p>
                                 </div>
                              </div>
                              <div class="m-2">
                                 <h5 class="card-title fw-semibold white-space-nowrap">Favorite colort</h5>
                                 <div class="d-flex" style="column-gap:10px;">
                                    <p class="text-body-secondary">Red</p>
                                    <p class="text-body-secondary">Blue</p>
                                    <p class="text-body-secondary">Back</p>
                                 </div>
                              </div>
                              <div class="m-2">
                                 <h5 class="card-title fw-semibold white-space-nowrap">Price range</h5>
                                 <div class="d-flex" style="column-gap:10px;">
                                    <p class="text-body-secondary">10$ - 30$</p>
                                    <p class="text-body-secondary">30$ - 60$</p>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <!-- =====Orders===== -->
               <div class="container-fluid grid px-0">
                  <h2 class="my-6 font-semibold text-2xl text-gray-700 dark:text-gray-200">
                     Orders
                  </h2>

                  <div class="d-flex flex-wrap gap-3 justify-content-between mb-4">
                     <div class="d-flex flex-wrap gap-3 align-items-center">
                        <div class="search-box">
                           <form class="position-relative" data-bs-toggle="search" data-bs-display="static">
                              <input class="form-control search-input search fs-9" type="search" placeholder="Search orders" aria-label="Search" />
                              <span class="fas fa-search search-box-icon"></span>
                           </form>
                        </div>
                     </div>

                     <div class="text-end center">
                        <button class="btn btn-link d-flex text-body me-4 px-0 center">
                           <span class="fa-solid fa-file-export fs-9 me-2"></span>
                           Export
                        </button>
                        <button class="btn btn-primary d-flex center" id="addBtn">
                           <span class="fas fa-plus me-2"></span>
                           <a href="">Add product</a>
                        </button>
                     </div>
                  </div>
                  <div class="w-full overflow-hidden">
                     <div class="w-full overflow-x-auto">
                        <table class="table fs-9 mb-0">
                           <thead>
                              <tr>
                                 <th class="align-middle" style="width: 20%;">Order</th>
                                 <th class="align-middle" scope="col" style="width:20%">Total</th>
                                 <th class="align-middle" scope="col" style="width:20%; min-width:350px;" data-sort="product">Delivery type</th>
                                 <th class="align-middle" scope="col" data-sort="category" style="width:20%; min-width:200px;">Date</th>
                                 <th class="align-middle" scope="col" style="width:20%;"></th>
                              </tr>
                           </thead>
                           <tbody class="filterable-cards" id="">
                              <tr class="" data-name>
                                 <td class="align-middle text-primary"><a href="#">#2543</a></td>
                                 <td class="align-middle text-body-secondary">$87</td>
                                 <td class="align-middle pe-5 text-body-secondary">Fullfilled by NtFashion</td>
                                 <td class="align-middle white-space-nowrap pe-5 text-body-secondary">Dec 12, 12:56 PM</td>
                                 <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                    <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point7','myDropdown-menu')">
                                       <button class="p-1 fs-9 d-flex center" type="button">
                                          <i class="fa-solid fa-ellipsis fs-10"></i>
                                          <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                       </button>
                                       <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point7">
                                          <li><button type="button" href="#">View</button></li>
                                          <li><button type="button" href="#">Remove</button></li>
                                       </ul>
                                    </div>
                                 </td>
                              </tr>
                              <tr class="" data-name>
                                 <td class="align-middle text-primary"><a href="#">#2543</a></td>
                                 <td class="align-middle text-body-secondary">$87</td>
                                 <td class="align-middle pe-5 text-body-secondary">Fullfilled by Seller</td>
                                 <td class="align-middle white-space-nowrap pe-5 text-body-secondary">Dec 12, 12:56 PM</td>
                                 <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                    <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point8','myDropdown-menu')">
                                       <button class="p-1 fs-9 d-flex center" type="button">
                                          <i class="fa-solid fa-ellipsis fs-10"></i>
                                          <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                       </button>
                                       <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point8">
                                          <li><button type="button" href="#">View</button></li>
                                          <li><button type="button" href="#">Remove</button></li>
                                       </ul>
                                    </div>
                                 </td>
                              </tr>
                              <tr class="" data-name>
                                 <td class="align-middle text-primary"><a href="#">#2543</a></td>
                                 <td class="align-middle text-body-secondary">$87</td>
                                 <td class="align-middle pe-5 text-body-secondary">Fullfilled by NtFashion</td>
                                 <td class="align-middle white-space-nowrap pe-5 text-body-secondary">Dec 12, 12:56 PM</td>
                                 <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                    <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point9','myDropdown-menu')">
                                       <button class="p-1 fs-9 d-flex center" type="button">
                                          <i class="fa-solid fa-ellipsis fs-10"></i>
                                          <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                       </button>
                                       <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point9">
                                          <li><button type="button" href="#">View</button></li>
                                          <li><button type="button" href="#">Remove</button></li>
                                       </ul>
                                    </div>
                                 </td>
                              </tr>
                              <tr class="" data-name>
                                 <td class="align-middle text-primary"><a href="#">#2543</a></td>
                                 <td class="align-middle text-body-secondary">$87</td>
                                 <td class="align-middle pe-5 text-body-secondary">Fullfilled by Seller</td>
                                 <td class="align-middle white-space-nowrap pe-5 text-body-secondary">Dec 12, 12:56 PM</td>
                                 <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                    <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point10','myDropdown-menu')">
                                       <button class="p-1 fs-9 d-flex center" type="button">
                                          <i class="fa-solid fa-ellipsis fs-10"></i>
                                          <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                       </button>
                                       <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point10">
                                          <li><button type="button" href="#">View</button></li>
                                          <li><button type="button" href="#">Remove</button></li>
                                       </ul>
                                    </div>
                                 </td>
                              </tr>
                              <tr class="" data-name>
                                 <td class="align-middle text-primary"><a href="#">#2543</a></td>
                                 <td class="align-middle text-body-secondary">$87</td>
                                 <td class="align-middle pe-5 text-body-secondary">Fullfilled by NtFashion</td>
                                 <td class="align-middle white-space-nowrap pe-5 text-body-secondary">Dec 12, 12:56 PM</td>
                                 <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                    <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point11','myDropdown-menu')">
                                       <button class="p-1 fs-9 d-flex center" type="button">
                                          <i class="fa-solid fa-ellipsis fs-10"></i>
                                          <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                       </button>
                                       <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point11">
                                          <li><button type="button" href="#">View</button></li>
                                          <li><button type="button" href="#">Remove</button></li>
                                       </ul>
                                    </div>
                                 </td>
                              </tr>
                              <tr class="" data-name>
                                 <td class="align-middle text-primary"><a href="#">#2543</a></td>
                                 <td class="align-middle text-body-secondary">$87</td>
                                 <td class="align-middle pe-5 text-body-secondary">Fullfilled by NtFashion</td>
                                 <td class="align-middle white-space-nowrap pe-5 text-body-secondary">Dec 12, 12:56 PM</td>
                                 <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                    <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point12','myDropdown-menu')">
                                       <button class="p-1 fs-9 d-flex center" type="button">
                                          <i class="fa-solid fa-ellipsis fs-10"></i>
                                          <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                       </button>
                                       <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point12">
                                          <li><button type="button" href="#">View</button></li>
                                          <li><button type="button" href="#">Remove</button></li>
                                       </ul>
                                    </div>
                                 </td>
                              </tr>
                              <tr class="" data-name>
                                 <td class="align-middle text-primary"><a href="#">#2543</a></td>
                                 <td class="align-middle text-body-secondary">$87</td>
                                 <td class="align-middle pe-5 text-body-secondary">Fullfilled by Seller</td>
                                 <td class="align-middle white-space-nowrap pe-5 text-body-secondary">Dec 12, 12:56 PM</td>
                                 <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                    <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point13','myDropdown-menu')">
                                       <button class="p-1 fs-9 d-flex center" type="button">
                                          <i class="fa-solid fa-ellipsis fs-10"></i>
                                          <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                       </button>
                                       <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point13">
                                          <li><button type="button" href="#">View</button></li>
                                          <li><button type="button" href="#">Remove</button></li>
                                       </ul>
                                    </div>
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
               </div>
               <!-- =====Ratings & reviews===== -->
               <div class="container-fluid grid px-0">
                  <h2 class="my-6 font-semibold text-2xl text-gray-700 dark:text-gray-200">
                     Ratings & reviews
                  </h2>

                  <div class="d-flex flex-wrap gap-3 justify-content-between mb-4">
                     <div class="d-flex flex-wrap gap-3 align-items-center">
                        <div class="search-box">
                           <form class="position-relative" data-bs-toggle="search" data-bs-display="static">
                              <input class="form-control search-input search fs-9" type="search" placeholder="Search rating & review" aria-label="Search" />
                              <span class="fas fa-search search-box-icon"></span>
                           </form>
                        </div>
                     </div>

                     <div class="text-end center">
                        <button class="btn btn-link d-flex text-body me-4 px-0 center">
                           <span class="fa-solid fa-file-export fs-9 me-2"></span>
                           Export
                        </button>
                        <button class="btn btn-primary d-flex center" id="addBtn">
                           <span class="fas fa-plus me-2"></span>
                           <a href="">Add product</a>
                        </button>
                     </div>
                  </div>
                  <div class="w-full overflow-hidden">
                     <div class="w-full overflow-x-auto">
                        <table class="table fs-9 mb-0">
                           <thead>
                              <tr>
                                 <th class="align-middle text-uppercase pe-4" style="width: 30%; min-width: 350px;">Product</th>
                                 <th class="align-middle text-uppercase text-end" scope="col" style="width:10%">Ranting</th>
                                 <th class="align-middle text-uppercase" scope="col" style="width:30%; min-width:350px;" data-sort="product">Review</th>
                                 <th class="align-middle text-uppercase text-end" scope="col" data-sort="category" style="width:10%; min-width:200px;">Date</th>
                                 <th class="align-middle text-uppercase" scope="col" style="width:20%;"></th>
                              </tr>
                           </thead>
                           <tbody class="filterable-cards" id="">
                              <tr class="" data-name>
                                 <td class="align-middle text-primary pe-4">
                                    <a href="#">PRODUCT RATING REVIEWSTATUS DATE 2021 Apple 12.9-inch iPad Pro</a>
                                 </td>
                                 <td class="align-middle text-body-secondary text-end">
                                    <span class="fa fa-star text-warning"></span>
                                    <span class="fa fa-star text-warning"></span>
                                    <span class="fa fa-star text-warning"></span>
                                    <span class="fa fa-star text-warning"></span>
                                    <span class="fa-regular fa-star text-warning-light"></span>
                                 </td>
                                 <td class="align-middle text-body-secondary">
                                    The response time and service I received when contacted the designers were Phenomenal!
                                 </td>
                                 <td class="align-middle white-space-nowrap text-body-secondary text-end ">Nov 07, 9:00 PM</td>
                                 <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                    <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point14','myDropdown-menu')">
                                       <button class="p-1 fs-9 d-flex center" type="button">
                                          <i class="fa-solid fa-ellipsis fs-10"></i>
                                          <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                       </button>
                                       <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point14">
                                          <li><button type="button" href="#">View</button></li>
                                          <li><button type="button" href="#">Remove</button></li>
                                       </ul>
                                    </div>
                                 </td>
                              </tr>
                              <tr class="" data-name>
                                 <td class="align-middle text-primary pe-4">
                                    <a href="#">PRODUCT RATING REVIEWSTATUS DATE 2021 Apple 12.9-inch iPad Pro</a>
                                 </td>
                                 <td class="align-middle text-body-secondary text-end">
                                    <span class="fa fa-star text-warning"></span>
                                    <span class="fa fa-star text-warning"></span>
                                    <span class="fa fa-star text-warning"></span>
                                    <span class="fa fa-star text-warning"></span>
                                    <span class="fa-regular fa-star text-warning-light"></span>
                                 </td>
                                 <td class="align-middle text-body-secondary">
                                    The response time and service I received when contacted the designers were Phenomenal!
                                 </td>
                                 <td class="align-middle white-space-nowrap text-body-secondary text-end ">Nov 07, 9:00 PM</td>
                                 <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                    <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point15','myDropdown-menu')">
                                       <button class="p-1 fs-9 d-flex center" type="button">
                                          <i class="fa-solid fa-ellipsis fs-10"></i>
                                          <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                       </button>
                                       <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point15">
                                          <li><button type="button" href="#">View</button></li>
                                          <li><button type="button" href="#">Remove</button></li>
                                       </ul>
                                    </div>
                                 </td>
                              </tr>
                              <tr class="" data-name>
                                 <td class="align-middle text-primary pe-4">
                                    <a href="#">PRODUCT RATING REVIEWSTATUS DATE 2021 Apple 12.9-inch iPad Pro</a>
                                 </td>
                                 <td class="align-middle text-body-secondary text-end">
                                    <span class="fa fa-star text-warning"></span>
                                    <span class="fa fa-star text-warning"></span>
                                    <span class="fa fa-star text-warning"></span>
                                    <span class="fa fa-star text-warning"></span>
                                    <span class="fa-regular fa-star text-warning-light"></span>
                                 </td>
                                 <td class="align-middle text-body-secondary">
                                    The response time and service I received when contacted the designers were Phenomenal!
                                 </td>
                                 <td class="align-middle white-space-nowrap text-body-secondary text-end ">Nov 07, 9:00 PM</td>
                                 <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                    <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point16','myDropdown-menu')">
                                       <button class="p-1 fs-9 d-flex center" type="button">
                                          <i class="fa-solid fa-ellipsis fs-10"></i>
                                          <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                       </button>
                                       <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point16">
                                          <li><button type="button" href="#">View</button></li>
                                          <li><button type="button" href="#">Remove</button></li>
                                       </ul>
                                    </div>
                                 </td>
                              </tr>
                              <tr class="" data-name>
                                 <td class="align-middle text-primary pe-4">
                                    <a href="#">PRODUCT RATING REVIEWSTATUS DATE 2021 Apple 12.9-inch iPad Pro</a>
                                 </td>
                                 <td class="align-middle text-body-secondary text-end">
                                    <span class="fa fa-star text-warning"></span>
                                    <span class="fa fa-star text-warning"></span>
                                    <span class="fa fa-star text-warning"></span>
                                    <span class="fa fa-star text-warning"></span>
                                    <span class="fa-regular fa-star text-warning-light"></span>
                                 </td>
                                 <td class="align-middle text-body-secondary">
                                    The response time and service I received when contacted the designers were Phenomenal!
                                 </td>
                                 <td class="align-middle white-space-nowrap text-body-secondary text-end ">Nov 07, 9:00 PM</td>
                                 <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                    <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point17','myDropdown-menu')">
                                       <button class="p-1 fs-9 d-flex center" type="button">
                                          <i class="fa-solid fa-ellipsis fs-10"></i>
                                          <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                       </button>
                                       <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point17">
                                          <li><button type="button" href="#">View</button></li>
                                          <li><button type="button" href="#">Remove</button></li>
                                       </ul>
                                    </div>
                                 </td>
                              </tr>
                              <tr class="" data-name>
                                 <td class="align-middle text-primary pe-4">
                                    <a href="#">PRODUCT RATING REVIEWSTATUS DATE 2021 Apple 12.9-inch iPad Pro</a>
                                 </td>
                                 <td class="align-middle text-body-secondary text-end">
                                    <span class="fa fa-star text-warning"></span>
                                    <span class="fa fa-star text-warning"></span>
                                    <span class="fa fa-star text-warning"></span>
                                    <span class="fa fa-star text-warning"></span>
                                    <span class="fa-regular fa-star text-warning-light"></span>
                                 </td>
                                 <td class="align-middle text-body-secondary">
                                    The response time and service I received when contacted the designers were Phenomenal!
                                 </td>
                                 <td class="align-middle white-space-nowrap text-body-secondary text-end ">Nov 07, 9:00 PM</td>
                                 <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                    <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point118','myDropdown-menu')">
                                       <button class="p-1 fs-9 d-flex center" type="button">
                                          <i class="fa-solid fa-ellipsis fs-10"></i>
                                          <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                       </button>
                                       <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point18">
                                          <li><button type="button" href="#">View</button></li>
                                          <li><button type="button" href="#">Remove</button></li>
                                       </ul>
                                    </div>
                                 </td>
                              </tr>
                              <tr class="" data-name>
                                 <td class="align-middle text-primary pe-4">
                                    <a href="#">PRODUCT RATING REVIEWSTATUS DATE 2021 Apple 12.9-inch iPad Pro</a>
                                 </td>
                                 <td class="align-middle text-body-secondary text-end">
                                    <span class="fa fa-star text-warning"></span>
                                    <span class="fa fa-star text-warning"></span>
                                    <span class="fa fa-star text-warning"></span>
                                    <span class="fa fa-star text-warning"></span>
                                    <span class="fa-regular fa-star text-warning-light"></span>
                                 </td>
                                 <td class="align-middle text-body-secondary">
                                    The response time and service I received when contacted the designers were Phenomenal!
                                 </td>
                                 <td class="align-middle white-space-nowrap text-body-secondary text-end ">Nov 07, 9:00 PM</td>
                                 <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                    <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point19','myDropdown-menu')">
                                       <button class="p-1 fs-9 d-flex center" type="button">
                                          <i class="fa-solid fa-ellipsis fs-10"></i>
                                          <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                       </button>
                                       <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point19">
                                          <li><button type="button" href="#">View</button></li>
                                          <li><button type="button" href="#">Remove</button></li>
                                       </ul>
                                    </div>
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