<?php
//�ҵĄ�
InitGP(array("action","commit","email","username","oldpassword","password","password2","mobile")); //��ʼ������ȫ�ַ���
if (!empty($commit)) {
	//��������û����ϲ���
	if ($password!=$password2) {
		showmessage(lang('two_pass_noCorrect'),"-1",false);	
	}
	
	
	$editarray=array(
		"tel"=>GetNum($mobile)
	);
	include("includes/member.class.php");
	$m=new memberclass();
	$msg=$m->edit($username,$email,$oldpassword,$password,$editarray);
	if ($msg=="OK") {
		showmessage(lang('Success_mod'),"login.php",true);
	}else {
		showmessage($msg,"-1",false);	
	}
	
	
}else {
	//��ʾ�����޸ı�
	
/**
 * ������Բ��ֿ�ʼ


print_r($_USERS);
 */
/**
 * ������Բ��ֽ���
 */

	include template('member_settings');//�������ָ��ģ��
	
}



?>