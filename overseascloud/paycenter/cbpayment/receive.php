<?php
require_once (dirname(__FILE__) . "/../../common.inc.php");

include_once CFG_CACHEPATH.'/sys_pay.cache.php';//֧�������ļ�

require_once(dirname(__FILE__)."/cbpayment_config.php");


$v_oid     =trim($_POST['v_oid']);       // �̻����͵�v_oid�������   
$v_pmode   =trim($_POST['v_pmode']);    // ֧����ʽ���ַ�����   
$v_pstatus =trim($_POST['v_pstatus']);   //  ֧��״̬ ��20��֧���ɹ�����30��֧��ʧ�ܣ�
$v_pstring =trim($_POST['v_pstring']);   // ֧�������Ϣ �� ֧����ɣ���v_pstatus=20ʱ����ʧ��ԭ�򣨵�v_pstatus=30ʱ,�ַ������� 
$v_amount  =trim($_POST['v_amount']);     // ����ʵ��֧�����
$v_moneytype  =trim($_POST['v_moneytype']); //����ʵ��֧������    
$remark1   =trim($_POST['remark1' ]);      //��ע�ֶ�1
$remark2   =trim($_POST['remark2' ]);     //��ע�ֶ�2
$v_md5str  =trim($_POST['v_md5str' ]);   //ƴ�պ��MD5У��ֵ  

$md5string=strtoupper(md5($v_oid.$v_pstatus.$v_amount.$v_moneytype.$key));

if ($v_md5str==$md5string)
{
	if($v_pstatus=="20"){
		//֧���ɹ�����������ݿ����
		/*include(INC_PATH."/order.class.php");
    	$o=new OrderClass();
		$o->edit_money_state($v_oid,2,$v_amount);*/
		
		$v_amount = $v_amount*0.99;
		include_once(INC_PATH."/recharge.class.php");
		$rechargeobj=RechargeClass::init();
		$rechargeobj->paysuccess($v_oid,$v_amount);
		showmsg("֧���ɹ�!","../../../m.php");
		
	}else{
		showmsg("֧��ʧ��","../../../m.php");
		exit;
	}
}else{
	showmsg("У��ʧ��,���ݿ���!","../../../m.php");
	exit;
}
?>