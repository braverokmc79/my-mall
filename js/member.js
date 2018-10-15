function go_save(){
	
		if(document.formm.id.value.length<=0 || document.formm.reid.value.length<=0){
		alert("아이디 중복확인을 클릭하여 주세요.");
		document.formm.id.focus();
		return false;
	}else if(document.formm.pwd.value==""){
		alert("비밀번호를 입력해 주세요");
		document.formm.pwd.focus();
		return false;
	}else if(document.formm.pwdCheck.value==""){
		alert("비밀번호 다시입력을 입력해 주세요");
		document.formm.pwdCheck.focus();
		return false;
	}else if((document.formm.pwd.value!=document.formm.pwdCheck.value)){
		alert("비밀번호가 일치하지 않습니다.");
		document.formm.pwd.focus();
		return false;
	}else if(document.formm.name.value==""){
		alert("이름을 입력해 주세요");
		document.formm.name.focus();
		return false;
	}else if(document.formm.email.value ==""){
		alert("이메일을 입력해 주세요.");
		document.formm.email.focus();
		return false;
	}else{
		document.formm.action ="MacaronicsServlet?command=join";
		document.formm.submit();
			
	}
	
	
		
}



function myIDCheck(){
	
	//아이디 유효성 검사 (영문소문자, 숫자만 허용)
	for (i=0; i<document.formm.id.value.length ;i++ )
	{
	 ch=document.formm.id.value.charAt(i)
	  if (!(ch>='0' && ch<='9') && !(ch>='a' && ch<='z'))
	  {
	  alert ("아이디는 소문자, 숫자만 입력가능합니다.")
	  document.f.id.focus()
	  document.f.id.select()
	  return false;
	  }
	}
	//아이디에 공백 사용하지 않기
	if (document.formm.id.value.indexOf(" ")>=0)
	{
	 alert("아이디에 공백을 사용할 수 없습니다.")
	 document.f.id.focus()
	 document.f.id.select()
	 return false;
	}
	//아이디 길이 체크 (6~12자)
	if (document.formm.id.value.length<6 || document.formm.id.value.length>12)
	{
	 alert ("아이디를 6~12자까지 입력해주세요.")
	 document.formm.id.focus()
	 document.formm.id.select()
	 return false;
	}
	if(document.formm.id.value==""){
		alert("아이디를 입력하여 주십시오.");
		document.formm.id.focus();
		return false;
	}
	
}



function idCheck(){
	
	 if(myIDCheck()==false){
		 
		 return ;
	 }
	
	var url ="MacaronicsServlet?command=id_check_form&id="+ document.formm.id.value;
	window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=400, height=270  top=300, left=300");
	
}

function post_zip(){
	
	var url ="MacaronicsServlet?command=find_zip_num";
	window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=550, height=300, top=300, left=300");
	
	
}


function go_next(){
	
	if(document.formm.okon1[1].checked==true){
	
		
		$('#myModalAgree').modal('toggle');
		return false;
 	}
	return true;
}





