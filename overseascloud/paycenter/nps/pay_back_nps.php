<?php
require_once (dirname(__FILE__) . "/../../common.inc.php");

include_once CFG_CACHEPATH.'/sys_pay.cache.php';//֧�������ļ�

require_once(dirname(__FILE__)."/nps_config.php");

if(empty($_POST['m_orderid'])){
	echo "�Ƿ����ʣ�";
	exit();
}
//=========================== ���̼ҵ������Ϣ����ȥ =======================
					//$_POST['
	$m_id		= 	$_POST['m_id'];					//�̼Һ�	
	$m_orderid	= 	$_POST['m_orderid'];			//�̼Ҷ�����
	$m_oamount	= 	$_POST['m_oamount'];			//֧�����
	$m_ocurrency= 	$_POST['m_ocurrency'];			//����		
	$m_language	= 	$_POST['m_language'];			//����ѡ��
	$s_name		= 	$_POST['s_name'];				//����������
	$s_addr		= 	$_POST['s_addr'];				//������סַ
	$s_postcode	= 	$_POST['s_postcode'];			//��������
	$s_tel		= 	$_POST['s_tel'];				//��������ϵ�绰
	$s_eml		= 	$_POST['s_eml'];				//�������ʼ���ַ
	$r_name		= 	$_POST['r_name'];				//����������
	$r_addr		= 	$_POST['r_addr'];				//�ջ���סַ
	$r_postcode	= 	$_POST['r_postcode'];			//�ջ�����������
	$r_tel		= 	$_POST['r_tel'];				//�ջ�����ϵ�绰
	$r_eml		= 	$_POST['r_eml'];				//�ջ��˵��ӵ�ַ
	$m_ocomment	= 	$_POST['m_ocomment'];			//��ע
	$State		=	$_POST['m_status'];				//֧��״̬2�ɹ�,3ʧ��
	$modate		=	$_POST['modate'];				//��������
	//��������ļ���
	$OrderInfo	=	$_POST['OrderMessage'];			//����������Ϣ
	$signMsg 	=	$_POST['Digest'];				//�ܳ�
	//�����µ�md5������֤
	$newmd5info	=	$_POST['newmd5info'];
	
	
$memberid	= $m_ocomment;			//��ע �����Ƿ���վ�ڵĻ�Ա���
$buyid		= ereg_replace("[^-0-9A-Za-z]","",$m_orderid);   //�̼Ҷ�����
$mState		=	$_POST['m_status'];//֧��״̬2�ɹ�,3ʧ��
$OrderInfo	=	$OrderMessage;  //����������Ϣ
$signMsg 	=	$Digest;				   //�ܳ�
//�����µ�md5������֤
$newmd5info	=	$newmd5info;
$digest = strtoupper(md5($OrderInfo.$cfg_merpassword));

//���ص�У����Կ
$newtext = $m_id.$m_orderid.$m_oamount.$cfg_merpassword.$mState;
$myDigest = strtoupper(md5($newtext));
$mysign == md5($cfg_merchant.$buyid.$money.$success.$cfg_merpassword);
//--------------------------------------------------------

//ǩ����ȷ
if($digest == $signMsg && $mState==2){
	$OrderInfo = HexToStr($OrderInfo);
	
	if($newmd5info == $myDigest) //md5�ܳ���֤
	{
		//֧���ɹ�����������ݿ����
		include(INC_PATH."/order.class.php");
    	$o=new OrderClass();
		$o->edit_money_state($buyid,2,$m_oamount);
		showmsg("֧���ɹ���","../../m.php");

		
  }else{
  	showmsg("������Կ�����������Ա��ϵ��","-1");
	  exit();
  }
}else{
	showmsg("������Կ�����������Ա��ϵ��","-1");
	exit();
}
?>
