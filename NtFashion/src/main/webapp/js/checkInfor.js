function checkInput(myClass) {
	var myClass = document.querySelectorAll('.' + myClass + ' input, .' + myClass + ' textarea, .' + myClass + ' select, .' + myClass + ' checkbox');
	console.log(myClass);
}




function checkAddProduct(myClass) {
	
  
	var myClass = document.querySelectorAll('.' + myClass + ' input, .' + myClass + ' textarea, .' + myClass + ' select, .' + myClass + ' checkbox');
	var arr1 = myClass[1];
	var arr2 = myClass[2];
	var arr3 = myClass[3];
	var arr4 = myClass[4];
	var arr9 = myClass[9];
	var arr10 = myClass[10];
	var arr11 = myClass[11];
	var arr12 = myClass[12];
	var arr13 = myClass[13];
	var arr14 = myClass[14];
	var arr15 = myClass[15];
	var arr16 = myClass[16];
	var arr17 = myClass[17];
	var arr18 = myClass[18];
	var arr19 = myClass[19];
	var arr20 = myClass[20];
	var arr21 = myClass[21];
	var arr22 = myClass[22];
	var arr23 = myClass[23];
	var arr24 = myClass[24];
	var arr25 = myClass[25];
	if (arr1.value === "" || arr2.value === "" || arr3.value === "") {
		alert("Please fill in the information title, file images  and description");
		return;
	}

	if (isNaN(arr4.value) || arr4.value === "") {
		alert("Please fill in the price number and do not leave it blank");
		return;
	}

	if (arr9.selectedIndex === 0 || arr10.selectedIndex === 0) {
		alert("Least must be one select option");
		return;
	}

	if (((arr11.checked) || (arr12.checked) || (arr13.checked) || (arr14.checked) || (arr15.checked) || (arr16.checked)) && ((arr17.checked) || (arr18.checked) || (arr19.checked) || (arr20.checked) || (arr21.checked) || (arr22.checked) || (arr23.checked) || (arr24.checked) || (arr25.checked))) {

	} else {
		alert("Please least one checked")
		return;
	}

}





