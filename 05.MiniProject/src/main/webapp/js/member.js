/**
 *  회원처리 관련 함수
 */


var member = {
	
	tag_status: function( tag ){
		var name = tag.attr('name');
		if( name=='id')  		return this.id_status( tag.val() );
		else if(name == 'pw')	return this.pw_status( tag.val() ); 
		else if(name =='email') return this.email_status(tag.val());
	},
	
	email_status: function(email){
		var reg = /^([\w\.\_\-])*[a-zA-Z0-9]+([\w\.\_\-])*([a-zA-Z0-9])+([\w\.\_\-])+@([a-zA-Z0-9]+\.)+[a-zA-Z0-9]{2,8}$/i;
		if( email=='')							return this.common.empty;
		else if( email.match(this.space))		return this.common.space;
		else if( reg.test(email))				return this.email.valid;
		else									return this.email.invalid;
	},
	
	email: {
		valid: {code:'valid', desc:'사용가능한 이메일형식'},
		invalid: {code:'invalid', desc:'이메일형식이 맞지 않습니다'},
	},
	
	
	
	pw_ck_status : function(pw_ck){
		if( pw_ck == '')							return this.common.empty;
		else if(pw_ck ==$('[name=pw]').val()) 		return this.pw.equal;
		else										return this.pw.notEqual;
	},
	
	pw_status : function(pw){
		//영문 대/소문자, 숫자를 모두 포함
		
		var reg = /[^a-zA-Z0-9]/g, upper = /[A-Z]/g, lower = /[a-z]/g, digit = /[0-9]/g;
		
		if(pw == '')													return this.common.empty;
		else if(pw.match(this.space))									return this.common.space;
		else if(reg.test(pw))											return this.pw;
		else if(pw.length < 5 )											return this.common.min;
		else if(pw.length > 10 )										return this.common.mix;
		else if(!upper.test(pw) || !lower.test(pw) || !digit.test(pw))	return this.pw.lack;
		else 															return this.pw.valid;
	},
	pw: { 
		valid:{ code:'valid', desc:'사용가능한 비밀번호' }, 
		invalid:{ code:'invalid', desc:'영문 대/소문자,숫자만 입력가능' } ,
		lack: { code:'invalid', desc:'영문 대/소문자,숫자를 모두 포함해야 함' },
		equal: { code:'valid', desc: '비밀번호가 일치합니다' },
		notEqual: { code:'invalid', desc: '비밀번호가 일치하지 않습니다' },
	},
	
	space: /\s/g,
	
	id_status: function( id ){
		//영문소문자, 숫자만 가능
		var reg = /[^a-z0-9]/g;
		if( id=='' )					    return this.common.empty;
		else if(id.match(this.space)) 		return this.common.space;
		else if(reg.test(id))			  	return this.id.invalid;
		else if(id.length < 5)				return this.common.min;
		else if(id.length > 10)			    return this.common.max;
		else 								return this.id.valid;
	},
	
	id_usable: function(id){
		if( id == 0 )					return this.id.usable;
		else							return this.id.unUsable;
	},
	
	id: {
		valid: { code:'valid', desc:'아이디중복 확인하세요' },
		usable: { code:'valid', desc:'사용가능한 아이디' },
		unUsable: { code:'invalid', desc:'이미사용중인 아이디' },
		invalid: {code:'invalid', desc:'영문소문자, 숫자만 입력가능'}	
	},
	
	common: {
		empty: { code:'invalid', desc:'입력하세요' },
		space: { code:'invalid', desc:'공백없이 입력하세요'},
		min: {code:'invalid', desc:'최소 5자이상 입력하세요'},
		max: {code:'invalid', desc:'최대 10자 이하 입력하세요'},
	}
} 