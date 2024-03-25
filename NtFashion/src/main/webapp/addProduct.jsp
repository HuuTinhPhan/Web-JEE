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
<title>Add Product</title>


</head>
<body>
	<div class="container-fluid px-0">
		<!-- =====header===== -->
		<div class="mx-0 d-flex header center sticky-top">
			<div class="col-1 center toggleIcon">
				<i class="fa-solid fa-bars"></i>
			</div>
			<div class="col-2 navbar_left d-flex align-items-center">
				<img src="images/logo.png" alt="logo" />
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
				id="" style="margin-bottom: 10px;">
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
					<p
						style="padding-left: 35px;">
						<a href="addProduct.jsp" id="">Add product</a>
					</p>
					<p
						style="padding-left: 35px;">
						<a href="products.jsp">Products</a> <!-- Don't use onclick with forward jsp (jsp -> jsp) -->
					</p>
					<p
						style="padding-left: 35px;">
						<a href="members.jsp" id="">Members</a>
					</p>
					<p						
						style="padding-left: 35px;">
						<a href="memberDetail.jsp" id="">Members details</a>
					</p>
					<p						
						style="padding-left: 35px;">
						<a href="orders.jsp" id="">Orders</a>
					</p>
					<p
						style="padding-left: 35px;">
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
	 <form action="NtStore" method="get">
        <div class="container-fluid colum-right">
            <div class="content open" id="contentAddProduct">
                <!-- <div class="container-fluid grid"> -->
                <div class="row mx-0">
                    <nav class="px-0" aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item" aria-current="page">E commerce</li>
                            <li class="breadcrumb-item active" aria-current="page">Admin</li>
                            <li class="breadcrumb-item active" aria-current="page">Add product</li>
                        </ol>
                    </nav>
                    <div class="navbarContent px-0">
                        <div class="col-6 navbarContentLeft">
                            <h2 class="my-6 text-2xl font-semibold text-gray-700">Add a product</h2>
                        </div>
                    </div>
                </div>
                <div class="row mx-0">
                    <div class="col-xl-8 m-0 px-xxl-2 p-0">
                        <div class="row m-0">
                            <div class="mb-6 p-0">
                                <h4 class="mb-3 px-0">Product Title</h4>
                                <textarea name="product_name" class="textarea-wrap form-control" placeholder="Write title here..."></textarea>
                            </div>
                            <div class="mb-6 p-0">
                                <h4 class="mb-3"> Product Description</h4>
                                <textarea name="description" class="textarea-wrap form-control" placeholder="Write title here..."></textarea>
                            </div>
                            <div class="mb-6 p-0">
                                <h4 class="mb-3 px-0">Select Files to upload image</h4>
                                <input type="file" name="images" multiple>
                            </div>
                            <h4 class="mb-3 px-0">Inventory</h4>
                            <div class="row g-0 p-4" style="height: 330px;margin-bottom: 5px; box-shadow: 0 0 0.125rem var(--root-depth-color-1, rgba(0, 0, 0, 0.12)), 0 0.063rem 0.125rem var(--root-depth-color-2, rgba(0, 0, 0, 0.14));">
                                <div class="col-sm-4 d-block border-end">
                                    <div class="me-1 mb-2" onclick="content(event,'pricing','inventory')"><a href=""><i class="fa-solid fa-tag me-1"></i>Pricing</a></div>
                                    <div class="me-1 mb-2" onclick="content(event,'restock','inventory')"><a href=""><i class="fa-solid fa-cube me-1"></i>Restock</a></div>
                                    <div class="me-1 mb-2" onclick="content(event,'shipping','inventory')"><a href=""><i class="fa-solid fa-truck-fast me-1"></i>Shipping</a></div>
                                </div>
                                <div class="col-sm-8">
                                    <div class="tab-content py-3 ps-sm-4">
                                        <div class="inventory open" id="pricing">
                                            <div class="row g-3">
                                                <div class="col-12 col-lg-6">
                                                    <h5 class="mb-2 text-body-highlight">Regular price</h5><input class="form-control" type="text" placeholder="$$$" />
                                                </div>
                                                <div class="col-12 col-lg-6">
                                                    <h5 class="mb-2 text-body-highlight">Sale price</h5><input class="form-control" type="text" placeholder="$$$" />
                                                </div>
                                            </div>
                                        </div>
                                        <div class="inventory" id="restock">
                                            <div class="d-flex flex-column h-100">
                                                <h5 class="mb-3 text-body-highlight">Add to Stock</h5>
                                                <div class="row g-3 flex-1 mb-4">
                                                    <div class="col-sm-7"><input class="form-control" type="number" placeholder="Quantity" /></div>
                                                    <div class="col-sm"><button class="btn btn-primary" type="button"><span class="fa-solid fa-check me-1 fs-10"></span>Confirm</button></div>
                                                </div>
                                                <table>
                                                    <thead>
                                                        <tr>
                                                            <th style="width: 200px;"></th>
                                                            <th></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td class="text-body-highlight fw-bold py-1">Product in stock now:</td>
                                                            <td class="text-body-tertiary fw-semibold py-1">$1,090<button class="btn p-0" type="button"><span class="fa-solid fa-rotate text-body ms-1"
                                                                        style="--phoenix-text-opacity: .6;"></span></button></td>
                                                        </tr>
                                                        <tr>
                                                            <td class="text-body-highlight fw-bold py-1">Product in transit:</td>
                                                            <td class="text-body-tertiary fw-semibold py-1">5000</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="text-body-highlight fw-bold py-1">Last time restocked:</td>
                                                            <td class="text-body-tertiary fw-semibold py-1">30th June, 2021</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="text-body-highlight fw-bold py-1">Total stock over lifetime:</td>
                                                            <td class="text-body-tertiary fw-semibold py-1">20,000</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="inventory" id="shipping">
                                            <div class="d-flex flex-column h-100">
                                                <h5 class="mb-3 text-body-highlight">Shipping Type</h5>
                                                <div class="flex-1">
                                                    <div class="mb-4">
                                                        <div class="form-check mb-1"><input class="form-check-input" type="radio" name="shippingRadio" id="fullfilledBySeller" /><label class="form-check-label fs-8 text-body"
                                                                for="fullfilledBySeller">Fullfilled
                                                                by
                                                                Seller</label></div>
                                                        <div class="ps-4">
                                                            <p class="text-body-secondary fs-9 mb-0">You’ll be responsible for product delivery. <br />Any damage or delay during shipping may cost you a Damage fee.</p>
                                                        </div>
                                                    </div>
                                                    <div class="mb-4">
                                                        <div class="form-check mb-1"><input class="form-check-input" type="radio" name="shippingRadio" id="fullfilledByPhoenix" checked="checked" /><label
                                                                class="form-check-label fs-8 text-body d-flex align-items-center" for="fullfilledByPhoenix">Fullfilled by NtFashion <span
                                                                    class="badge badge-phoenix badge-phoenix-warning fs-10 ms-2">Recommended</span></label></div>
                                                        <div class="ps-4">
                                                            <p class="text-body-secondary fs-9 mb-0">Your product, Our responsibility.<br />For a measly fee, we will handle the delivery process for you.</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <p class="fs-9 fw-semibold mb-0">See our <a class="fw-bold" href="#!">Delivery terms and conditions </a>for details.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card col-xl-4">
                        <div class="row m-0">
                            <div class="col-12 col-xl-12 px-0">
                                <div class="mb-3">
                                    <div class="card-body">
                                        <h4 class="card-title mb-4">Organize</h4>
                                        <div class="row gx-3">
                                            <div class="row gx-3">
                                                <div class="col-12 col-sm-6 col-xl-12">
                                                    <div class="mb-4">
                                                        <select name="supplier_id" class="form-select mb-3" aria-label="category">
                                                            <option selected disabled hidden>Supplier</option>
                                                            <option value="1">Supplier A</option>
                                                            <option value="2">Supplier B</option>
                                                            <option value="3">Supplier C</option>
                                                            <option value="4">Supplier D</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-12 col-sm-6 col-xl-12">
                                                    <select name="category_id" class="form-select" aria-label="category">
                                                        <option selected disabled hidden>Category</option>
                                                        <option value="1">Shirts</option>
                                                        <option value="2">Trousers</option>
                                                        <option value="3">Bags</option>
                                                        <option value="4">Socks</option>
                                                        <option value="5">Hats</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-xl-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title mb-4">Variants</h4>
                                        <div class="row g-3">
                                            <div class="col-12 col-sm-6 col-xl-12">
                                                <div class="d-flex flex-wrap mb-2 centerLeft">
                                                    <h5 class="text-body-highlight me-2 ">Size</h5>
                                                </div>
                                                <div class="row">
                                                    <div class="col-4">
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="checkbox" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                                            <label class="form-check-label" for="inlineRadio2">S</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-4">
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="checkbox" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                                            <label class="form-check-label" for="inlineRadio2">M</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-4">
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="checkbox" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                                            <label class="form-check-label" for="inlineRadio2">L</label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-4">
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="checkbox" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                                            <label class="form-check-label" for="inlineRadio2">XL</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-4">
                                                        <div class="form-check form-check-inline">
                                                            <input class="form-check-input" type="checkbox" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                                            <label class="form-check-label" for="inlineRadio2">XXL</label>
                                                        </div>
                                                    </div>
                                                    <div class="col-4">
                                                        <div class="col-4">
                                                            <div class="form-check form-check-inline">
                                                                <input class="form-check-input" type="checkbox" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                                                <label class="form-check-label" for="inlineRadio2">3XL</label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-12 col-sm-6 col-xl-12">
                                                    <div class="d-flex flex-wrap mb-2">
                                                        <h5 class="text-body-highlight me-2">Color</h5>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-4 d-block">
                                                            <div class="form-check form-check-inline d-flex">
                                                                <input class="center form-check-input me-1" type="checkbox" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                                                <div class="center">
                                                                    <p style="width: 40px; height:20px; background:blue; border-radius: 5px;"></p>
                                                                </div>
                                                            </div>
                                                            <div class="form-check form-check-inline d-flex">
                                                                <input class="form-check-input me-1" type="checkbox" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                                                <div class="center">
                                                                    <p style="width: 40px; height:20px; background:green; border-radius: 5px;"></p>
                                                                </div>
                                                            </div>
                                                            <div class="form-check form-check-inline d-flex">
                                                                <input class="form-check-input me-1" type="checkbox" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                                                <div class="center">
                                                                    <p style="width: 40px; height:20px; background:red; border-radius: 5px;"></p>
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <div class="col-4 d-block">
                                                            <div class="form-check form-check-inline d-flex">
                                                                <input class="form-check-input me-1" type="checkbox" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                                                <div class="center">
                                                                    <p style="width: 40px; height:20px; background:purple; border-radius: 5px;"></p>
                                                                </div>
                                                            </div>
                                                            <div class="form-check form-check-inline d-flex">
                                                                <input class="form-check-input me-1" type="checkbox" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                                                <div class="center">
                                                                    <p style="width: 40px; height:20px; background:gray; border-radius: 5px;"></p>
                                                                </div>
                                                            </div>
                                                            <div class="form-check form-check-inline d-flex">
                                                                <input class="form-check-input me-1" type="checkbox" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                                                <div class="center">
                                                                    <p style="width: 40px; height:20px; background:cyan; border-radius: 5px;"></p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-4 d-block">
                                                            <div class="form-check form-check-inline d-flex">
                                                                <input class="form-check-input me-1" type="checkbox" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                                                <div class="center">
                                                                    <p style="width: 40px; height:20px; background:black; border-radius: 5px;"></p>
                                                                </div>
                                                            </div>
                                                            <div class="form-check form-check-inline d-flex">
                                                                <input class="form-check-input me-1" type="checkbox" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                                                <div class="center">
                                                                    <p style="width: 40px; height:20px; background:whitesmoke; border-radius: 5px;"></p>
                                                                </div>
                                                            </div>
                                                            <div class="form-check form-check-inline d-flex">
                                                                <input class="form-check-input me-1" type="checkbox" name="inlineRadioOptions" id="inlineRadio2" value="option2">
                                                                <div class="center">
                                                                    <p style="width: 40px; height:20px; background:pink; border-radius: 5px;"></p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                  	
                                </div>
                                <div class="col-12 center"  style="margin-top:100px; margin-bottom:20px" >
                           			 <input onclick="checkAddProduct('content')" class="btn mb-sm-0 text-bg-primary" type="submit" style="white-space: nowrap; width:100%; color: white;" value="Publish product">
                        		</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
	
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
<script src="js/checkInfor.js"></script>

</html>