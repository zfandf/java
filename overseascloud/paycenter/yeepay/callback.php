<?php
require_once(dirname(__FILE__)."/../../../include/common.inc.php");
require_once DEDEINC.'/shopcar.class.php';
require_once DEDEDATA.'/sys_pay.cache.php';
require_once DEDEINC.'/memberlogin.class.php';
include_once(dirname(__FILE__).'/yeepay_config.php');
$cfg_ml = new MemberLogin();
$cfg_ml->PutLoginInfo($cfg_ml->M_ID);
$cart 	= new MemberShops();
$cart->MakeOrders();
#	ֻ��֧���ɹ�ʱ�ױ�֧���Ż�֪ͨ�̻�.
##֧���ɹ��ص������Σ�����֪ͨ������֧����������е�p8_Url�ϣ�������ض���;��������Ե�ͨѶ.

#	�������ز���.
$return = getCallBackValue($r0_Cmd,$r1_Code,$r2_TrxId,$r3_Amt,$r4_Cur,$r5_Pid,$r6_Order,$r7_Uid,$r8_MP,$r9_BType,$hmac);

#	�жϷ���ǩ���Ƿ���ȷ��True/False��
$bRet = CheckHmac($r0_Cmd,$r1_Code,$r2_TrxId,$r3_Amt,$r4_Cur,$r5_Pid,$r6_Order,$r7_Uid,$r8_MP,$r9_BType,$hmac);
#	���ϴ���ͱ�������Ҫ�޸�.
#	У������ȷ.
if($bRet)
{
	if($r1_Code=="1")
	{
		
	#	��Ҫ�ȽϷ��صĽ�����̼����ݿ��ж����Ľ���Ƿ���ȣ�ֻ����ȵ�����²���Ϊ�ǽ��׳ɹ�.
	#	������Ҫ�Է��صĴ������������ƣ����м�¼�������Դ�����ֹ��ͬһ�������ظ��������������.      	  	
		if($r9_BType=="1")
		{
			success_db($r6_Order);
		}
		elseif($r9_BType=="2")
		{
			#�����ҪӦ�����������д��,��success��ͷ,��Сд������.
			echo "success";
			success_db($r6_Order);
		}
		elseif($r9_BType=="3")
		{ 
			success_db($r6_Order); 
		}
	ShowMsg('֧���ɹ�!',"javascript:;");
	exit;
	}
	
}
else
{
	ShowMsg('������Ϣ����!',"javascript:;");
	exit;
}

function success_db($buyid)
{
	global $dsql,$cfg_ml,$r3_Amt;
	$money = floor($r3_Amt);
	//��ȡ������Ϣ����鶩������Ч��
	$row = $dsql->GetOne("Select state From #@__shops_orders where oid='$buyid' ");
	if($row['state'] > 0)
	{
		return 1;
	}
	
	$sql = "UPDATE `#@__shops_orders` SET `state`='1' WHERE `oid`='$buyid' AND `userid`='".$cfg_ml->M_ID."';";
	if($dsql->ExecuteNoneQuery($sql))
	{
		return 1;
	}
	else
	{
		return 0;
	}	
	return 0;
}
?>