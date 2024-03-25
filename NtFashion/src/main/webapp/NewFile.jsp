<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="Control.*"%>
<%@page import="Control.DaoImplement"%>
<%@page import="Modle.Products"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">
<!-- :class="{'theme-dark': dark}" x-data="data()" class="theme-dark" -->

<head>
 <meta charset="UTF-8">
    <!-- ======BOOTSTRAP===== -->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />

   <!-- ======FONTS GOOGLEAPIS===== -->
   <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />

   <!-- =====FONT ANWESOME===== -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous"
      referrerpolicy="no-referrer" />

   <!-- =====FLAT ICON===== -->
   <link rel="stylesheet" href="https://cdn-uicons.flaticon.com/2.1.0/uicons-solid-rounded/css/uicons-solid-rounded.css" />

   <!-- =====CSS===== -->
   <link rel="stylesheet" href="css/layets.css" />
   <link rel="stylesheet" href="css/uploadFile.css" />

   <link rel="stylesheet" href="css/tailwind.css">
   <link rel="stylesheet" href="css/tailwind.output.css">


   <!-- =====chart==== -->
   <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
   <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>

   <!-- =====TinyMCE===== -->
   <script src="https://cdn.tiny.cloud/1/03zb87qf3u6gncwwh8bapfwbg2b16esxo40st9v5knl1aedf/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>

   <!-- =====jquery==== -->
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous"
      referrerpolicy="no-referrer"></script>
   <title>Dashboard</title>


</head>

