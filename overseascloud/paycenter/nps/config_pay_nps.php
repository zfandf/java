<?php 
require_once(dirname(__FILE__)."/nps_config.php");
//֧��������
if($payment_exp[1] < 0.01) $payment_exp[1] = 0;
$piice_ex = $priceCount*$payment_exp[1];
if($piice_ex > 0) $price = $priceCount+$piice_ex;
// ������������
function HexToStr($hex)
{
    $string="";
    for($i=0;$i<strlen($hex)-1;$i+=2){ $string.=chr(hexdec($hex[$i].$hex[$i+1])); }
    return $string;
} 

function StrToHex($string)
{
   $hex="";
   for($i=0;$i<strlen($string);$i++){ $hex.=dechex(ord($string[$i])); }
   $hex=strtoupper($hex);
   return $hex;
}

if(!isset($pagePos)) $pagePos = '';

//nps��Ϣ
$m_language	=	1;
$s_name		=	"վ��";
$s_addr		=	"���";
$s_postcode	=	450000;
$s_tel		=	"0371-69105960";
$s_eml		=	$cfg_pay_email;
$r_name		=	$postname;
$r_addr		=	$address;
$r_postcode	=	$zip;
$r_tel		=	$tel;
$r_eml		=	$email;
$m_status	= 	0;
$m_ocurrency  =	1;

$m_id		=	$cfg_merchant;
	$m_orderid	=	$OrdersId;
	$m_oamount	=	$price;
	$m_url		=	SITE_URL."/paycenter/nps/pay_back_nps.php";
	$m_ocomment	=	$_USERS['uname'];
	$modate		=	date("Y-m-d H:i:s",$timestamp);
	
	//��֯������Ϣ
	$m_info = $m_id."|".$m_orderid."|".$m_oamount."|".$m_ocurrency."|".$m_url."|".$m_language;
	$s_info = $s_name."|".$s_addr."|".$s_postcode."|".$s_tel."|".$s_eml;
	$r_info = $r_name."|".$r_addr."|".$r_postcode."|".$r_tel."|".$r_eml."|".$m_ocomment."|".$m_status."|".$modate;

	$OrderInfo = $m_info."|".$s_info."|".$r_info;

	//������Ϣ��ת����HEX��Ȼ���ټ���
	$OrderInfo = StrToHex($OrderInfo);
	$digest = strtoupper(md5($OrderInfo.$cfg_merpassword));
	
$strRequestUrl = $payment_url.'?OrderMessage='.$OrderInfo.'&digest='.$digest.'&M_ID='.$cfg_merchant;

/*
echo '<html>
<head>
	<title>ת��NPS֧��ҳ��</title>
</head>
<body onload="document.nps.submit();">
	<form name="nps" action="'.$strRequestUrl.'" method="post">
	</form>
</body>
</html>';
exit;
*/
?>