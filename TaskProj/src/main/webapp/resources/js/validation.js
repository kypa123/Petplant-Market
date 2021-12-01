function CheckAddProduct(){
	
	var form = document.newProduct;
	var plantId = form.plantId;
	var name = form.name;
	var pPrice = form.price;
	var unitsInStock = form.p_stock;
	var period = form.p_period;
	
	
	if(!check(/^p[0-9]{4}$/,plantId, "[]\np로 시작하는 총 다섯자리 아이디를 입력해주세요.\n첫글자는 반드시 p로 시작해야 합니다!"))
		return false;
		
	if(name.value.length<2 || name.value.length>10){
		alert("[제품이름]\n최소 2글자, 최대 10글자까지 입력해주세요");
		name.select();
		name.focus();
		return false;
	}
	if(pPrice.value < 0 || isNaN(pPrice.value || pPrice.value == "")){
		alert("[가격]\n0 이상의 숫자를 입력해주세요");
		pPrice.select();
		pPrice.focus();
		return false;
	}
	if(isNaN(period.value || period.value=="")){
		alert("[물 주기]\n0 이상의 숫자만 입력해주세요.");
		peroid.select();
		period.focus();
	}
	if(isNaN(unitsInStock.value)){
		alert("[재고 수]\n숫자만 입력해주세요!");
		unitsInStock.select();
		unitsInStock.focus();
		return false;
	}
	
	function check(regExp, e, msg){
		if(regExp.test(e.value))
			return true;
		
		alert(msg);
		e.select();
		e.focus();
		return false;
	}
	form.submit();

	
}