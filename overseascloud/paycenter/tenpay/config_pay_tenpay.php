<?php
include_once(dirname(__FILE__).'/tenpay_config.php');
$strCmdNo   = "1";
$strBillDate= date('Ymd');
/*��Ʒ����*/
$strDesc    = $OrdersId;
/*�û�QQ����, ������Ϊ�մ�*/
$strBuyerId = "";
/*�̻���*/
$strSaler   = $strSpid;
//֧��������
if($payment_exp[0] < 0) $payment_exp[0] = 0;
$piice_ex = $priceCount*$payment_exp[0];
if($piice_ex > 0) $price = $priceCount+$piice_ex;
else $price = $priceCount;
//֧�����
$strTotalFee = $price*100;
$strSpBillNo = $OrdersId;

$strTransactionId = $strSpid . $strBillDate . time();
/*��������: 1 �C RMB(�����) 2 - USD(��Ԫ) 3 - HKD(�۱�)*/
$strFeeType  = "1";
/*�Ƹ�ͨ�ص�ҳ���ַ, �Ƽ�ʹ��ip��ַ�ķ�ʽ(�255���ַ�)*/
$strRetUrl  = $cfg_basehost."/plus/paycenter/tenpay/notify_handler.php";
/*�̻�˽������, ����ص�ҳ��ʱԭ������*/
$strAttach  = "my_magic_string";
/*����MD5ǩ��*/
$strSignText = "cmdno=" . $strCmdNo . "&date=" . $strBillDate . "&bargainor_id=" . $strSaler .
	      "&transaction_id=" . $strTransactionId . "&sp_billno=" . $strSpBillNo .        
	      "&total_fee=" . $strTotalFee . "&fee_type=" . $strFeeType . "&return_url=" . $strRetUrl .
	      "&attach=" . $strAttach . "&key=" . $strSpkey;
$strSign = strtoupper(md5($strSignText));
  
/*����֧����*/
$strRequest = "cmdno=" . $strCmdNo . "&date=" . $strBillDate . "&bargainor_id=" . $strSaler .        
"&transaction_id=" . $strTransactionId . "&sp_billno=" . $strSpBillNo .        
"&total_fee=" . $strTotalFee . "&fee_type=" . $strFeeType . "&return_url=" . $strRetUrl .        
"&attach=" . $strAttach . "&bank_type=" . $strBankType . "&desc=" . $strDesc .        
"&purchaser_id=" . $strBuyerId .        
"&sign=" . $strSign ;
$strRequestUrl = "https://www.tenpay.com/cgi-bin/v1.0/pay_gate.cgi?".$strRequest;

if($cfg_soft_lang == 'utf-8')
{
	$strRequestUrl = utf82gb($strRequestUrl);	
	echo '<html>
	<head>
		<title>ת���Ƹ�֧ͨ��ҳ��</title>
	</head>
	<body onLoad="document.tenpay.submit();">
		<form name="tenpay" action="'.$cfg_basehost.'/plus/paycenter/tenpay/tenpay_gbk_page.php?strReUrl='.urlencode($strRequestUrl).'" method="post">
		</form>
	</body>
	</html>';
}else{
	echo '<html>
	<head>
		<title>ת���Ƹ�֧ͨ��ҳ��</title>
	</head>
	<body onLoad="document.tenpay.submit();">
		<form name="tenpay" action="'.$strRequestUrl.'" method="post">
		</form>
	</body>
	</html>';
}
exit;