<body>
   <div class="container-fluid px-0">
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
                  <form class="position-relative" data-bs-toggle="search" data-bs-display="static">
                     <input class="form-control rounded-full search-input search fs-9" style="border-radius:20px" type="search" placeholder="Search..." aria-label="Search" />
                     <span class="fas fa-search search-box-icon"></span>
                  </form>
               </div>
            </form>
         </div>
         <div class="col-3 navbar_right center">
            <div class="col-3 bell">
               <a href="#" onclick="dropdown(event,'bell_dropdown')"><i class="fa-solid fa-bell"></i></a>
               <div class="dropdownNotification" id="bell_dropdown" style="top: 43px;">
                  <div class="row recentNotification">
                     <p><b>Recent Notification</b></p>
                  </div>

                  <ul>
                     <li class="m-2">
                        <div class="row center">
                           <div class="col-3 icon center">
                              <i class="fa-regular fa-folder-open"></i>
                           </div>
                           <div class="col-9 contentDropdown ">
                              <p class="fs-9">You have an offer! <b>Successful done</b> </p>
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
                              <p class="fs-9">You upload your fast product <b>Successful done</b> </p>
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
                              <p class="fs-9">Your Account has been created <b>Successful done</b> </p>
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
                              <p class="fs-9">Thank you !you made your fast sel <b>Successful done</b> </p>
                              <p class="fs-9">20 minutes ago</p>
                           </div>
                        </div>
                     </li>
                  </ul>
               </div>
            </div>
            <div class="col-3 center light"><i class="fa-solid fa-lightbulb"></i></div>
            <div class="col-6 author">
               <a href="#" class="center" onclick="dropdown(event,'author_dropdown')">
                  <div class="author_img">
                     <img src="images/T-Shirt-with-zipper-men-gray.jfif" alt="face" />
                  </div>
                  <div class="author_info">
                     <p>PhanHuuTinh</p>
                     <p class="fs-10">VietNam</p>
                  </div>
               </a>
               <div class="dropdownNotification" id="author_dropdown" style="top: 47px; width:200px; right: 0px; left: 0px;">
                  <div class="row myprofile">
                     <p><b>My profile</b></p>
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
         <button class="accordion-button text-primary" onclick="toggleColor(1),content(event,'contentDashboard','content')" id="textColor1" style="margin-bottom: 10px;">
            <span class="fa-solid fa-house fontIcon"></span>
            Dashboard
         </button>

         <button class="accordion-button center" onclick="toggle(2), toggleColor(6)" id="textColor6" style="margin-bottom: 10px;">
            <span class="fa-solid fa-cart-shopping fontIcon "></span>
            E commerce
            <span class="material-symbols-outlined rotate-icon" id="rotated-icon2">
               arrow_right
            </span>
         </button>

         <div class="accordion-content" id="show2">
            <button class="accordion-button defaultPaddingDropdownLevel_1" onclick="toggle(3), toggleColor(7)" id="textColor7" style="padding-top: 5px; padding-bottom: 5px;">
               Admin
               <span class="material-symbols-outlined rotate-icon" id="rotated-icon3">
                  arrow_right
               </span>
            </button>
            <div class="accordion-content" id="show3">
               <p onclick="toggleColor(8), content(event,'contentAddProduct','content')" style="padding-left: 35px;">
                  <a href="#" id="textColor8">Add product</a>
               </p>
               <p onclick="toggleColor(9), content(event,'contentProducts','content')" style="padding-left: 35px;">
                  <a href="#" id="textColor9">Products</a>
               </p>
               <p onclick="toggleColor(10), content(event,'contentMembers','content')" style="padding-left: 35px;">
                  <a href="#" id="textColor10">Members</a>
               </p>
               <p onclick="toggleColor(11), content(event,'contentMembersDetail','content')" style="padding-left: 35px;">
                  <a href="#" id="textColor11">Members details</a>
               </p>
               <p onclick="toggleColor(12), content(event,'contentOrder','content')" style="padding-left: 35px;">
                  <a href="#" id="textColor12">Orders</a>
               </p>
               <p onclick="toggleColor(13), content(event,'contentOrderDetail','content')" style="padding-left: 35px;">
                  <a href="#" id="textColor13">Orders details</a>
               </p>
               <p onclick="toggleColor(14)" style="padding-left: 35px;">
                  <a href="#" id="textColor14">Refund</a>
               </p>
            </div>

            <button class="accordion-button defaultPaddingDropdownLevel_1" onclick="toggle(4), toggleColor(15)" id="textColor15" style=" padding-top: 5px; padding-bottom: 5px;">
               Customer
               <span class="material-symbols-outlined rotate-icon" id="rotated-icon4">
                  arrow_right
               </span>
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

         <button class="accordion-button" onclick="toggle(5), toggleColor(25)" id="textColor25" style="margin-bottom: 10px;">
            <span class="fa-solid fa-phone fontIcon"></span>
            CRM
            <span class="material-symbols-outlined rotate-icon" id="rotated-icon5">
               arrow_right
            </span>
         </button>
         <div class="accordion-content defaultPaddingDropdownLevel_1" id="show5">
            <p onclick="toggleColor(26)">
               <a href="#" id="textColor26">Analytics</a>
            </p>
            <p onclick="toggleColor(27)" class="w-100 d-flex align-items-center">
               <a href="#" class="me-2" id="textColor27">Deals</a>
               <i href="#" class="ps-2 pe-2" style="
                  background-color: #c7ebff;
                  border: 1px solid #60c6ff;
                  border-radius: 3px;
                  color: #005585;
                  font-size: 8px;
                ">NEW</i>
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
               <p onclick="toggleColor(32)" class="w-100 d-flex align-items-center">
                  <a href="#" class="me-2" id="textColor32">Reports details</a>
                  <i href="#" class="ps-2 pe-2" style="
                    background-color: #c7ebff;
                    border: 1px solid #60c6ff;
                    border-radius: 3px;
                    color: #005585;
                    font-size: 8px;
                  ">NEW</i>
               </p>
            </div>

            <p onclick="toggleColor(33)">
               <a href="#" id="textColor33">Add contact</a>
            </p>
         </div>

         <button class="accordion-button" onclick="toggle(6), toggleColor(34)" id="textColor34" style="margin-bottom: 10px;">
            <span class="fa-solid fa-clipboard fontIcon"></span>
            Project management
            <span class="material-symbols-outlined rotate-icon" id="rotated-icon6">
               arrow_right
            </span>
         </button>
         <div class="accordion-content defaultPaddingDropdownLevel_1" id="show6">
            <p onclick="toggleColor(35)">
               <a href="#" id="textColor35">Create new</a>
            </p>
            <p onclick="toggleColor(36)">
               <a href="#" id="textColor36">Project list view</a>
            </p>
         </div>

         <button class="accordion-button" onclick="toggle(7), toggleColor(37)" id="textColor37" style="margin-bottom: 10px;">
            <span class="fa-solid fa-envelope fontIcon"></span>
            Email
            <span class="material-symbols-outlined rotate-icon" id="rotated-icon7">
               arrow_right
            </span>
         </button>
         <div class="accordion-content defaultPaddingDropdownLevel_1" id="show7">
            <p onclick="toggleColor(38)">
               <a href="#" id="textColor38">Inbox</a>
            </p>
            <p onclick="toggleColor(39)">
               <a href="#" id="textColor39">Chat details</a>
            </p>
         </div>

         <button class="accordion-button" onclick="toggle(8), toggleColor(40)" id="textColor40" style="margin-bottom: 10px;">
            <span class="fa-solid fa-bookmark fontIcon"></span>
            Pages
            <span class="material-symbols-outlined rotate-icon" id="rotated-icon8">
               arrow_right
            </span>
         </button>
         <div class="accordion-content defaultPaddingDropdownLevel_1" id="show8">
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

         <button class="accordion-button" onclick="toggleColor(43)" id="textColor43" style="margin-bottom: 10px;">
            <span class="fa-solid fa-message fontIcon"></span>
            Chats
         </button>

         <button class="accordion-button" onclick="content(event,'contentChart', 'content'), toggleColor(44)" id="textColor44" style="margin-bottom: 10px;">
            <span class="fi fi-sr-square-kanban fontIcon"></span>Chart
         </button>

         <button class="accordion-button" onclick="toggle(10), toggleColor(47)" id="textColor47" style="margin-bottom: 10px;">
            <span class="fa-solid fa-share-nodes fontIcon"></span>
            Social
            <span class="material-symbols-outlined rotate-icon" id="rotated-icon10">
               arrow_right
            </span>
         </button>
         <div class="accordion-content defaultPaddingDropdownLevel_1" id="show10">
            <p onclick="toggleColor(48)">
               <a href="#" id="textColor48">Inbox</a>
            </p>
            <p onclick="toggleColor(49)">
               <a href="#" id="textColor49">Chat details</a>
            </p>
         </div>

         <button class="accordion-button" onclick="toggleColor(50)" id="textColor50" style="margin-bottom: 10px;">
            <span class="fa-solid fa-calendar fontIcon"></span>
            Calendar
         </button>
      </div>
      <!-- =====colum-right===== -->
      <div class="container-fluid colum-right">
         <!-- =====contentDashboard===== -->
         <div class="content" id="contentDashboard">
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
         <!-- =====contentChart===== -->
         <div class="content" id="contentChart">
            <div class="container grid">
               <nav aria-label="breadcrumb">
                  <ol class="breadcrumb">
                     <li class="breadcrumb-item active" aria-current="page">Charts</li>
                  </ol>
               </nav>
               <h2 class="my-6 text-2xl font-semibold text-gray-700 dark:text-gray-200">
                  Charts
               </h2>
               <div class="grid gap-6 mb-8 md:grid-cols-2">
                  <!-- Doughnut/Pie chart -->
                  <div class="min-w-0 p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800">
                     <h4 class="mb-4 font-semibold text-gray-800 dark:text-gray-300">
                        Doughnut/Pie
                     </h4>
                     <canvas id="pie"></canvas>
                     <div class="flex justify-center mt-4 space-x-3 text-sm text-gray-600 dark:text-gray-400">
                        <!-- Chart legend -->
                        <div class="flex items-center">
                           <span class="inline-block w-3 h-3 mr-1 bg-blue-600 rounded-full"></span>
                           <span>Shirts</span>
                        </div>
                        <div class="flex items-center">
                           <span class="inline-block w-3 h-3 mr-1 bg-teal-500 rounded-full"></span>
                           <span>Shoes</span>
                        </div>
                        <div class="flex items-center">
                           <span class="inline-block w-3 h-3 mr-1 bg-purple-600 rounded-full"></span>
                           <span>Bags</span>
                        </div>
                     </div>
                  </div>
                  <!-- Lines chart -->
                  <div class="min-w-0 p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800">
                     <h4 class="mb-4 font-semibold text-gray-800 dark:text-gray-300">
                        Lines
                     </h4>
                     <canvas id="line"></canvas>
                     <div class="flex justify-center mt-4 space-x-3 text-sm text-gray-600 dark:text-gray-400">
                        <!-- Chart legend -->
                        <div class="flex items-center">
                           <span class="inline-block w-3 h-3 mr-1 bg-teal-500 rounded-full"></span>
                           <span>Organic</span>
                        </div>
                        <div class="flex items-center">
                           <span class="inline-block w-3 h-3 mr-1 bg-purple-600 rounded-full"></span>
                           <span>Paid</span>
                        </div>
                     </div>
                  </div>
                  <!-- Bars chart -->
                  <div class="min-w-0 p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800">
                     <h4 class="mb-4 font-semibold text-gray-800 dark:text-gray-300">
                        Bars
                     </h4>
                     <canvas id="bars"></canvas>
                     <div class="flex justify-center mt-4 space-x-3 text-sm text-gray-600 dark:text-gray-400">
                        <!-- Chart legend -->
                        <div class="flex items-center">
                           <span class="inline-block w-3 h-3 mr-1 bg-teal-500 rounded-full"></span>
                           <span>Shoes</span>
                        </div>
                        <div class="flex items-center">
                           <span class="inline-block w-3 h-3 mr-1 bg-purple-600 rounded-full"></span>
                           <span>Bags</span>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- =====contentMembers===== -->
         <div class="content" id="contentMembers">
            <div class="container grid px-0">
               <nav aria-label="breadcrumb">
                  <ol class="breadcrumb">
                     <li class="breadcrumb-item " aria-current="page"><a href="#">E commerce</a></li>
                     <li class="breadcrumb-item active" aria-current="page">Admin</li>
                     <li class="breadcrumb-item active" aria-current="page">Members</li>
                  </ol>
               </nav>
               <h2 class="my-6 text-2xl font-semibold text-gray-700 dark:text-gray-200">
                  Members
               </h2>

               <!-- With avatar -->
               <h4 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">
                  Admins
               </h4>
               <div class="w-full mb-8 overflow-hidden open">
                  <div class="w-full overflow-x-auto" style="scrollbar-width: none;">
                     <table class="table table-sm fs-9 mb-0">
                        <thead>
                           <tr class="border-t">
                              <th class="align-middle" style="width:5%;">
                                 <div class="form-check center">
                                    <input class="form-check-input" id="checkbox-bulk-customers-select" type="checkbox" data-bulk-select='{"body":"customers-table-body"}' />
                                 </div>
                              </th>
                              <th class="align-middle" scope="col" data-sort="id" style="width:5%;">ID</th>
                              <th class="align-middle" scope="col" data-sort="customer" style="width:25%; min-width: 250px;">ADMIN</th>
                              <th class="align-middle" scope="col" data-sort="email" style="width:25%; min-width: 250px;">EMAIL</th>
                              <th class="align-middle" scope="col" data-sort="total-orders" style="width:20%">Phone</th>
                              <th class="align-middle" scope="col" data-sort="city" style="width:15%;">CITY</th>
                              <th class="align-middle" scope="col" style="width:5%;"></th>
                           </tr>
                        </thead>
                        <tbody class="list" id="customers-table-body">
                           <tr class="">
                              <td class="align-middle text-center">
                                 <div class="form-check center">
                                    <input class="form-check-input" type="checkbox" value="" id="">
                                 </div>
                              </td>
                              <td class="idAdmin align-middle pe-5 fw-regular white-space-nowrap">001</td>
                              <td class="admin align-middle pe-5 white-space-nowrap">
                                 <a class="d-flex align-items-center text-body-highlight" href="#">
                                    <div class="customer_img">
                                       <img src="image/customer1.jpg" alt="" />
                                    </div>
                                    <p class="ms-3 fw-bold align-middle">Carry Anna</p>
                                 </a>
                              </td>
                              <td class="emailAdmin align-middle pe-5 white-space-nowrap"><a class="textEmail fw-regular text-body-highlight" href="#">annac34@gmail.com</a></td>
                              <td class="phoneAdmin align-middle fw-regular pe-5 white-space-nowrap">0896414655</td>
                              <td class="city align-middle text-body-highlight ps-7 white-space-nowrap">Budapest</td>
                              <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                 <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point26','myDropdown-menu')">
                                    <button class="p-1 fs-9 d-flex center" type="button">
                                       <i class="fa-solid fa-ellipsis fs-10"></i>
                                       <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                    </button>
                                    <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point26">
                                       <li><button type="button" href="#">View</button></li>
                                       <li><button type="button" href="#">Remove</button></li>
                                    </ul>
                                 </div>
                              </td>
                           </tr>
                           <tr class="">
                              <td class="align-middle text-center">
                                 <div class="form-check center">
                                    <input class="form-check-input" type="checkbox" value="" id="">
                                 </div>
                              </td>
                              <td class="idAdmin align-middle pe-5 fw-regular">001</td>
                              <td class="admin align-middle pe-5">
                                 <a class="d-flex align-items-center text-body-highlight" href="#">
                                    <div class="customer_img">
                                       <img src="image/customer1.jpg" alt="" />
                                    </div>
                                    <p class="ms-3 fw-bold align-middle">Carry Anna</p>
                                 </a>
                              </td>
                              <td class="emailAdmin align-middle pe-5"><a class="textEmail fw-regular text-body-highlight" href="#">annac34@gmail.com</a></td>
                              <td class="phoneAdmin align-middle fw-regular pe-5">0896414655</td>
                              <td class="city align-middle text-body-highlight ps-7">Budapest</td>
                              <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                 <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point27','myDropdown-menu')">
                                    <button class="p-1 fs-9 d-flex center" type="button">
                                       <i class="fa-solid fa-ellipsis fs-10"></i>
                                       <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                    </button>
                                    <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point27">
                                       <li><button type="button" href="#">View</button></li>
                                       <li><button type="button" href="#">Remove</button></li>
                                    </ul>
                                 </div>
                              </td>
                           </tr>
                           <tr class="">
                              <td class="align-middle text-center">
                                 <div class="form-check center">
                                    <input class="form-check-input" type="checkbox" value="" id="">
                                 </div>
                              </td>
                              <td class="idAdmin align-middle pe-5 fw-regular">001</td>
                              <td class="admin align-middle pe-5">
                                 <a class="d-flex align-items-center text-body-highlight" href="#">
                                    <div class="customer_img">
                                       <img src="image/customer1.jpg" alt="" />
                                    </div>
                                    <p class="ms-3 fw-bold align-middle">Carry Anna</p>
                                 </a>
                              </td>
                              <td class="emailAdmin align-middle pe-5"><a class="textEmail fw-regular text-body-highlight" href="#">annac34@gmail.com</a></td>
                              <td class="phoneAdmin align-middle fw-regular pe-5">0896414655</td>
                              <td class="city align-middle text-body-highlight ps-7">Budapest</td>
                              <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                 <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point28','myDropdown-menu')">
                                    <button class="p-1 fs-9 d-flex center" type="button">
                                       <i class="fa-solid fa-ellipsis fs-10"></i>
                                       <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                    </button>
                                    <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point28">
                                       <li><button type="button" href="#">View</button></li>
                                       <li><button type="button" href="#">Remove</button></li>
                                    </ul>
                                 </div>
                              </td>
                           </tr>
                        </tbody>
                     </table>
                  </div>
                  <div class="grid px-4 py-3 text-xs font-semibold items-center tracking-wide text-gray-500 uppercase dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800">
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

               <h4 class="mb-4 text-lg font-semibold text-gray-600 dark:text-gray-300">
                  Customers
               </h4>
               <div class="w-full mb-8 overflow-hidden open">
                  <div class="w-full overflow-x-auto" style="scrollbar-width: none;">
                     <div class="mx-n1 px-1">
                        <table class="table table-sm fs-9 mb-0">
                           <thead>
                              <tr class="border-t">
                                 <th class="align-middle">
                                    <div class="form-check center">
                                       <input class="form-check-input" id="checkbox-bulk-customers-select" type="checkbox" data-bulk-select='{"body":"customers-table-body"}' />
                                    </div>
                                 </th>
                                 <th class="align-middle" scope="col" data-sort="customer" style="width:20%; min-width: 250px;">CUSTOMER</th>
                                 <th class="align-middle" scope="col" data-sort="email" style="width:15%; min-width: 250px;">EMAIL</th>
                                 <th class="align-middle" scope="col" data-sort="total-orders" style="width:10%;">ORDERS</th>
                                 <th class="align-middle" scope="col" data-sort="total-spent" style="width:10%; min-width: 100px;">TOTAL SPENT</th>
                                 <th class="align-middle" scope="col" data-sort="city" style="width:15%;">CITY</th>
                                 <th class="align-middle" scope="col" data-sort="last-seen" style="width:15%;min-width: 100px;">LAST SEEN</th>
                                 <th class="align-middle" scope="col" data-sort="last-order" style="width:10%;min-width: 100px;">LAST ORDER</th>
                                 <th class="align-middle" scope="col" style="width:5%;"></th>
                              </tr>
                           </thead>
                           <tbody class="list" id="customers-table-body">
                              <tr class="">
                                 <td class="align-middle text-center">
                                    <div class="form-check center">
                                       <input class="form-check-input" type="checkbox" value="" id="">
                                    </div>
                                 </td>
                                 <td class="customer align-middle pe-5">
                                    <a class="d-flex align-items-center text-body-emphasis" href="#">
                                       <div class="customer_img">
                                          <img src="image/customer1.jpg" alt="" />
                                       </div>
                                       <p class="ms-3 fw-bold align-middle">Carry Anna</p>
                                    </a>
                                 </td>
                                 <td class="email align-middle pe-5"><a class="textEmail fw-regular text-body-highlight" href="#">annac34@gmail.com</a></td>
                                 <td class="total-orders align-middle fw-regular pe-5">89</td>
                                 <td class="total-spent align-middle fw-bold pe-5 text-body-highlight">$ 23987</td>
                                 <td class="city align-middle text-body-highlight ps-7">Budapest</td>
                                 <td class="last-seen align-middle">34 min ago</td>
                                 <td class="last-order align-middle">Dec 12, 12:56 PM</td>
                                 <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                    <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point20','myDropdown-menu')">
                                       <button class="p-1 fs-9 d-flex center" type="button">
                                          <i class="fa-solid fa-ellipsis fs-10"></i>
                                          <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                       </button>
                                       <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point20">
                                          <li><button type="button" href="#">View</button></li>
                                          <li><button type="button" href="#">Remove</button></li>
                                       </ul>
                                    </div>
                                 </td>
                              </tr>
                              <tr class="">
                                 <td class="align-middle text-center">
                                    <div class="form-check center">
                                       <input class="form-check-input" type="checkbox" value="" id="">
                                    </div>
                                 </td>
                                 <td class="customer align-middle pe-5">
                                    <a class="d-flex align-items-center text-body-emphasis" href="#">
                                       <div class="customer_img">
                                          <img src="image/customer1.jpg" alt="" />
                                       </div>
                                       <p class="ms-3 fw-bold align-middle">Carry Anna</p>
                                    </a>
                                 </td>
                                 <td class="email align-middle pe-5"><a class="textEmail fw-regular text-body-highlight" href="#">annac34@gmail.com</a></td>
                                 <td class="total-orders align-middle fw-regular pe-5">89</td>
                                 <td class="total-spent align-middle fw-bold pe-5 text-body-highlight">$ 23987</td>
                                 <td class="city align-middle text-body-highlight ps-7">Budapest</td>
                                 <td class="last-seen align-middle">34 min ago</td>
                                 <td class="last-order align-middle">Dec 12, 12:56 PM</td>
                                 <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                    <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point21','myDropdown-menu')">
                                       <button class="p-1 fs-9 d-flex center" type="button">
                                          <i class="fa-solid fa-ellipsis fs-10"></i>
                                          <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                       </button>
                                       <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point21">
                                          <li><button type="button" href="#">View</button></li>
                                          <li><button type="button" href="#">Remove</button></li>
                                       </ul>
                                    </div>
                                 </td>
                              </tr>
                              <tr class="">
                                 <td class="align-middle text-center">
                                    <div class="form-check center">
                                       <input class="form-check-input" type="checkbox" value="" id="">
                                    </div>
                                 </td>
                                 <td class="customer align-middle pe-5">
                                    <a class="d-flex align-items-center text-body-emphasis" href="#">
                                       <div class="customer_img">
                                          <img src="image/customer1.jpg" alt="" />
                                       </div>
                                       <p class="ms-3 fw-bold align-middle">Carry Anna</p>
                                    </a>
                                 </td>
                                 <td class="email align-middle pe-5"><a class="textEmail fw-regular text-body-highlight" href="#">annac34@gmail.com</a></td>
                                 <td class="total-orders align-middle fw-regular pe-5">89</td>
                                 <td class="total-spent align-middle fw-bold pe-5 text-body-highlight">$ 23987</td>
                                 <td class="city align-middle text-body-highlight ps-7">Budapest</td>
                                 <td class="last-seen align-middle">34 min ago</td>
                                 <td class="last-order align-middle">Dec 12, 12:56 PM</td>
                                 <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                    <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point22','myDropdown-menu')">
                                       <button class="p-1 fs-9 d-flex center" type="button">
                                          <i class="fa-solid fa-ellipsis fs-10"></i>
                                          <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                       </button>
                                       <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point22">
                                          <li><button type="button" href="#">View</button></li>
                                          <li><button type="button" href="#">Remove</button></li>
                                       </ul>
                                    </div>
                                 </td>
                              </tr>
                              <tr class="">
                                 <td class="align-middle text-center">
                                    <div class="form-check center">
                                       <input class="form-check-input" type="checkbox" value="" id="">
                                    </div>
                                 </td>
                                 <td class="customer align-middle pe-5">
                                    <a class="d-flex align-items-center text-body-emphasis" href="#">
                                       <div class="customer_img">
                                          <img src="image/customer1.jpg" alt="" />
                                       </div>
                                       <p class="ms-3 fw-bold align-middle">Carry Anna</p>
                                    </a>
                                 </td>
                                 <td class="email align-middle pe-5"><a class="textEmail fw-regular text-body-highlight" href="#">annac34@gmail.com</a></td>
                                 <td class="total-orders align-middle fw-regular pe-5">89</td>
                                 <td class="total-spent align-middle fw-bold pe-5 text-body-highlight">$ 23987</td>
                                 <td class="city align-middle text-body-highlight ps-7">Budapest</td>
                                 <td class="last-seen align-middle">34 min ago</td>
                                 <td class="last-order align-middle">Dec 12, 12:56 PM</td>
                                 <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                    <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point23','myDropdown-menu')">
                                       <button class="p-1 fs-9 d-flex center" type="button">
                                          <i class="fa-solid fa-ellipsis fs-10"></i>
                                          <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                       </button>
                                       <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point23">
                                          <li><button type="button" href="#">View</button></li>
                                          <li><button type="button" href="#">Remove</button></li>
                                       </ul>
                                    </div>
                                 </td>
                              </tr>
                              <tr class="">
                                 <td class="align-middle text-center">
                                    <div class="form-check center">
                                       <input class="form-check-input" type="checkbox" value="" id="">
                                    </div>
                                 </td>
                                 <td class="customer align-middle pe-5">
                                    <a class="d-flex align-items-center text-body-emphasis" href="#">
                                       <div class="customer_img">
                                          <img src="image/customer1.jpg" alt="" />
                                       </div>
                                       <p class="ms-3 fw-bold align-middle">Carry Anna</p>
                                    </a>
                                 </td>
                                 <td class="email align-middle pe-5"><a class="textEmail fw-regular text-body-highlight" href="#">annac34@gmail.com</a></td>
                                 <td class="total-orders align-middle fw-regular pe-5">89</td>
                                 <td class="total-spent align-middle fw-bold pe-5 text-body-highlight">$ 23987</td>
                                 <td class="city align-middle text-body-highlight ps-7">Budapest</td>
                                 <td class="last-seen align-middle">34 min ago</td>
                                 <td class="last-order align-middle">Dec 12, 12:56 PM</td>
                                 <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                    <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point24','myDropdown-menu')">
                                       <button class="p-1 fs-9 d-flex center" type="button">
                                          <i class="fa-solid fa-ellipsis fs-10"></i>
                                          <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                       </button>
                                       <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point24">
                                          <li><button type="button" href="#">View</button></li>
                                          <li><button type="button" href="#">Remove</button></li>
                                       </ul>
                                    </div>
                                 </td>
                              </tr>
                              <tr class="">
                                 <td class="align-middle text-center">
                                    <div class="form-check center">
                                       <input class="form-check-input" type="checkbox" value="" id="">
                                    </div>
                                 </td>
                                 <td class="customer align-middle pe-5">
                                    <a class="d-flex align-items-center text-body-emphasis" href="#">
                                       <div class="customer_img">
                                          <img src="image/customer1.jpg" alt="" />
                                       </div>
                                       <p class="ms-3 fw-bold align-middle">Carry Anna</p>
                                    </a>
                                 </td>
                                 <td class="email align-middle pe-5"><a class="textEmail fw-regular text-body-highlight" href="#">annac34@gmail.com</a></td>
                                 <td class="total-orders align-middle fw-regular pe-5">89</td>
                                 <td class="total-spent align-middle fw-bold pe-5 text-body-highlight">$ 23987</td>
                                 <td class="city align-middle text-body-highlight ps-7">Budapest</td>
                                 <td class="last-seen align-middle">34 min ago</td>
                                 <td class="last-order align-middle">Dec 12, 12:56 PM</td>
                                 <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                    <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point25','myDropdown-menu')">
                                       <button class="p-1 fs-9 d-flex center" type="button">
                                          <i class="fa-solid fa-ellipsis fs-10"></i>
                                          <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                       </button>
                                       <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point25">
                                          <li><button type="button" href="#">View</button></li>
                                          <li><button type="button" href="#">Remove</button></li>
                                       </ul>
                                    </div>
                                 </td>
                              </tr>
                           </tbody>
                        </table>
                     </div>
                  </div>
                  <div class="grid px-4 py-3 text-xs font-semibold items-center tracking-wide text-gray-500 uppercase dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800">
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
         <!-- =====contentAddProduct===== -->
         <div class="content" id="contentAddProduct">
          <form action="" method="GET">
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
                  <div class="col-6 navbarContentRight" style="display: flex;">
                     <button class="me-2 mb-sm-0" type="button" style="white-space: nowrap;">Discard</button>
                     <button class="me-2 mb-sm-0" type="button" style="white-space: nowrap;">Save draft</button>
                     <button onclick="checkText('product_name'); checkNumber('product_name')" class="btn mb-sm-0 text-bg-primary" name="implement" value="publishProduct" type="submit" style="white-space: nowrap; color: white;">Publish product</button>
                  </div>
               </div>
            </div>

            <div class="row mx-0">
               <div class="col-xl-8 m-0 px-xxl-2 p-0">
                  <div class="row m-0">
                     <div class="mb-6 p-0">
                     	<h4 class="mb-3 px-0">Product Title</h4>
                      	<textarea name="product_name" class="textarea-wrap form-control" placeholder="Write title here..." ></textarea>         
                     </div>
                     <div class="mb-6 p-0">
                        <h4 class="mb-3"> Product Description</h4>
                        <textarea name="description" class="textarea-wrap form-control" placeholder="Write title here..." ></textarea>  
                     </div>                 
  					<div class="mb-6 p-0">
  						<h4 class="mb-3 px-0">Select Files to upload image</h4>
  						<input type="file" name="images"  multiple required>
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
                                       <h5 class="mb-2 text-body-highlight">Regular price</h5><input name="price checkText checkNumber" class="form-control" type="text" placeholder="$$$" />
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
                                             <td class="text-body-tertiary fw-semibold py-1">$1,090<button class="btn p-0" type="button"><span class="fa-solid fa-rotate text-body ms-1" style="--phoenix-text-opacity: .6;"></span></button></td>
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
                                          <div class="form-check mb-1"><input class="form-check-input" type="radio" name="shippingRadio" id="fullfilledBySeller" /><label class="form-check-label fs-8 text-body" for="fullfilledBySeller">Fullfilled
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
                                 <div class="col-12 col-sm-6 col-xl-12">
                                    <div class="mb-4" >
                                       <select  name="supplier_id" class="form-select mb-3" aria-label="category"  >
                                       	  <option selected disabled hidden>Supplier</option>
                                          <option value="1">Supplier A</option>
                                          <option value="2">Supplier B</option>
                                          <option value="3">Supplier C</option>
                                          <option value="4">Supplier D</option>
                                       </select>
                                    </div>
                                 </div>                               
                                 <div class="col-12 col-sm-6 col-xl-12">
                                    <select  name="category_id" class="form-select" aria-label="category" >
                                       <option selected disabled hidden>Category</option>
                                       <option value="1" >Shirts</option>
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
                                             <input class="form-check-input" type="checkbox" name="sizes" value="S" required>
                                             <label class="form-check-label" for="inlineRadio2">S</label>
                                          </div>
                                       </div>
                                       <div class="col-4">
                                          <div class="form-check form-check-inline">
                                             <input class="form-check-input" type="checkbox" name="sizes" value="M">
                                             <label class="form-check-label" for="inlineRadio2">M</label>
                                          </div>
                                       </div>
                                       <div class="col-4">
                                          <div class="form-check form-check-inline">
                                             <input class="form-check-input" type="checkbox" name="sizes" value="L">
                                             <label class="form-check-label" for="inlineRadio2">L</label>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="row">
                                       <div class="col-4">
                                          <div class="form-check form-check-inline">
                                             <input class="form-check-input" type="checkbox" name="sizes" value="XL" >
                                             <label class="form-check-label" for="inlineRadio2">XL</label>
                                          </div>
                                       </div>
                                       <div class="col-4">
                                          <div class="form-check form-check-inline">
                                             <input class="form-check-input" type="checkbox" name="sizes"  value="XXL">
                                             <label class="form-check-label" for="inlineRadio2">XXL</label>
                                          </div>
                                       </div>
                                       <div class="col-4">
                                          <div class="col-4">
                                             <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="checkbox" name="sizes"  value="3XL">
                                                <label class="form-check-label" for="inlineRadio2">3XL</label>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="col-12 col-xl-12">
                                       <div class="d-flex flex-wrap mb-2">
                                          <h5 class="text-body-highlight me-2">Color</h5>
                                       </div>
                                       <div class="row">
                                          <div class="col-6 col-xl-3  d-block">
                                             <div class="form-check form-check-inline d-flex">
                                                <input class="center form-check-input me-1" type="checkbox" name="colors" id="" value="black" required>
                                                <div class="center">
                                                   <p style="width: 40px; height:20px; background:black; border-radius: 5px;"></p>
                                                </div>
                                             </div>
                                             <div class="form-check form-check-inline d-flex">
                                                <input class="form-check-input me-1" type="checkbox" name="colors" id="" value="brown">
                                                <div class="center">
                                                   <p style="width: 40px; height:20px; background:brown; border-radius: 5px;"></p>
                                                </div>
                                             </div>
                                             <div class="form-check form-check-inline d-flex">
                                                <input class="form-check-input me-1" type="checkbox" name="colors" id="" value="red">
                                                <div class="center">
                                                   <p style="width: 40px; height:20px; background:red; border-radius: 5px;"></p>
                                                </div>
                                             </div>

                                          </div>
                                          <div class="col-6 col-xl-3 d-block" >
                                             <div class="form-check form-check-inline d-flex">
                                                <input class="form-check-input me-1" type="checkbox" name="colors" id="" value="green">
                                                <div class="center">
                                                   <p style="width: 40px; height:20px; background:green; border-radius: 5px;"></p>
                                                </div>
                                             </div>
                                             <div class="form-check form-check-inline d-flex">
                                                <input class="form-check-input me-1" type="checkbox" name="colors" id="" value="yellow">
                                                <div class="center">
                                                   <p style="width: 40px; height:20px; background:yellow; border-radius: 5px;"></p>
                                                </div>
                                             </div>
                                             <div class="form-check form-check-inline d-flex">
                                                <input class="form-check-input me-1" type="checkbox" name="colors" id="" value="pink">
                                                <div class="center">
                                                   <p style="width: 40px; height:20px; background:pink; border-radius: 5px;"></p>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="col-6 col-xl-3 d-block">
                                             <div class="form-check form-check-inline d-flex">
                                                <input class="form-check-input me-1" type="checkbox" name="colors" id="" value="blue">
                                                <div class="center">
                                                   <p style="width: 40px; height:20px; background:blue; border-radius: 5px;"></p>
                                                </div>
                                             </div>
                                             <div class="form-check form-check-inline d-flex">
                                                <input class="form-check-input me-1" type="checkbox" name="colors" id="" value="purple">
                                                <div class="center">
                                                   <p style="width: 40px; height:20px; background:purple; border-radius: 5px;"></p>
                                                </div>
                                             </div>
                                             <div class="form-check form-check-inline d-flex">
                                                <input class="form-check-input me-1" type="checkbox" name="colors" id="" value="white">
                                                <div class="center">
                                                   <p style="width: 40px; height:20px; border: 1px solid #b1b1b1;background:white; border-radius: 5px;"></p>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="col-6 col-xl-3 d-block">
                                             <div class="form-check form-check-inline d-flex">
                                                <input class="form-check-input me-1" type="checkbox" name="colors" id="" value="gray">
                                                <div class="center">
                                                   <p style="width: 40px; height:20px; background:gray; border-radius: 5px;"></p>
                                                </div>
                                             </div>
                                             <div class="form-check form-check-inline d-flex">
                                                <input class="form-check-input me-1" type="checkbox" name="colors" id="" value="orange">
                                                <div class="center">
                                                   <p style="width: 40px; height:20px; background:orange; border-radius: 5px;"></p>
                                                </div>
                                             </div>
                                             <div class="form-check form-check-inline d-flex">
                                                <input class="form-check-input me-1" type="checkbox" name="colors" id="" value="dank-blue">
                                                <div class="center">
                                                   <p style="width: 40px; height:20px; background:#27487a; border-radius: 5px;"></p>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
          </form>
            <!-- </div> -->
         </div>
         <!-- =====contentProducts===== -->
         <div class="content open" id="contentProducts">
            <div class="container-fluid grid px-0">
               <nav aria-label="breadcrumb">
                  <ol class="breadcrumb">
                     <li class="breadcrumb-item " aria-current="page"><a href="#">E commerce</a></li>
                     <li class="breadcrumb-item active" aria-current="page">Admin</li>
                     <li class="breadcrumb-item active" aria-current="page">Products</li>
                  </ol>
               </nav>
               <h2 class="my-6 font-semibold text-2xl text-gray-700 dark:text-gray-200">
                  Products
               </h2>

               <div class="d-flex flex-wrap gap-3 justify-content-between mb-4">
                  <div class="d-flex flex-wrap gap-3 align-items-center">
                     <div class="search-box">
                        <form role="search">
                           <div class="position-relative">
                              <input class="form-control search-input search fs-9" id="searchBar" name="searchBar" type="text" placeholder="Search products" />
                              <ul class="listItem position-absolute" style="list-style: none; background-color: white;"></ul>
                           </div>
                           <span class="fas fa-search search-box-icon"></span>
                        </form>
                     </div>

                     <div class="d-inline-flex" style="padding-top: 2px;">
                        <div class="myDropdown" style="margin: 3px;" onclick="contentAuto(event,'type','myDropdown-menu')">
                           <button class="border border-radius-sm p-1 fs-9 d-flex" type="button">CATEGORY
                              <span class="fas fa-angle-down ms-2 mt-1"></span>
                           </button>
                           <ul class="filter myDropdown-menu display-none border border-radius-sm fs-9" id="type">
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
                        <span class="fa-solid fa-file-export fs-9 me-2"></span>
                        Export
                     </button>
                     <button class="btn btn-primary d-flex center" id="addBtn" onclick="content(event,'contentAddProduct','content')">
                        <span class="fas fa-plus me-2"></span>
                        <a href="">Add product</a>
                     </button>
                  </div>
               </div>
               <div class="w-full overflow-hidden">
                  <div class="w-full overflow-x-auto" style="scrollbar-width:none;">
                     <table class="table  fs-9 mb-0">
                        <thead>
                           <tr>
                              <th class="align-middle" style="width: 5%;">
                                 <div class="form-check center"><input class="form-check-input" id="checkbox-bulk-products-select" type="checkbox" data-bulk-select='{"body":"products-table-body"}' /></div>
                              </th>
                              <th class="align-middle fs-10 " scope="col" style="width:5%">ID</th>
                              <th class="align-middle fs-10" scope="col" style="width:10%"></th>
                              <th class="align-middle" scope="col" style="width:20%; min-width:200px;" data-sort>PRODUCT NAME</th>
                              <th class="align-middle" scope="col" data-sort="" style="width:10%; max-width:10px;">CATEGORY</th>
                              <th class="align-middle " scope="col" data-sort="" style="width:5%; min-width:100px;">PRICE</th>
                              <th class="align-middle " scope="col" data-sort="" style="width:10%;">COLOR</th>
                              <th class="align-middle " scope="col" data-sort="" style="width:10%;min-width:250px;">DECRIPTION</th>
                              <th class="align-middle" scope="col" style="width:10%;"></th>
                           </tr>
                        </thead>
						<%
							DAO service = new DaoImplement();
							request.setAttribute("category", service);
							List<Products> Product = service.getProducts();
							request.setAttribute("Product", Product);
						%>
                        <tbody class="filterable-cards" id="">
                        <c:forEach var="product" items="${Product}" varStatus="loop"> <!--  varStatus="loop" create value index for loop -->
                           <tr class="" data-name="${product.category_id}">
                              <td class="align-middle">
                                 <div class="form-check center"><input class="form-check-input" type="checkbox"
                                       data-bulk-select-row='{"product":"Fitbit Sense Advanced Smartwatch with Tools for Heart Health, Stress Management & Skin Temperature Trends, Carbon/Graphite, One Size (S & L Bands...","productImage":"/products/1.png","price":"$39","category":"Plants","tags":["Health","Exercise","Discipline","Lifestyle","Fitness"],"star":false,"vendor":"Blue Olive Plant sellers. Inc","publishedOn":"Nov 12, 10:45 PM"}' />
                                 </div>
                              </td>
                              <td class="align-middle">
                                 <a class="" href="">
                                    ${product.product_id}
                                 </a>
                              </td>
                              <td class="align-middle">
                                 <a class="center" href="">
                                    <img class="border-radius-lg" src="${product.images[0]}" alt="" width="53" />
                                 </a>
                              </td>
                              <td class="product align-middle pe-5">
                                 <a class="fw-semibold line-clamp-3 mb-0 white-space-nowrap" href="">
                                 ${product.product_name}
                                 </a>
                              </td>
                              <td class="align-middle white-space-nowrap fs-9">${category.getCategoryName(product.category_id)}</td>
                              <td class="align-middle white-space-nowrap fs-9">$${product.price}</td>
                              <td class="align-middle white-space-nowrap fs-9">${product.colors[0]}</td>
                              <td class="align-middle white-space-nowrap fs-9">${product.description}</td>
                              <td class="align-middle white-space-nowrap text-center btn-reveal-trigger">
                                 <form action="NtStore" method="get">
                                 		<input type="hidden" name="productId" value="${product.product_id}">
										<button class="me-2"  type="submit"><i class="fa-solid fa-pen text-primary"></i></button>												
										<button name="implement" value="remove"  type="submit"><i class="fa-solid fa-trash text-danger"></i></button>
								 </form>
                              </td>
                           </tr>
                        </c:forEach>
                        </tbody>
                     </table>
                  </div>

                  <div class="row align-items-center justify-content-between py-2 pe-0 fs-9">
                     <div class="col-auto d-flex">
                        <p class="mb-0 d-none d-sm-block me-3 fw-semibold text-body" data-list-info="data-list-info"></p><a class="fw-semibold" href="#!" data-list-view="*">View all<span class="fas fa-angle-right ms-1"
                              data-fa-transform="down-1"></span></a><a class="fw-semibold d-none" href="#!" data-list-view="less">View Less<span class="fas fa-angle-right ms-1" data-fa-transform="down-1"></span></a>
                     </div>
                     <div class="col-auto d-flex"><button class="page-link" data-list-pagination="prev"><span class="fas fa-chevron-left"></span></button>
                        <ul class="mb-0 pagination"></ul><button class="page-link pe-0" data-list-pagination="next"><span class="fas fa-chevron-right"></span></button>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- =====contentMembersDetail===== -->
         <div class="content" id="contentMembersDetail">
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
         <!-- =====contentOrder===== -->
         <div class="content" id="contentOrder">
            <div class="container-fluid grid px-0">
               <nav aria-label="breadcrumb">
                  <ol class="breadcrumb">
                     <li class="breadcrumb-item " aria-current="page"><a href="#">E commerce</a></li>
                     <li class="breadcrumb-item active" aria-current="page">Admin</li>
                     <li class="breadcrumb-item active" aria-current="page">Orders</li>
                  </ol>
               </nav>
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
                     <div class=""><a href="" class="fs-9">All(2056)</a></div>
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
                              <th class="align-middle" style="width: 10%;min-width:100px;">Order</th>
                              <th class="align-middle" style="width: 25%; min-width:250px;">Customer</th>
                              <th class="align-middle" scope="col" style="width:15%; min-width:100px;">Total</th>
                              <th class="align-middle" scope="col" style="width:20%; min-width:150px;" data-sort="product">Delivery type</th>
                              <th class="align-middle" scope="col" data-sort="category" style="width:20%; min-width:200px;">Date</th>
                              <th class="align-middle" scope="col" style="width:10%; min-width:100px;"></th>
                           </tr>
                        </thead>
                        <tbody class="filterable-cards" id="">
                           <tr class="" data-name>
                              <td class="align-middle text-primary"><a href="#">#2543</a></td>
                              <td class="align-middle">
                                 <a class="d-flex align-items-center text-body" href="#">
                                    <div class="customer_img">
                                       <img src="image/customer1.jpg" alt="imgCustomer">
                                    </div>
                                    <h6 class="mb-0 ms-3 text-body">Richard Dawkins</h6>
                                 </a>
                              </td>
                              <td class="align-middle text-body-secondary">$87</td>
                              <td class="align-middle pe-5 text-body-secondary">Fullfilled by NtFashion</td>
                              <td class="align-middle white-space-nowrap pe-5 text-body-secondary">Dec 12, 12:56 PM</td>
                              <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                 <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point29','myDropdown-menu')">
                                    <button class="p-1 fs-9 d-flex center" type="button">
                                       <i class="fa-solid fa-ellipsis fs-10"></i>
                                       <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                    </button>
                                    <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point29">
                                       <li><button type="button" href="#">View</button></li>
                                       <li><button type="button" href="#">Remove</button></li>
                                    </ul>
                                 </div>
                              </td>
                           </tr>
                           <tr class="" data-name>
                              <td class="align-middle text-primary"><a href="#">#2543</a></td>
                              <td class="align-middle">
                                 <a class="d-flex align-items-center text-body" href="#">
                                    <div class="customer_img">
                                       <img src="image/customer1.jpg" alt="imgCustomer">
                                    </div>
                                    <h6 class="mb-0 ms-3 text-body">Richard Dawkins</h6>
                                 </a>
                              </td>
                              <td class="align-middle text-body-secondary">$87</td>
                              <td class="align-middle pe-5 text-body-secondary">Fullfilled by Seller</td>
                              <td class="align-middle white-space-nowrap pe-5 text-body-secondary">Dec 12, 12:56 PM</td>
                              <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                 <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point30','myDropdown-menu')">
                                    <button class="p-1 fs-9 d-flex center" type="button">
                                       <i class="fa-solid fa-ellipsis fs-10"></i>
                                       <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                    </button>
                                    <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point30">
                                       <li><button type="button" href="#">View</button></li>
                                       <li><button type="button" href="#">Remove</button></li>
                                    </ul>
                                 </div>
                              </td>
                           </tr>
                           <tr class="" data-name>
                              <td class="align-middle text-primary"><a href="#">#2543</a></td>
                              <td class="align-middle">
                                 <a class="d-flex align-items-center text-body" href="#">
                                    <div class="customer_img">
                                       <img src="image/customer1.jpg" alt="imgCustomer">
                                    </div>
                                    <h6 class="mb-0 ms-3 text-body">Richard Dawkins</h6>
                                 </a>
                              </td>
                              <td class="align-middle text-body-secondary">$87</td>
                              <td class="align-middle pe-5 text-body-secondary">Fullfilled by NtFashion</td>
                              <td class="align-middle white-space-nowrap pe-5 text-body-secondary">Dec 12, 12:56 PM</td>
                              <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                 <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point31','myDropdown-menu')">
                                    <button class="p-1 fs-9 d-flex center" type="button">
                                       <i class="fa-solid fa-ellipsis fs-10"></i>
                                       <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                    </button>
                                    <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point31">
                                       <li><button type="button" href="#">View</button></li>
                                       <li><button type="button" href="#">Remove</button></li>
                                    </ul>
                                 </div>
                              </td>
                           </tr>
                           <tr class="" data-name>
                              <td class="align-middle text-primary"><a href="#">#2543</a></td>
                              <td class="align-middle">
                                 <a class="d-flex align-items-center text-body" href="#">
                                    <div class="customer_img">
                                       <img src="image/customer1.jpg" alt="imgCustomer">
                                    </div>
                                    <h6 class="mb-0 ms-3 text-body">Richard Dawkins</h6>
                                 </a>
                              </td>
                              <td class="align-middle text-body-secondary">$87</td>
                              <td class="align-middle pe-5 text-body-secondary">Fullfilled by Seller</td>
                              <td class="align-middle white-space-nowrap pe-5 text-body-secondary">Dec 12, 12:56 PM</td>
                              <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                 <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point32','myDropdown-menu')">
                                    <button class="p-1 fs-9 d-flex center" type="button">
                                       <i class="fa-solid fa-ellipsis fs-10"></i>
                                       <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                    </button>
                                    <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point32">
                                       <li><button type="button" href="#">View</button></li>
                                       <li><button type="button" href="#">Remove</button></li>
                                    </ul>
                                 </div>
                              </td>
                           </tr>
                           <tr class="" data-name>
                              <td class="align-middle text-primary"><a href="#">#2543</a></td>
                              <td class="align-middle">
                                 <a class="d-flex align-items-center text-body" href="#">
                                    <div class="customer_img">
                                       <img src="image/customer1.jpg" alt="imgCustomer">
                                    </div>
                                    <h6 class="mb-0 ms-3 text-body">Richard Dawkins</h6>
                                 </a>
                              </td>
                              <td class="align-middle text-body-secondary">$87</td>
                              <td class="align-middle pe-5 text-body-secondary">Fullfilled by NtFashion</td>
                              <td class="align-middle white-space-nowrap pe-5 text-body-secondary">Dec 12, 12:56 PM</td>
                              <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                 <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point3','myDropdown-menu')">
                                    <button class="p-1 fs-9 d-flex center" type="button">
                                       <i class="fa-solid fa-ellipsis fs-10"></i>
                                       <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                    </button>
                                    <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point33">
                                       <li><button type="button" href="#">View</button></li>
                                       <li><button type="button" href="#">Remove</button></li>
                                    </ul>
                                 </div>
                              </td>
                           </tr>
                           <tr class="" data-name>
                              <td class="align-middle text-primary"><a href="#">#2543</a></td>
                              <td class="align-middle">
                                 <a class="d-flex align-items-center text-body" href="#">
                                    <div class="customer_img">
                                       <img src="image/customer1.jpg" alt="imgCustomer">
                                    </div>
                                    <h6 class="mb-0 ms-3 text-body">Richard Dawkins</h6>
                                 </a>
                              </td>
                              <td class="align-middle text-body-secondary">$87</td>
                              <td class="align-middle pe-5 text-body-secondary">Fullfilled by NtFashion</td>
                              <td class="align-middle white-space-nowrap pe-5 text-body-secondary">Dec 12, 12:56 PM</td>
                              <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                 <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point34','myDropdown-menu')">
                                    <button class="p-1 fs-9 d-flex center" type="button">
                                       <i class="fa-solid fa-ellipsis fs-10"></i>
                                       <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                    </button>
                                    <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point34">
                                       <li><button type="button" href="#">View</button></li>
                                       <li><button type="button" href="#">Remove</button></li>
                                    </ul>
                                 </div>
                              </td>
                           </tr>
                           <tr class="" data-name>
                              <td class="align-middle text-primary"><a href="#">#2543</a></td>
                              <td class="align-middle">
                                 <a class="d-flex align-items-center text-body" href="#">
                                    <div class="customer_img">
                                       <img src="image/customer1.jpg" alt="imgCustomer">
                                    </div>
                                    <h6 class="mb-0 ms-3 text-body">Richard Dawkins</h6>
                                 </a>
                              </td>
                              <td class="align-middle text-body-secondary">$87</td>
                              <td class="align-middle pe-5 text-body-secondary">Fullfilled by Seller</td>
                              <td class="align-middle white-space-nowrap pe-5 text-body-secondary">Dec 12, 12:56 PM</td>
                              <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                 <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point35','myDropdown-menu')">
                                    <button class="p-1 fs-9 d-flex center" type="button">
                                       <i class="fa-solid fa-ellipsis fs-10"></i>
                                       <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                    </button>
                                    <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point35">
                                       <li><button type="button" href="#">View</button></li>
                                       <li><button type="button" href="#">Remove</button></li>
                                    </ul>
                                 </div>
                              </td>
                           </tr>
                           <tr class="" data-name>
                              <td class="align-middle text-primary"><a href="#">#2543</a></td>
                              <td class="align-middle">
                                 <a class="d-flex align-items-center text-body" href="#">
                                    <div class="customer_img">
                                       <img src="image/customer1.jpg" alt="imgCustomer">
                                    </div>
                                    <h6 class="mb-0 ms-3 text-body">Richard Dawkins</h6>
                                 </a>
                              </td>
                              <td class="align-middle text-body-secondary">$87</td>
                              <td class="align-middle pe-5 text-body-secondary">Fullfilled by NtFashion</td>
                              <td class="align-middle white-space-nowrap pe-5 text-body-secondary">Dec 12, 12:56 PM</td>
                              <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                 <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point36','myDropdown-menu')">
                                    <button class="p-1 fs-9 d-flex center" type="button">
                                       <i class="fa-solid fa-ellipsis fs-10"></i>
                                       <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                    </button>
                                    <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point36">
                                       <li><button type="button" href="#">View</button></li>
                                       <li><button type="button" href="#">Remove</button></li>
                                    </ul>
                                 </div>
                              </td>
                           </tr>
                           <tr class="" data-name>
                              <td class="align-middle text-primary"><a href="#">#2543</a></td>
                              <td class="align-middle">
                                 <a class="d-flex align-items-center text-body" href="#">
                                    <div class="customer_img">
                                       <img src="image/customer1.jpg" alt="imgCustomer">
                                    </div>
                                    <h6 class="mb-0 ms-3 text-body">Richard Dawkins</h6>
                                 </a>
                              </td>
                              <td class="align-middle text-body-secondary">$87</td>
                              <td class="align-middle pe-5 text-body-secondary">Fullfilled by NtFashion</td>
                              <td class="align-middle white-space-nowrap pe-5 text-body-secondary">Dec 12, 12:56 PM</td>
                              <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                 <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point37','myDropdown-menu')">
                                    <button class="p-1 fs-9 d-flex center" type="button">
                                       <i class="fa-solid fa-ellipsis fs-10"></i>
                                       <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                    </button>
                                    <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point37">
                                       <li><button type="button" href="#">View</button></li>
                                       <li><button type="button" href="#">Remove</button></li>
                                    </ul>
                                 </div>
                              </td>
                           </tr>
                           <tr class="" data-name>
                              <td class="align-middle text-primary"><a href="#">#2543</a></td>
                              <td class="align-middle">
                                 <a class="d-flex align-items-center text-body" href="#">
                                    <div class="customer_img">
                                       <img src="image/customer1.jpg" alt="imgCustomer">
                                    </div>
                                    <h6 class="mb-0 ms-3 text-body">Richard Dawkins</h6>
                                 </a>
                              </td>
                              <td class="align-middle text-body-secondary">$87</td>
                              <td class="align-middle pe-5 text-body-secondary">Fullfilled by Seller</td>
                              <td class="align-middle white-space-nowrap pe-5 text-body-secondary">Dec 12, 12:56 PM</td>
                              <td class="align-middle white-space-nowrap text-center text-body-secondary">
                                 <div class="myDropdown center" style="margin: 3px;" onclick="contentAuto(event,'point38','myDropdown-menu')">
                                    <button class="p-1 fs-9 d-flex center" type="button">
                                       <i class="fa-solid fa-ellipsis fs-10"></i>
                                       <i class="fa-solid fa-caret-down ms-1 fs-11"></i>
                                    </button>
                                    <ul class="myDropdown-menu display-none border border-radius-sm fs-9" id="point38">
                                       <li><button type="button" href="#">View</button></li>
                                       <li><button type="button" href="#">Remove</button></li>
                                    </ul>
                                 </div>
                              </td>
                           </tr>
                        </tbody>
                     </table>
                  </div>

                  <div class="grid px-4 py-3 text-xs font-semibold items-center text-gray-500 uppercase dark:border-gray-700 bg-gray-50 sm:grid-cols-9 dark:text-gray-400 dark:bg-gray-800">
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
         <!-- =====contentOrderDetail===== -->
         <div class="content" id="contentOrderDetail">
            <div class="container-fuid grid m-0 p-0">
               <nav aria-label="breadcrumb">
                  <ol class="breadcrumb">
                     <li class="breadcrumb-item " aria-current="page"><a href="#">E commerce</a></li>
                     <li class="breadcrumb-item active" aria-current="page">Admin</li>
                     <li class="breadcrumb-item active" aria-current="page">Order Detail</li>
                  </ol>
               </nav>
               <h2 class="mt-6 mb-1 font-semibold text-2xl text-gray-700 dark:text-gray-200">
                  Order #2543
               </h2>
               <div class="d-flex">
                  <h6 class="fs-8 text-body-secondary me-1">CustomerId:</h6>
                  <h6 class="fs-8 fw-semibold text-primary hover"><a href="#">0009</a></h6>
               </div>
               <div class="d-flex mt-4 mb-2 flex-wrap justify-content-between">
                  <div class="search-box">
                     <form class="position-relative" data-bs-toggle="search" data-bs-display="static">
                        <input class="form-control search-input search fs-9" type="search" placeholder="Search products" aria-label="Search" />
                        <span class="fas fa-search search-box-icon"></span>
                     </form>
                  </div>
                  <div class="">
                     <button class="hover" type="button">
                        <a class="d-flex align-items-center" href="#">
                           <i class="fa-solid fa-print me-1"></i>
                           <h6 class="fs-10 fw-semibold">Print</h6>
                        </a>
                     </button>
                  </div>
               </div>
               <div class="row">
                  <div class="col-12 col-xxl-8 px-xxl-2 p-0 mb-2 mb-xxl-0">
                     <div class="w-full overflow-hidden">
                        <div class="w-full overflow-x-auto" style="scrollbar-width:none">
                           <table class="table  fs-9 mb-0">
                              <thead>
                                 <tr>
                                    <th class="align-middle" style="width: 10%; min-width:50px;"></th>
                                    <th class="align-middle" scope="col" style="width:25%; min-width:100px;" data-sort="product">PRODUCT NAME</th>
                                    <th class="align-middle" scope="col" style="width:15%; min-width:50px;">COLOR</th>
                                    <th class="align-middle " scope="col" data-sort="price" style="width:15%; min-width:50px;">PRICE</th>
                                    <th class="align-middle" scope="col" data-sort="category" style="width:15%; min-width:50px;">SIZE</th>
                                    <th class="align-middle" scope="col" data-sort="vendor" style="width:10%; min-width:50px;">QUANTITY</th>
                                    <th class="align-middle whitespace-no-wrap text-end" scope="col" data-sort="time" style="width:10%; min-width:50px;">TOTAL</th>
                                 </tr>
                              </thead>
                              <tbody class="filterable-cards" id="">
                                 <tr class="" data-name="">
                                    <td class="align-middle">
                                       <a class="center" href="">
                                          <img class="border-radius-lg" src="image/products-no-bg/insta_1_img.png" alt="" width="53" />
                                       </a>
                                    </td>
                                    <td class="product align-middle pe-5">
                                       <a class="fw-semibold line-clamp-3 mb-0 white-space-nowrap" href="">Tank-top</a>
                                    </td>
                                    <td class="price align-middle white-space-nowrap fw-bold ">White</td>
                                    <td class="category align-middle white-space-nowrap fs-9 fw-semibold">$40</td>
                                    <td class="category align-middle white-space-nowrap fs-9 fw-semibold">M</td>
                                    <td class="time align-middle white-space-nowrap">4</td>
                                    <td class="time align-middle white-space-nowrap text-end">$160</td>
                                 </tr>
                                 <tr class="" data-name="">
                                    <td class="align-middle">
                                       <a class="center" href="">
                                          <img class="border-radius-lg" src="image/products-no-bg/insta_1_img.png" alt="" width="53" />
                                       </a>
                                    </td>
                                    <td class="product align-middle pe-5">
                                       <a class="fw-semibold line-clamp-3 mb-0 white-space-nowrap" href="">Tank-top</a>
                                    </td>
                                    <td class="price align-middle white-space-nowrap fw-bold ">White</td>
                                    <td class="category align-middle white-space-nowrap fs-9 fw-semibold">$40</td>
                                    <td class="category align-middle white-space-nowrap fs-9 fw-semibold">M</td>
                                    <td class="time align-middle white-space-nowrap">4</td>
                                    <td class="time align-middle white-space-nowrap text-end">$160</td>
                                 </tr>
                                 <tr class="" data-name="">
                                    <td class="align-middle">
                                       <a class="center" href="">
                                          <img class="border-radius-lg" src="image/products-no-bg/insta_1_img.png" alt="" width="53" />
                                       </a>
                                    </td>
                                    <td class="product align-middle pe-5">
                                       <a class="fw-semibold line-clamp-3 mb-0 white-space-nowrap" href="">Tank-top</a>
                                    </td>
                                    <td class="price align-middle white-space-nowrap fw-bold ">White</td>
                                    <td class="category align-middle white-space-nowrap fs-9 fw-semibold">$40</td>
                                    <td class="category align-middle white-space-nowrap fs-9 fw-semibold">M</td>
                                    <td class="time align-middle white-space-nowrap">4</td>
                                    <td class="time align-middle white-space-nowrap text-end">$160</td>
                                 </tr>
                                 <tr class="" data-name="">
                                    <td class="align-middle">
                                       <a class="center" href="">
                                          <img class="border-radius-lg" src="image/products-no-bg/insta_1_img.png" alt="" width="53" />
                                       </a>
                                    </td>
                                    <td class="product align-middle pe-5">
                                       <a class="fw-semibold line-clamp-3 mb-0 white-space-nowrap" href="">Tank-top</a>
                                    </td>
                                    <td class="price align-middle white-space-nowrap fw-bold ">White</td>
                                    <td class="category align-middle white-space-nowrap fs-9 fw-semibold">$40</td>
                                    <td class="category align-middle white-space-nowrap fs-9 fw-semibold">M</td>
                                    <td class="time align-middle white-space-nowrap">4</td>
                                    <td class="time align-middle white-space-nowrap text-end">$160</td>
                                 </tr>
                                 <tr class="" data-name="">
                                    <td class="align-middle">
                                       <a class="center" href="">
                                          <img class="border-radius-lg" src="image/products-no-bg/insta_1_img.png" alt="" width="53" />
                                       </a>
                                    </td>
                                    <td class="product align-middle pe-5">
                                       <a class="fw-semibold line-clamp-3 mb-0 white-space-nowrap" href="">Tank-top</a>
                                    </td>
                                    <td class="price align-middle white-space-nowrap fw-bold ">White</td>
                                    <td class="category align-middle white-space-nowrap fs-9 fw-semibold">$40</td>
                                    <td class="category align-middle white-space-nowrap fs-9 fw-semibold">M</td>
                                    <td class="time align-middle white-space-nowrap">4</td>
                                    <td class="time align-middle white-space-nowrap text-end">$160</td>
                                 </tr>
                                 <tr class="" data-name="">
                                    <td class="align-middle">
                                       <a class="center" href="">
                                          <img class="border-radius-lg" src="image/products-no-bg/insta_1_img.png" alt="" width="53" />
                                       </a>
                                    </td>
                                    <td class="product align-middle pe-5">
                                       <a class="fw-semibold line-clamp-3 mb-0 white-space-nowrap" href="">Tank-top</a>
                                    </td>
                                    <td class="price align-middle white-space-nowrap fw-bold ">White</td>
                                    <td class="category align-middle white-space-nowrap fs-9 fw-semibold">$40</td>
                                    <td class="category align-middle white-space-nowrap fs-9 fw-semibold">M</td>
                                    <td class="time align-middle white-space-nowrap">4</td>
                                    <td class="time align-middle white-space-nowrap text-end">$160</td>
                                 </tr>
                              </tbody>
                           </table>
                        </div>
                     </div>
                     <div class="w-full overflow-hidden">
                        <table class="table fs-8 mb-0">
                           <tr class="justify-content-between">
                              <td class="text-start">Items subtotal:</td>
                              <td class="text-end">$1690</td>
                        </table>
                     </div>

                  </div>
                  <div class="col-12 col-xxl-4 px-xxl-2 p-0">
                     <div class="row">
                        <div class="col-12">
                           <div class="card mb-3">
                              <div class="card-body">
                                 <h3 class="card-title mb-4">Summary</h3>
                                 <div>
                                    <div class="d-flex justify-content-between">
                                       <p class="text-body fw-semibold">Items subtotal :</p>
                                       <p class="text-body-emphasis fw-semibold">$691</p>
                                    </div>
                                    <div class="d-flex justify-content-between">
                                       <p class="text-body fw-semibold">Discount :</p>
                                       <p class="text-danger fw-semibold">-$59</p>
                                    </div>
                                    <div class="d-flex justify-content-between">
                                       <p class="text-body fw-semibold">Tax :</p>
                                       <p class="text-body-emphasis fw-semibold">$126.20</p>
                                    </div>
                                    <div class="d-flex justify-content-between">
                                       <p class="text-body fw-semibold">Subtotal :</p>
                                       <p class="text-body-emphasis fw-semibold">$665</p>
                                    </div>
                                    <div class="d-flex justify-content-between">
                                       <p class="text-body fw-semibold">Shipping Cost :</p>
                                       <p class="text-body-emphasis fw-semibold">$30</p>
                                    </div>
                                 </div>
                                 <div class="d-flex justify-content-between border-top border-translucent border-dashed pt-4">
                                    <h4 class="mb-0">Total :</h4>
                                    <h4 class="mb-0">$695.20</h4>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-12">
                           <div class="card">
                              <div class="card-body">
                                 <h3 class="card-title mb-4">Order Status</h3>
                                 <h6 class="mb-2">Payment status</h6><select class="form-select mb-4" aria-label="delivery type">
                                    <option value="cod">Processing</option>
                                    <option value="card">Canceled</option>
                                    <option value="paypal">Completed</option>
                                 </select>
                                 <h6 class="mb-2">Fulfillment status</h6><select class="form-select" aria-label="delivery type">
                                    <option value="cod">Unfulfilled</option>
                                    <option value="card">Fulfilled</option>
                                    <option value="paypal">Pending</option>
                                 </select>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>


            </div>
         </div>
      </div>
   </div>
<script src="js/app.js"></script>
<script src="js/charts-bars.js"></script>
<script src="js/charts-lines.js"></script>
<script src="js/charts-pie.js"></script>
<script src="js/focus-trap.js"></script>
<script src="js/init-alpine.js"></script>
<script src="js/tinyMCE.js"></script>
<script src="js/uploadFile.js"></script>
<script src="js/filterable.js"></script>
<!-- <script src="js/autoComplete.js"></script> -->
<script src="js/checkInfor.js"></script>
</body>
</html>


