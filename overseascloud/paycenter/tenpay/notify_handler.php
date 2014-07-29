<?php
require_once (dirname(__FILE__) . "/../../../include/common.inc.php");
require_once DEDEINC.'/shopcar.class.php';
require_once DEDEINC.'/memberlogin.class.php';
require_once DEDEROOT.'/data/sys_pay.cache.php';
include_once(dirname(__FILE__).'/tenpay_config.php');

import_request_variables("gpc", "frm_");
$cfg_ml = new MemberLogin(); 
$cart 	= new MemberShops();
$cart->MakeOrders();
$cfg_ml->PutLoginInfo($cfg_ml->M_ID);
if($cfg_ml->M_ID>0) $burl = $cfg_basehost."/member/control.php";
else $burl = "javascript:;";
/*ȡ���ز���*/
$strCmdno			= $frm_cmdno;
$strPayResult		= $frm_pay_result;
$strPayInfo		= $frm_pay_info;
$strBillDate		= $frm_date;
$strBargainorId	= $frm_bargainor_id;
$strTransactionId	= $frm_transaction_id;
$strSpBillno		= $frm_sp_billno;
$strTotalFee		= $frm_total_fee;
$strFeeType		= $frm_fee_type;
$strAttach			= $frm_attach;
$strMd5Sign		= $frm_sign;
/*����ֵ����*/
$iRetOK       = 0;		// �ɹ�
$iInvalidSpid = 1;		// �̻��Ŵ���
$iInvalidSign = 2;		// ǩ������
$iTenpayErr	  = 3;		// �Ƹ�ͨ����֧��ʧ��

/*��ǩ*/
$strResponseText  = "cmdno=" . $strCmdno . "&pay_result=" . $strPayResult . 
		                "&date=" . $strBillDate . "&transaction_id=" . $strTransactionId .
			              "&sp_billno=" . $strSpBillno . "&total_fee=" . $strTotalFee .
			              "&fee_type=" . $strFeeType . "&attach=" . $strAttach .
			              "&key=" . $strSpkey;
$strLocalSign = strtoupper(md5($strResponseText));     
  
if( $strLocalSign  != $strMd5Sign)
{
    $msg = "��֤MD5ǩ��ʧ��."; 
		ShowMsg($msg,"javascript:;");
		exit;
}  
  
if( $strSpid != $strBargainorId )
{
    $msg = "������̻���."; 
		ShowMsg($msg,"javascript:;");
		exit;
}

if( $strPayResult != "0" ){
    $msg = "֧��ʧ��."; 
		ShowMsg($msg,"javascript:;");
		exit;
}

//֧���ɹ�
$dsql = new DedeSql(false);

//��ȡ������Ϣ����鶩������Ч��
$row = $dsql->GetOne("Select state From #@__shops_orders where oid='$strSpBillno' ");
if($row['state'] > 0){
	$msg = "�����Ѿ���ɣ���ϵͳ������Ϣ( $buyid ) <br><br> <a href='control.php'>������ҳ</a> ";
	ShowMsg($msg,"javascript:;");
	$dsql->Close();
	exit();
}

$sql = "UPDATE `#@__shops_orders` SET `state`='1' WHERE `oid`='$strSpBillno' AND `userid`='".$cfg_ml->M_ID."';";
if($dsql->ExecuteNoneQuery($sql)){
	$dsql->Close();			
	ShowMsg("֧���ɹ�!","javascript:;");
	exit;
}else{
	$dsql->Close();
	ShowMsg("֧��ʧ��","javascript:;");
	exit;
}	
?>