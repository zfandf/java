<?php defined('ZZQSS') or exit('Access Denied'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="Stylesheet" href="<?php echo TPL;?>css/NewTopFoot.css" />
<link href="<?php echo TPL;?>css/AddItemPanel.css" rel="stylesheet" type="text/css" />

<script src="<?php echo TPL;?>js/jquery-1.4.1.min.js" type="text/javascript"></script>

<script src="<?php echo TPL;?>js/jQuery.Extend.js" type="text/javascript"></script>

<script type="text/javascript" src="<?php echo TPL;?>js/jQuery.Drag.min.js"></script>

<script src="<?php echo TPL;?>js/jquery.cookies.2.1.0.min.js" type="text/javascript"></script>

<script type="text/javascript" src="<?php echo TPL;?>js/Gobal.js"></script>
    
<link type="text/css" href="<?php echo TPL;?>css/track_c.css" rel="stylesheet" />
<title>
[<?php echo $cfg_site_name;?>] - 包裹跟踪查询
</title></head>
<body>

<form name="aspnetForm" method="post" action="" id="aspnetForm">

<?php include template('header'); ?>

    <div class="p_header">

            <div class="p_left">
                包裹跟踪查询</div>
            <div class="p_right11">
             &nbsp;
            </div>
  </div>
<div class="cx_r">
<div class="cx_jieshi"><b>温馨提示：</b>为了方便您跟踪您的包裹状态，我们特别为您汇总了以下几种国际物流公司的查询网址；您可以在以下网站中输入包裹<br/>

<span style="display:block; text-indent:70px;">的相关号码，查询、跟踪您的包裹状态！</span></div>
<table width="725" border="0" cellspacing="0" cellpadding="0" class="cx_t1">
  <tr>
    <td width="240" height="50" align="center" ><a href="http://www.cn.dhl.com/publish/cn/zh/eshipping/track.high.html?pageToInclude2=RESULTS&amp;AWB2=dd&amp;submit102=+&amp;type2=fasttrack" target="_blank"><img src="<?php echo TPL;?>images/dfhgf_08.jpg" alt="DHL" width="190" height="30" /></a></td>
    <td width="240" height="50" align="center"><a href="http://www.ems.com.cn/qcgzOutQueryAction.do?reqCode=gotoSearch" target="_blank"><img src="<?php echo TPL;?>images/dfhgf_03.jpg" alt="EMS" width="190" height="30" /></a></td>
    <td width="240" height="50" align="center"><a href="http://intmail.183.com.cn/item/trace/itemTraceAction.do" target="_blank"><img src="<?php echo TPL;?>images/dfhgf_05.jpg" alt="AIR航空" width="190" height="30" /></a></td>
  </tr>
  <tr  class="cx_t2">
    <td  ><a href="http://www.cn.dhl.com/publish/cn/zh/eshipping/track.high.html?pageToInclude2=RESULTS&AWB2=dd&submit102=+&type2=fasttrack" target="_blank">>>前去查询</a></td>

    <td ><a href="http://www.ems.com.cn/qcgzOutQueryAction.do?reqCode=gotoSearch" target="_blank">>>前去查询</a></td>
    <td ><a href="http://intmail.183.com.cn/item/trace/itemTraceAction.do" target="_blank">>>前去查询</a></td>
  </tr>
</table>
<div class="cx_air1">AIR航空部分地区丶国家的查询网址：</div>
<table width="540" border="0" cellspacing="0" cellpadding="0"  class="cx_air2">
  <tr>
    <td  class="cx_a1" >鉴于AIR航空包裹运送方式的特殊性：</td>

  </tr>
  <tr>
    <td class="cx_a2">1)包裹运送至国外将由当地邮局体系重新分配，进行派送；</td>
  </tr>
  <tr >
    <td class="cx_a2">2)国外邮局反馈给中国邮政的信息存在滞后性。</td>
  </tr>
 
  <tr>

    <td  class="cx_a1" >代购特别为您汇总了AIR运送方式部分国家和地区查询网址：</td>
  </tr>
  <tr>
    <td><table width="600" border="0" align="left" cellpadding="0" cellspacing="0" class="cx_a3">
  <tr>
    <td width="80" height="30"><a href="http://www.usps.com/shipping/trackandconfirm.htm?from=home&amp;page=0035trackandconfirm" target="_blank">美国</a></td>
    <td width="80"><a href="https://em.canadapost.ca/emo/basicPin.do?language=en" target="_blank">加拿大</a></td>

    <td width="80"><a href="http://www.chronopost.fr/transport-express/livraison-colis/cache/bypass/pid/701" target="_blank">法国 </a></td>
    <td width="80"><a href="http://www.royalmail.com/portal/rm/track?catId=500185&amp;mediaId=22700601&amp;keyname=track_home" target="_blank">英国</a></td>
    <td width="80"><a href="http://www.posti.fi/english/itemtracking/" target="_blank">芬兰</a></td>
    <td width="80"><a href="http://track.anpost.ie/track/trackone.html" target="_blank">爱尔兰</a></td>
    <td width="80"><a href="http://ice.auspost.com.au/" target="_blank">澳大利亚</a></td>
  </tr>

  <tr>
    <td width="80" height="30"><a href="https://www.swisspost.ch/en/index/uk_geschaeftskunden/pm_versand_inland_gk/" target="_blank">新西兰</a></td>
    <td width="80"><a href="http://www.singpost.com/ra/ra_article_status.asp" target="_blank">新加坡</a></td>
    <td width="80"><a href="http://www.pos.com.my/v1/?c=/v1/TrackTrace/MainTrack.htm" target="_blank">马来西亚 </a></td>
    <td width="80"> <a href="https://www.swisspost.ch/en/index/uk_geschaeftskunden/pm_versand_inland_gk/pp_pakete_gk/pp_informationslogistik/pp_trackandtrace_info/pm_trackandtrace.htm" target="_blank">瑞士</a></td>
    <td width="80"><a href="http://www.correios.com.br/servicos/rastreamento/internacional/default.cfm?Idioma=E" target="_blank">巴西</a></td>

    <td width="80"><a href="http://tracking.post.japanpost.jp/service/singleSearch.do?org.apache.struts.taglib.html.TOKEN=ab8aa0db322a2350c345d8f9f726092c&amp;searchKind=S001&amp;locale=en&amp;SVID=023&amp;JSESSIONID=GGZBvbvRnnRZGNypJGhGrNf1NwdpHRbf1t8npSTw9rhvvJjyXr0D%211723942568%211149688129390&amp;reqCodeNo1=" target="_blank">日本</a></td>
    <td width="80"><a href="http://www.correos.es/ENG/13-MenuRec2/01-MenuRec21/2010_c1-LocalizadorE.asp" target="_blank">西班牙</a> </td>
  </tr>
</table></td>
  </tr>
</table>

 </div>

    
<?php include template('footer'); ?>
</form>

</body>
</html>
