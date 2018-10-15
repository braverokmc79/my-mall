function NumFormat(t) // 원 단위, 찍어주기
{
	s = t.value;
	s = s.replace(/\D/g, '');
	l = s.length - 3;
	while (l > 0) {
		s = s.substr(0, l) + ',' + s.substr(l);
		l -= 3;
	}
	t.value = s;
	return t;
}

function comma(num){
    var len, point, str;  
       
    num = num + "";  
    point = num.length % 3 ;
    len = num.length;  
   
    str = num.substring(0, point);  
    while (point < len) {  
        if (str != "") str += ",";  
        str += num.substring(point, point + 3);  
        point += 3;  
    }  
     
    return str;
 
}

function go_ab() // 판매가-원가=순매출을 replace해서 계산해 준다.
{
	var theForm = document.frm;
	if(theForm.price1.value.length==0){
		alert("원가를 먼저 입력하세요");
		theForm.price1.focus();
		theForm.price2.value="";
		return;
	}else{
		var a = theForm.price2.value.replace(/,/g, '');
		var b = theForm.price1.value.replace(/,/g, '');
		var s = parseInt(a) - parseInt(b);
		
		theForm.price3.value = comma(s);
		
		$("#salePersent").val("");
		$("#salePrice1").val("");
	}
	
}

function go_sale()
{
	var theForm = document.frm;
	if(theForm.price1.value.length==0){
		alert("원가를 먼저 입력하세요");
		theForm.price1.focus();
		theForm.salePrice1.value="";
		return;
	}else {
		var a = theForm.salePrice1.value.replace(/,/g, '');
		var b = theForm.price1.value.replace(/,/g, '');
		var s = parseInt(a) - parseInt(b);
		
		
		//theForm.salePrice2.value =comma(s);
		theForm.price3.value =comma(s);
		
	}
}


// 폼에 입력이 올바른지 판단한다.
// productWrite.jsp에서 사용한다.
function go_save() 
{
	var theForm = document.frm;
	tinyMCE.triggerSave();
	
	
	if (theForm.kind1.value == '') {
		alert('상품분류를 선택하세요.');
		theForm.kind1.focus();
	}else if(theForm.kind2.value == ''){ 
		alert('상품 2차 분류를 선택하세요.');
		theForm.kind2.focus();
	}else if (theForm.name.value == '') {
		alert('상품명을 입력하세요.');
		theForm.name.focus();
	} else if (theForm.price1.value == '') {
		alert('원가를 입력하세요.');
		theForm.price1.focus();
	} else if (theForm.price2.value == '') {
		alert('판매가를 입력하세요.');
		theForm.price2.focus();
	}else if (theForm.totalNumber.value == '') { 
	
		alert('총 개수를 입력하세요.');
		theForm.totalNumber.focus();
	
	}else if (theForm.countryId.value == '') { 
	
		alert('제조국을 선택하세요.');
		
	
	}else if (theForm.company.value == '') { 
		alert('제조회사를 입력하세요.');
		theForm.company.focus();
	
	
	}else if (theForm.productDate.value == '') { 
		alert('제조년월을 입력하세요.');
		theForm.productDate.focus();
	
	}else if (theForm.contractContent.value =='') { 
	
		alert('간략설명을 입력하세요.');
		theForm.contractContent.focus();
	
	
	}
	
	
	else if(productSize() ==true){
		alert('상품 사이즈를 체크 해주세요. ')
		
	}else if(smallThumNmail()==true){
	
		alert('썸네일 이미지는 3개까지만 가능합니다.');
	}else if (CKEDITOR.instances.content.getData() == '') {
		alert('상품상세를 입력하세요.');
	
		
		
	} else if (theForm.oldImg.value == '') {
		alert('상품 대표 이미지를 올려 주세요.');
		
	} else {
		
		
		theForm.price1.value = removeComma(theForm.price1);
		theForm.price2.value = removeComma(theForm.price2);
		theForm.price3.value = removeComma(theForm.price3);

		theForm.salePrice1.value = removeComma(theForm.salePrice1);  
		
		theForm.totalNumber.value  = removeComma(theForm.totalNumber);
		theForm.reserves.value  = removeComma(theForm.reserves);
		// productWrite.jsp 폼 페이지에서 입력받은 값을
		// 디비에 추가하기 위한 페이지인 product_save.jsp로 이동하되
		// 입력받은 상품 코드를 쿼리 스트링 형태로 전달한다.
		// 상품 코드로 폴더를 만들어 거기에 이미지 파일을 업로드한다.
		theForm.action = "MacaronicsServlet?command=admin_product_write";
		theForm.submit();
	}
}

