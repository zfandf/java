var fun = "doResult";
/**
 * 自动ajax表单提交,验证方法为validate
 * 参考：http://www.malsup.com/jquery/form/#ajaxSubmit
 * @param myForm form对象
 * @param name 回调函数名默认为doResult
 * @param {Object} myform
 */
function ajaxSub(myForm,name) {
	isNull(name);
    var options = { 
		beforeSubmit: validate,
        success: beforeResult,
		error: doError
    };
    $(myForm).ajaxSubmit(options); 
 	return false;
}

/**
 * ajax提交方法,数据格式为name=value。
 * @param type 提交方式post|get
 * @param url 提交页面
 * @param data 数据,如果是get提交写null
 * @param name 回调函数名默认为doResult
 * @returns {Boolean}不提交，回调函数
 */
function sendsRequest(type,url,data,name){
	isNull(name);
	$.ajax({   
        type: type,   
        url: url,
        data: data,
		beforeSubmit: validate,
        success: beforeResult,
        error: doError
    }); 
	//禁用按钮的提交 
	return false;
}


//测试方法，应用时复制过去就可以了data为thinkphp的ajaxReturn方法返回
//function doResult(data){
//	alert(data);
//}

//判断是否有回调函数
function isNull(name){
	if(name!=''&&name!=null){
		fun = name;	
	}
}

/**
 * 验证方法不通过返回false
 * @param {array} formData 要提交验证的数据
 * @param {array} jqForm 文档中所有form
 * @param {Object} options 
 * @return {Boolean} true|false
 */
function validate(formData, jqForm, options){
	 /*$("form span[id*='_']").attr("style", "display:none;");
     var arr = $("form span[id*='_']");
     var result;
     var a = 0;
     for (var i = 0; i < arr.length; i++) {
         var isyes = true;
         var str = arr.eq(i).attr("id");
         var str2 = arr.eq(i).attr("id").split("_");

         if ($.trim(str2[1]) == $.trim("checkIsEqual")) {
             str = str + "_" + $("form input[name='" + str2[0] + "']").val() + "_" + $("form input[name='" + str2[0] + "f']").val();
         }
         else if ($.trim(str2[1]) == $.trim("check")) {
             var arrchk = $("form :checkbox:checked");
             str = str + "_" + arrchk.size();
         }
         else {
             str = str + "_" + $("form input[name='" + str2[0] + "']").val();
         }

         isyes = getFun(str);
         if (!isyes) {
             arr.eq(i).attr("style", "display:block;");
             a += 1;
         } else {
             arr.eq(i).attr("style", "display:none;");
         }

     }
     if (a > 0) {
         return false;
     }   */
}

/**
 * ajax提交错误信息
 */
function doError(err){
	//alert($.ajaxError);
    //alert("error:提交失败，状态为"+err.status);
}

/**
 * ajax提交结果返回前对结果处理方法
 * @param {Object} html
 */
function beforeResult(html){
	//var obj = eval("("+html+")");
    //eval(fun+"(obj.data)");
	eval(fun+"(html)");
}