<?php
include_once(CFG_CACHEPATH.'/sys_pay.cache.php');//֧�������ļ�
require_once(dirname(__FILE__)."/cbpayment_config.php");
if($payment_exp[3] < 0) $payment_exp[3] = 0;
//$piice_ex = $priceCount*$payment_exp[3];
$v_oid = trim($OrdersId); //������
if($piice_ex > 0) $priceCount = $priceCount+$piice_ex;
$v_amount = sprintf("%01.2f", $priceCount);	//֧�����                 

$text = $v_amount.$v_moneytype.$v_oid.$v_mid.$v_url.$key;        //md5����ƴ�մ�,ע��˳���ܱ�
$v_md5info = strtoupper(md5($text));                             //md5�������ܲ�ת���ɴ�д��ĸ

$remark1 = "֧��������:".$v_oid;//��ע�ֶ�1
$remark2 = "�����ܼ۸�:".$v_amount."Ԫ";//��ע�ֶ�2

$v_rcvname   = '�Ź���վ';		// �ջ���
$v_rcvaddr   = '�й�';		// �ջ���ַ
$v_rcvtel    = '0371-69105960';		// �ջ��˵绰
$v_rcvpost   = '100080';		// �ջ����ʱ�
$v_rcvmobile = '13613605057';		// �ջ����ֻ���

/*
$v_ordername   = $postname;	// ����������
$v_orderaddr   = $address;	// �����˵�ַ
$v_ordertel    = $tel;	// �����˵绰
$v_orderpost   = $zip;	// �������ʱ�
$v_orderemail  = $email;	// �������ʼ�
$v_ordermobile = 13838384581;	// �������ֻ���
*/

$strRequestUrl = $v_post_url.'?v_mid='.$v_mid.'&v_oid='.$v_oid.'&v_amount='.$v_amount.'&v_moneytype='.$v_moneytype
	.'&v_url='.$v_url.'&v_md5info='.$v_md5info.'&remark1='.$remark1.'&remark2='.$remark2;


echo '<html>
<head>
	<title>ת����������֧��ҳ��</title>
</head>
<body onLoad="document.cbpayment.submit();">
	<form name="cbpayment" action="'.$strRequestUrl.'" method="post">
	</form>
</body>
</html>';
exit;