function removeComma(input) // ,을 빼고 값을 다시 넣어준다.
{
	return input.value.replace(/,/gi, "");
}
// productWrite.jsp에서 사용한다. 상품 리스트로 이동한다.
function go_mov()
{
	var theForm = document.frm;
	theForm.action = "MacaronicsServlet?command=admin_product_list";
	theForm.submit();
}
//projectList.jsp
function go_search() {
	var theForm = document.frm;
	theForm.action =  "MacaronicsServlet?command=admin_product_list";
	theForm.submit();
}

function go_total() {
	var theForm = document.frm;
	theForm.key.value = "";
	theForm.action =  "MacaronicsServlet?command=admin_product_list";
	theForm.submit();
}

function go_detail(tpage, pseq) {
	
	var theForm = document.frm;
	// 상품 상세 보기 페이지에서 다시 상품 리스트로 돌아왔을 경우 현재 페이지로
	// 돌아올 수 있도록 하기 위해서 현재 페이지 번호를 쿼리 스트링으로 넘겨준다.
	theForm.action =  "MacaronicsServlet?command=admin_product_detail&tpage=" +
	                  tpage+"&pseq="+pseq;
	
	theForm.submit();
}

function go_wrt() {
	var theForm = document.frm;
	theForm.action = "MacaronicsServlet?command=admin_product_write_form";
	theForm.submit();
}
// **************** productDetail.jsp
function go_list(tpage) {
	var theForm = document.frm;
	//상품 리스트로 이동하되 현재 페이지를 쿼리 스트링으로 넘긴다.
	theForm.action = "MacaronicsServlet?command=admin_product_list&tpage=" + tpage;
	theForm.submit();
}
// **************** productDetail.jsp
function go_mod(tpage, pseq) {
	var theForm = document.frm;
	//현재 페이지를 쿼리 스트링으로 넘긴다.
	theForm.action = "MacaronicsServlet?command=admin_product_update_form&tpage=" + 
		              tpage+"&pseq="+pseq;
	theForm.submit();
}



