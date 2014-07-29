/**
 * @author 彭其强
 */


function alertNew(content) {
		$("body").append("<div id=\"error\"><div id=\"Validform_msg\" style=\"display: block;\"><div class=\"Validform_title\">提示信息<a class=\"Validform_close\" href=\"javascript:void(0)\" onclick=\"$('#error').dialog('close');$('body').find('#error').remove(); \">χ</a></div><div class=\"Validform_info\" id=\"tishi_content\">"+content+"<br/></div><div class=\"iframe\" style=\"height: 60px; \"><iframe frameborder=\"0\" scrolling=\"no\" height=\"100%\" width=\"100%\"></iframe></div></div></div>");
		$("#error").dialog({
			autoOpen:false,//是否自动弹出
			resizable:false,//大小调整
			modal: true,//是否模态
			draggable:false //不能拖动
		});
		$(".ui-dialog").removeClass();
		$(".ui-dialog-titlebar").remove();
		$(".ui-dialog-content").removeClass();
		$("#error").removeClass();
}

function closeError(){
	$('#error').dialog('close');
	return false;
}

/**
 * 表单提交方法，表单id为myForm
 * @param {Object} url 表单要提交到的页面
 */
function sub(url){
	var form = document.getElementById("myForm");
	form.action=url;
	form.submit();
}
/**
 * 全选，表单名为myForm
 */
function checkAll()
{
	var form = document.getElementById("myForm");
	for(var i=0;i<form.length;i++)
	{
		obj = form[i];
		type = obj.type;
		if(!obj.name)continue;
		if(type)type=type.toLowerCase();
		if(type&&(type=="checkbox"))
		{
			obj.checked = true;
		}
	}
}
//全取消
function clearAll()
{
	var form = document.getElementById("myForm");
	for(var i=0;i<form.length;i++)
	{
		obj = form[i];
		type = obj.type;
		if(!obj.name)continue;
		if(type)type=type.toLowerCase();
		if(type&&(type=="checkbox"))
		{
			obj.checked = false;
		}
	}
}
//单个删除用户
function deleteSub(url) {	
	if(confirm("确认删除信息吗？")) {
		sub(url);
	}	
}
//收藏
function shoucangSub(url) {	
	if(confirm("确认收藏吗？")) {
		sub(url);
	}	
}

