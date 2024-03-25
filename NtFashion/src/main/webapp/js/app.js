function toggle(id) {
  // =======ACCORDION========
  var toggle = document.getElementById("show" + id);
  toggle.classList.toggle("show");

  // ==========ROTATE ICON===============
  var toggleIcon = document.getElementById("rotated-icon" + id);
  toggleIcon.classList.toggle("rotated-icon");
  event.preventDefault(); // Ngăn chặn hành vi mặc định của liên kết
}

// =========TEXT COLOR========
function toggleColor(id) {
  var toggleColor = document.querySelectorAll("[id^='textColor']");

  toggleColor.forEach(function (link) {
    if (link.id === "textColor" + id) {
      link.classList.add("text-primary");
    } else {
      link.classList.remove("text-primary");
    }
  });
  event.preventDefault(); // Ngăn chặn hành vi mặc định của liên kết
}

function dropdown(event, id) {
  event.preventDefault(); // Ngăn chặn hành vi mặc định của liên kết
  var dropdown = document.getElementById(id);
  var dropdowns = document.getElementsByClassName("dropdown");

  if (!dropdown.classList.contains("open")) {
    // Loại bỏ lớp "open" khỏi tất cả các phần tử dropdown khác
    for (var i = 0; i < dropdowns.length; i++) {
      dropdowns[i].classList.remove("open");
    }

    // Thêm lớp "open" vào phần tử dropdown được nhấp vào
    dropdown.classList.add("open");
  } else {
    // Loại bỏ lớp "open" khỏi phần tử dropdown được nhấp vào
    dropdown.classList.remove("open");
  }
}
function content(event, id, nameClass) {
  event.preventDefault(); // Ngăn chặn hành vi mặc định của liên kết
  var content = document.getElementById(id);
  var contents = document.getElementsByClassName(nameClass);
  if (!content.classList.contains("open")) {
    for (var i = 0; i < contents.length; i++) {
      contents[i].classList.remove("open");
    }
    content.classList.add("open");
  }
}

function contentAuto(event, id, nameClass) {
  event.preventDefault(); // Ngăn chặn hành vi mặc định của liên kết
  var content = document.getElementById(id);
  var contents = document.getElementsByClassName(nameClass);
  if (!content.classList.contains("open")) {
    for (var i = 0; i < contents.length; i++) {
      contents[i].classList.remove("open");
    }
    content.classList.add("open");
  }
  else {
    content.classList.remove("open");
  }
}

function textColor(event, id) {
  event.preventDefault(); // Ngăn chặn hành vi mặc định của liên kết
  var textColor = document.getElementById(id);
  var textColors = document.getElementsByClassName("bgPagination");
  if (!textColor.classList.contains("text-bg-primary")) {
    for (var i = 0; i < textColors.length; i++) {
      textColors[i].classList.remove("text-bg-primary");
    }
    textColor.classList.add("text-bg-primary");
  }
}

// function toggleAdminRotateIcon(AdminRotateIconId) {
//   // ==========ROTATE ICON===============
//   var accordionAdminIcon = document.getElementById(
//     "AdminRotateIcon" + AdminRotateIconId
//   );
//   accordionAdminIcon.classList.toggle("rotated-icon");
// }

// function toggleAccordionColorLevel_0(event, clickedLink1) {
//   event.preventDefault(); // Ngăn chặn hành vi mặc định của liên kết

//   var links = document.querySelectorAll(".colum-left button");
//   links.forEach(function (link) {
//     if (link === clickedLink1) {
//       link.classList.add("text-light");
//     } else {
//       link.classList.remove("text-light");
//     }
//   });
// }

// function toggleAccordionColorLevel_1(AdminAccordionColorId) {
//   var accordionAdminAccordionColor = document.querySelectorAll(
//     "[id^='textColorLevelOne']"
//   );

//   accordionAdminAccordionColor.forEach(function (link) {
//     if (link.id === "textColorLevelOne" + AdminAccordionColorId) {
//       link.classList.add("text-light");
//     } else {
//       link.classList.remove("text-light");
//     }
//   });
// }

// function toggleAccordionColorLevel_2(AdminAccordionColorId) {
//   var accordionAdminAccordionColor = document.querySelectorAll(
//     "[id^='textColorLevelTwo']"
//   );

//   accordionAdminAccordionColor.forEach(function (link) {
//     if (link.id === "textColorLevelTwo" + AdminAccordionColorId) {
//       link.classList.add("text-light");
//     } else {
//       link.classList.remove("text-light");
//     }
//   });
// }

// function toggleColor(event, clickedLink) {
//   event.preventDefault(); // Ngăn chặn hành vi mặc định của liên kết

//   var links = document.querySelectorAll(".accordion-content a");
//   links.forEach(function (link) {
//     if (link === clickedLink) {
//       link.classList.add("text-light");
//     } else {
//       link.classList.remove("text-light");
//     }
//   });
// }