function go_mod_save(tpage, pseq, cURL) {
    var theForm = document.frm;

    if(!$('#kind1 > option:selected').val()) {
    	alert('상품분류를 선택하세요.');
		theForm.kind1.focus();
    }else if(!$('#kind2 > option:selected').val()){
		alert('상품 2차 분류를 선택하세요.');
		theForm.kind2.focus();
    }else if (theForm.name.value == '') {
		alert('상품명을 입력하세요.');
		theForm.name.focus();
	} else if (theForm.price1.value == '') {
		alert('원가를 입력하세요.');
		theForm.price1.focus();
	} else if (theForm.price2.value == '') {
		alert('판매가를 입력하세요.');
		theForm.price2.focus();
	}else if (theForm.totalNumber.value == '') { 
	
		alert('총 개수를 입력하세요.');
		theForm.totalNumber.focus();
	
	}else if (theForm.countryId.value == '') { 
	
		alert('제조국을 선택하세요.');
		
	
	}else if (theForm.company.value == '') { 
		alert('제조회사를 입력하세요.');
		theForm.company.focus();
	
	
	}else if (theForm.productDate.value == '') { 
		alert('제조년월을 입력하세요.');
		theForm.productDate.focus();
	
	}else if (theForm.contractContent.value == '') { 
	
		alert('간략설명을 입력하세요.');
		theForm.contractContent.focus();
	
	
	}else if(productSize() ==true){
		alert('상품 사이즈를 체크 해주세요. ')
		
	}else if(smallThumNmail()==true){
	
		alert('썸네일 이미지는 3개까지만 가능합니다.');
	}else if (CKEDITOR.instances.content.getData() == '') {
		alert('상품상세를 입력하세요.');
	
		
		
	} else if (theForm.oldImg.value == '') {
		alert('상품 대표 이미지를 올려 주세요.');
		
	} else {
		if (confirm('수정하시겠습니까?')) {
			
			theForm.price1.value = removeComma(theForm.price1);
			theForm.price2.value = removeComma(theForm.price2);
			theForm.price3.value = removeComma(theForm.price3);

			theForm.salePrice1.value = removeComma(theForm.salePrice1);  
			
			theForm.totalNumber.value  = removeComma(theForm.totalNumber);
			theForm.reserves.value  = removeComma(theForm.reserves);
			// productWrite.jsp 폼 페이지에서 입력받은 값을
			// 디비에 추가하기 위한 페이지인 product_save.jsp로 이동하되
			// 입력받은 상품 코드를 쿼리 스트링 형태로 전달한다.
			// 상품 코드로 폴더를 만들어 거기에 이미지 파일을 업로드한다.
			
			// [1] 상품을 삭제하지 않는 대신 사용하지 않음을 products 테이블의 useyn 컬럼에 1을 채워 넣기 위해서
			// useyns hidden 태그에 1을 지정한다.

			
		
			// [2] products 테이블의 상품 정보를 수정하는 처리를 하는 product_modsave.jsp 페이지로
			// 이동하되 상품 코드를 전달해준다. 상품코드로 폴더를 생성해서 그곳에 이미지 파일을 업로드하기 때문이다.			
			theForm.action = "MacaronicsServlet?command=admin_product_update&tpage="+tpage+"&pseq="+pseq+"&cURL="+cURL;
			theForm.submit();
		}
	}
}

function go_mod_mov(tpage, pseq) {
	var theForm = document.frm;
	theForm.action = 'MacaronicsServlet?command=admin_product_detail&tpage=' + tpage + "&pseq=" + pseq;
	theForm.submit();
}



function doImgPop(img){ 
	 img1= new Image(); 
	 img1.src=(img); 
	 imgControll(img); 
} 
	  
function imgControll(img){ 
	 if((img1.width!=0)&&(img1.height!=0)){ 
	    viewImage(img); 
	  } 
	  else{ 
	     controller="imgControll('"+img+"')"; 
	     intervalID=setTimeout(controller,20); 
	  } 
}


function viewImage(img){ 
	 W=img1.width; 
	 H=img1.height; 
	 O="width="+W+",height="+H+",scrollbars=yes"; 
	 imgWin=window.open("","",O); 
	 imgWin.document.write("<html><head><title>:*:*:*: 이미지상세보기 :*:*:*:*:*:*:</title></head>");
	 imgWin.document.write("<body topmargin=0 leftmargin=0>");
	 imgWin.document.write("<img src="+img+" onclick='self.close()' style='cursor:pointer;' title ='클릭하시면 창이 닫힙니다.'>");
	 imgWin.document.close();
}
	
function go_prodcut_delect(pseq){
	
	if(confirm("정말 삭제 하시겠습니까?")){
		location.href="MacaronicsServlet?command=admin_product_deleteAction&pseq=" + pseq;
	}
	
}

function go_prodcut_delect_list(event, pseq){
	
	
	if(confirm("정말 삭제 하시겠습니까?")){
		location.href="MacaronicsServlet?command=admin_product_deleteAction&pseq=" + pseq;
	}
	
}




