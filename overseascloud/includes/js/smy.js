
var Default_isFT = 0		//Ä¬ÈÏÊÇ·ñ·±Ìå£¬0-¼òÌå£¬1-·±Ìå
var StranIt_Delay = 50 //·­ÒëÑÓÊ±ºÁÃë£¨ÉèÕâ¸öµÄÄ¿µÄÊÇÈÃÍøÒ³ÏÈÁ÷³©µÄÏÔÏÖ³öÀ´£©

//£­£­£­£­£­£­£­´úÂë¿ªÊ¼£¬ÒÔÏÂ±ð¸Ä£­£­£­£­£­£­£­
//×ª»»ÎÄ±¾
function StranText(txt,toFT,chgTxt)
{
	if(txt==""||txt==null)return ""
	toFT=toFT==null?BodyIsFt:toFT
	if(chgTxt)txt=txt.replace((toFT?"¼ò":"·±"),(toFT?"·±":"¼ò"))
	if(toFT){return Traditionalized(txt)}
	else {return Simplized(txt)}
}
//×ª»»¶ÔÏó£¬Ê¹ÓÃµÝ¹é£¬Öð²ã°þµ½ÎÄ±¾
function StranBody(fobj)
{
	if(typeof(fobj)=="object"){var obj=fobj.childNodes}
	else 
	{
		var tmptxt=StranLink_Obj.innerHTML.toString()
		if(tmptxt.indexOf("¼ò")<0)
		{
			BodyIsFt=1
			StranLink_Obj.innerHTML=StranText(tmptxt,0,1)
			StranLink.title=StranText(StranLink.title,0,1)
		}
		else
		{
			BodyIsFt=0
			StranLink_Obj.innerHTML=StranText(tmptxt,1,1)
			StranLink.title=StranText(StranLink.title,1,1)
		}
		setCookie(JF_cn,BodyIsFt,7)
		var obj=document.body.childNodes
	}
	for(var i=0;i<obj.length;i++)
	{
		var OO=obj.item(i)
		if("||BR|HR|TEXTAREA|".indexOf("|"+OO.tagName+"|")>0||OO==StranLink_Obj)continue;
		if(OO.title!=""&&OO.title!=null)OO.title=StranText(OO.title);
		if(OO.alt!=""&&OO.alt!=null)OO.alt=StranText(OO.alt);
		if(OO.tagName=="INPUT"&&OO.value!=""&&OO.type!="text"&&OO.type!="hidden")OO.value=StranText(OO.value);
		if(OO.nodeType==3){OO.data=StranText(OO.data)}
		else StranBody(OO)
	}
}
function JTPYStr()
{
	return 'ï¹°¨°ª°­°®àÈæÈè¨êÓö°ÚÏï§ðÆ°¹°À°ÂæÁæñ÷¡°Ó°ÕîÙ°Ú°ÜßÂ°ä°ì°íîÓ°ï°ó°÷°ù°þ±¥±¦±¨±«ð±öµ±²±´±µ±·±¸±¹ðÇêÚï¼±Á±Ê±Ï±Ð±Ò±ÕÜêßÙääîéóÙõÏ±ß±à±á±ä±ç±èÜÐçÂóÖ±êæôì©ì­ïÚïð÷§±î±ð±ñ±ô±õ±ö±÷ÙÏçÍéÄéëë÷ïÙ÷Æ÷Þ±ýÙ÷²¦²§²¬²µâÄîàð¾²¹îß²Æ²Î²Ï²Ð²Ñ²Ò²Óæî÷õ²Ô²Õ²Ö²×²Þ²à²á²ââü²ã²ïïÊÙ­îÎ²ó²ô²õ²ö²÷²ø²ù²ú²û²üÙæÚÆÚßÝÛâãæ¿æöêèìøïâ³¡³¢³¤³¥³¦³§³©ØöÜÉâêãÑöð³®³µ³¹íº³¾³Â³ÄØ÷ÚÈé´í×ö³³Å³Æ³Í³Ï³ÒèÇèßîñîõ³Õ³Ù³Û³Ü³Ý³ãâÁð·³å³å³æ³èï¥³ë³ì³ï³ñÙ±àüöÅ³÷³ø³ú³û´¡´¢´¥´¦Û»ç©õé´«îË´¯´³´´âë´¸ç¶´¿ðÈ´Âê¡öº´Ç´Ê´ÍðË´Ï´Ð´Ñ´Ó´ÔÜÊæõèÈ´Õê£´Ú´Üß¥´íï±õº´ïßÕ÷²´ø´ûææçªµ£µ¥µ¦µ§µ¨µ¬µ®µ¯ééêæð÷óìµ±µ²µ³µ´µµÚÔí¸ñÉµ·µºµ»µ¼µÁìâµÆµËïëµÐµÓµÝµÞÙáÚ®ÚÐç°êëïáµßµãµæµçáÛîäñ²µöµ÷ï¢öôµýµþöø¶¤¶¥¶§¶©îú¶ªîû¶«¶¯¶°¶³á´ð´ñ¼¶¿¶À¶Á¶Ä¶ÆäÂèüë¹óÆ÷ò¶Í¶Ï¶Ðóý¶Ò¶Ó¶Ôí¡ïæ¶Ö¶Ù¶ÛìÀõ»¶á¶éîì¶ì¶î¶ï¶ñ¶öÚÌÛÑãÕéîï°ïÉðÊò¦ò§öùÚÀ¶ù¶û¶ü·¡åÇîïð¹öÜ·¢·£·§·©·¯·°·³···¹·Ã·ÄîÕöÐ·É·Ì·Ï·Ñç³ïÐöî·×·Ø·Ü·ß·àÙÇ·á·ã·æ·ç·è·ë·ì·í·ïãã·ô·ø¸§¸¨¸³¸´¸º¸¼¸¾¸¿Ùìæâç¦ç¨êçôïöÖöûîÅ¸Ã¸Æ¸Çêà¸Ë¸Ï¸Ñ¸ÓÞÏß¦ç¤¸Ô¸Õ¸Ö¸Ù¸Úí°¸äØºÚ¾çÉï¯¸é¸ë¸ó¸õ¸öæüïÓò£¸øØ¨âÙç®öá¹¨¹¬¹®¹±¹³¹µ¹¶¹¹¹º¹»Ú¸çÃêí¹Æ¹ËÚ¬ì±îÜïÀð³ðÀ÷½¹Ð¹Òð»Þâ¹Ø¹Û¹Ý¹ß¹áÚ´ÞèðÙ÷¤¹ãáî¹æ¹é¹ê¹ë¹ì¹î¹ó¹ôØÐØÛæ£èíöÙ÷¬¹õ¹öÙòçµöç¹ø¹ú¹ýÛößÃàþé¤òåîþº§º«ººãÛç¬ò¡ºÅå°ò«ºÒº×ºØÚ­ãØòÃºáºäºèºìÙäÚ§Ý¦ãÈö×ºø»¤»¦»§ä°ðÉ»©»ª»­»®»°æèèëîü»³»µ»¶»·»¹»º»»»½»¾»À»ÁÛ¼çÙïÌöé»Æ»Ñöü»Ó»Ô»Ù»ß»à»á»â»ã»ä»å»æÚ¶ÜößÜä«çÀçõêÍ»ç»ëÚ»âÆãÔ»ñ»õ»öîØïì»÷»ú»ý¼¢¼£¼¥¼¦¼¨¼©¼«¼­¼¶¼·¼¸¼»¼Á¼Ã¼Æ¼Ç¼Ê¼Ì¼ÍÚ¦ÚµÜùß´ßâæ÷çáêéì´í¶î¿ò²õÒö«öÝöê¼Ð¼Ô¼Õ¼Ö¼Ø¼Û¼ÝÛ£ä¤îòïØòÍ¼ß¼à¼á¼ã¼ä¼è¼ê¼ë¼ì¼î¼ï¼ð¼ñ¼ò¼ó¼õ¼ö¼÷¼ø¼ù¼ú¼û¼ü½¢½£½¤½¥½¦½§ÚÉçÌê§ê¯íúðÏóÈöä÷µ½«½¬½¯½°½±½²½´ç­çÖ½º½½½¾½¿½Á½Â½Ã½Ä½Å½È½É½Ê½Î½ÏÞØá½ðÔöÞ½×½Ú½à½á½ë½ìðÜò¢öÚ½ô½õ½ö½÷½ø½ú½ý¾¡¾¢¾£¾¥ÚáÝ£âËçÆêáêî¾¨¾ª¾­¾±¾²¾µ¾¶¾·¾º¾»ØÙãþåÉåòëÖö¦¾À¾Ç¾ÉãÎð¯ðÕ¾Ô¾Ù¾Ý¾â¾å¾çÚªåðé·ì«îÒï¸ñÀö´¾é¾îïÃïÔöÁ¾õ¾ö¾øÚÜçå¾û¾ü¿¥ñä¿ª¿­ØÜÛîâéâýîøïÇíèãÊîÖîí¿Å¿Ç¿Îæìç¼éðîÝï¾ò¥¿Ñ¿Òö¸ï¬¿Ù¿â¿ãà·¿é¿ëÛ¦ßàëÚ¿íáö÷Å¿ó¿õ¿öÚ²Ú¿Ú÷ÛÛæþêÜ¿÷¿ù¿úÀ¡À£ØÑÝÞã´ñùóñãÍï¿öïÀ©À«òÓÀ¯À°À³À´ÀµáÁáâäµäþêãíùïªñ®ô¥À¶À¸À¹ÀºÀ»À¼À½À¾À¿ÀÀÀÁÀÂÀÃÀÄá°é­ìµïçñÜÀÅãÏï¶ÀÌÀÍÀÔßëáÀîîï©ðìÀÖ÷¦ÀØÀÝÀàÀáÚ³çÐÀéÀêÀëÀðÀñÀöÀ÷ÀøÀùÀúÁ¤Á¥Ù³ÛªÛÞÜÂÝ°Ýñß¿åÎæêçÊèÀèÝéöíÂï®ð¿ðÝôÏõÈö¨öâ÷¯Á©ÁªÁ«Á¬Á­Á¯Á°Á±Á²Á³Á´ÁµÁ¶Á·ÝüÞÆäòçöéçñÍñÏöãÁ¸Á¹Á½Á¾ÁÂ÷ËÁÆÁÉÁÍçÔîÉðÓÁÔÁÙÁÚÁÛÁÝÁÞÝþâÞéÝê¥õïÁäÁåÁéÁëÁìç±èùòÉöìÁóÁõä¯æòç¸ïÖðÒÁúÁûÁüÁýÂ¢Â£Â¤Ü×ãñççèÐëÊíÃÂ¥Â¦Â§Â¨ÙÍÝäà¶áÐïÎðüñïò÷÷ÃÂ«Â¬Â­Â®Â¯Â°Â±Â²Â³Â¸Â»Â¼Â½Ûäß£ààãÌãòäËèÓéÖéñéûê¤ëªëÍðµðØôµöÔÂÍÂÎÂÏÂÐÂÒÙõæ®èïð½öÇÂÕÂÖÂ×ÂØÂÙÂÚÂÛàðÂÜÂÞÂßÂàÂáÂâÂæÂçÜýâ¤ãøé¡ëáïÝÂ¿ÂÀÂÁÂÂÂÅÂÆÂÇÂËÂÌéµñÚï²ß¼ÂèÂêÂëÂìÂíÂîÂðßéæÖè¿ÂòÂóÂôÂõÂöÛ½Â÷ÂøÂùÂúÃ¡çÏïÜòª÷©Ã¨ÃªÃ­Ã³÷áÃ»Ã¾ÃÅÃÆÃÇÞÑìËí¯îÍÃÌÃÎÃÐÃÕÃÖÃÙÃÝØÂÚ×â¨ìòÃàÃåäÅëïö¼Ãíç¿çÑÃðÃõÃöãÉçÅÃùÃúÃýÚÓÝëâÉéâïÒÄ±Ä¶îâÄÅÄÆÄÉÄÑÄÓÄÔÄÕÄÖîóÚ«ÄÙÄÚÄâÄåîêöòÄìéýöóÄðÄñÜàôÁÄôÄöÄ÷ÄøÚíÞÁà¿ò©õæÄûÄüÄþÅ¡Å¢ÜÑßÌñ÷Å¥Å¦Å§Å¨Å©Ù¯ßææåîÏÅµÙÐÅ±Å·Å¸Å¹Å»Å½Ú©âæê±ÅÌõçÅÓÅ×ðåÅâàÎÅçÅôç¢î¼îëÆ­ÚÒæéÆ®çÎÆµÆ¶æÉÆ»Æ¾ÆÀÆÃÆÄîÇÆËÆÌÆÓÆ×ïäïèÆÜÆêÆëÆïÆñÆôÆøÆúÆýÞ­æëç²èçíÓñýñþ÷¢Ç£Ç¥Ç¦Ç¨Ç©Ç«Ç®Ç¯Ç±Ç³Ç´ÇµÙÝÝ¡ã¥å¹ç×èýîÔÇ¹ÇºÇ½Ç¾Ç¿ÇÀæÍéÉê¨ìÁïºïÏïêôÇõÄÇÂÇÅÇÇÇÈÇÌÇÏÚ½ÚÛÜñçØíÍõÎÇÔã«ïÆóæÇÕÇ×ÇÞï·ÇáÇâÇãÇêÇëÇìÞìöëÇíÇîÜäòÌÛÏêäò±öúÇ÷ÇøÇûÇýÈ£Ú°á«ãÖêïð¶È§È¨È°Ú¹ç¹éúîýÈ´ÈµÈ·ã×ãÚí¨ÈÃÈÄÈÅÈÆÜéæ¬èãÈÈÈÍÈÏÈÒâ¿éíÈÙÈÞáÉòîçÈï¨ò­ÈíÈñò¹ÈòÈóÈ÷ÈøìªÈúÈüÉ¡ë§ôÖÉ¥É§É¨çÒÉ¬ØÄï¤ð£É±É²É´ï¡öèÉ¸É¹õ§É¾ÉÁÉÂÉÄÉÉÚ¨æ©æóîÌ÷­ÉÊÉËÉÍÛðéäõüÉÕÉÜÉÞÉãÉåÉèØÇäÜî´ÉðÉóÉôÉöÉøÚ·ÚÅäÉÉùÉþÊ¤Ê¦Ê¨ÊªÊ«Ê±Ê´ÊµÊ¶Ê»ÊÆÊÊÊÍÊÎÊÓÊÔÚÖÛõÝªß±éøêÛîæöåÊÙÊÞç·ÊàÊäÊéÊêÊôÊõÊ÷ÊúÊýÞóç£Ë§ãÅË«Ë­Ë°Ë³ËµË¶Ë¸îåË¿ËÇØËæáçÁïÈð¸ËÊËËËÌËÏËÐËÓÞ´âÈì¬ïËËÕËßËàÚÕöÕËäËæËçËêÚÇËïËðËñÝ¥áøËõËöËøßïíüÌ¡Ì¢ãËîè÷£Ì¨Ì¬îÑöØÌ¯Ì°Ì±Ì²Ì³Ì·Ì¸Ì¾ê¼îãïÄñüÌÀÌÌÙÎâ¼ï¦ïÛÌÎÌÐÌÖèºï«ÌÚÌÜÌàÌâÌåÌëç¾ðÃãÙÌõôÐö¶öæÌùÌúÌüÌýÌþÍ­Í³âúÍ·î×ÍºÍ¼îÊÍÅÞÒÍÇÍÉâ½ÍÑÍÒÍÔÍÕÍÖóêö¾Íàæ´ëðÍäÍåÍçÍòæýçºÍøéþÎ¤Î¥Î§ÎªÎ«Î¬Î­Î°Î±Î³Î½ÎÀÚÃàøãÇãíä¶çâè¸ì¿öÛÎÂÎÅÎÆÎÈÎÊãÓÎÍÎÎÎÏÎÐÎÑÎÔÝ«ö»ÎØÎÙÎÚÎÜÎÞÎßÎâÎëÎíÎñÎóÚùâÐâäåüæððÄðÍÎýÎþÏ®Ï°Ï³Ï·Ï¸â¾ãÒçôêêÏºÏ½Ï¿ÏÀÏÁÏÃÏÅíÌÏÊÏËÏÍÏÎÏÐÏÔÏÕÏÖÏ×ÏØÏÚÏÛÏÜÏßÜÈÝ²Þºá­áýæµðÂðïòºôÌõÑÏáÏâÏçÏêÏìÏîÜ¼âÃæøç½÷ÏÏôÏùÏúÏþÐ¥ßØäìæçç¯èÉóïÐ­Ð®Ð¯Ð²Ð³Ð´ÐºÐ»Ùôß¢ç¥çÓÐ¿ÐÆÐËÚêÜþÐ×ÐÚÐâÐåâÊð¼ÐéÐêÐëÐíÐðÐ÷ÐøÚ¼çïÐùÐüÑ¡Ñ¢Ñ¤ÚÎîçïàÑ§ÚÊí´÷¨Ñ«Ñ¯Ñ°Ñ±ÑµÑ¶Ñ·Û÷ä±öàÑ¹Ñ»Ñ¼ÑÆÑÇÑÈÛëæ«èâë²ÑËÑÌÑÎÑÏÑÒÑÕÑÖÑÞÑáÑâÑåÑèÑéØÉØÍÙ²ÙðÚÝâûãÆõ¦÷Ê÷Ð÷úÑìÑîÑïÑñÑôÑ÷ÑøÑùì¾ÑþÒ¡Ò¢Ò£Ò¤Ò¥Ò©é÷ðÎ÷¥Ò¯Ò³ÒµÒ¶ØÌÚËÚþêÊìÇÒ½Ò¿ÒÃÒÅÒÇÒÏÒÕÒÚÒäÒåÒèÒéÒêÒëÒìÒïÚ±ß½á»âÂâøæäçËéóêÝîÆï×ïîðùô¯ÒñÒõÒøÒûÒþî÷ñ«Ó£Ó¤Ó¥Ó¦Ó§Ó¨Ó©ÓªÓ«Ó¬Ó®Ó±ÜãÝºÝÓÝöÞüàÓäÞäëè¬ðÐñ¨ò¤ó¿Ó´ÓµÓ¶Ó¸Ó»Ó½ïÞÓÅÓÇÓÊÓËÓÌÓÕÝµîðöÏÓßÓãÓæÓéÓëÓìÓïÓüÓþÔ¤Ô¦ØñÙ¶ÚÄÚÍÝ÷áÎâÀãÐåýæúêìì£îÚðÁðÖö¹Ô§Ô¨Ô¯Ô°Ô±Ô²ÔµÔ¶éÚð°ö½Ô¼Ô¾Ô¿ÔÁÔÃÔÄîáÔÇÔÈÔÉÔËÔÌÔÍÔÎÔÏÛ©Ü¿ã¢ã³ç¡è¹éæëµÔÓÔÖÔØÔÜÔÝÔÞè¶ôõöÉÔßÔàæàÔäÔæÔðÔñÔòÔóØÓßõàýóåÔôÚÚÔù×ÛçÕÔþÕ¡Õ¢Õ¤Õ©Õ«Õ®Õ±ÕµÕ¶Õ·Õ¸Õ»Õ½ÕÀÚÞÕÅÕÇÕÊÕËÕÍÕÔÚ¯îÈÕÝÕÞÕàÕâÚØéüðÑÕêÕëÕìÕïÕòÕóä¥çÇèåéôêâìõð²ÕõÕöÕøÕùÖ¡Ö¢Ö£Ö¤Úºá¿îÛï£óÝÖ¯Ö°Ö´Ö½Ö¿ÖÀÖÄÖÊÖÍæïèÎèÙéòéùêÞðºòÏôêõÙõÜö£ÖÓÖÕÖÖÖ×ÖÚïñÖßÖáÖåÖçÖèæûç§ÖíÖîÖïÖòÖõÖöÖüÖý×¤ØùéÆîù×¨×©×ª×¬ßùâÍò¨×®×¯×°×±×³×´×¶×¸×¹×ºæíçÄ×»×¼×Å×ÇÚÂïí×È×Ê×ÕÚÑç»ê¢êßíöïÅö·öö×Ù×Ü×ÝÙÌ×ÞÚÁæãöí×ç×éïß×êçÚõò÷®°¿²¢²·³Á³óµíµü¶··¶¸É¸Þ¹è¹ñºó»ï½Õ½Ü¾÷¿äÀïÁèÃ´Ã¹ÄíÆàÇ¤Ê¥Ê¬Ì§Í¿ÍÝÎ¹ÎÛÏÇÏÌÐ«ÒÍÓ¿ÓÎÓõÓùÔ¸ÔÀÔÆÔîÔúÔýÖþÓÚÖ¾×¢µòÚ¥ÚÙÛ§ÛÂÛÊÛàÛâÛñÛûÛþÜÜÝ¤Ý§Ý¯Ý»ÝÔÞ»Þêß¸ßÄßÇßÐßÔàÙàèàëá¥á®áÕáÝáèáïáóâÅâÇâÌâÎã¶ãÀãÁãÜäÓäÙäãäíäóå£å¸æùç«ç´çëèÅèðèñéÀéÍéïéõêåëÉëËì®ìÎìÑìÖíªíµí¿íÞíîîÐîÞîôîöï­ï³ï´ïµï»ï½ïÁïÂïÍïÑïÕïãïåïéïïïùðÅðÌð×ðßðâðéñ³ñÐñßñìò¬òýôðöÑöÒöÓößöñöõö÷öýöþ÷ª÷«÷³÷¹÷þ';
}
function FTPYStr()
{
	return 'åH°}Ì@µKÛ‡†‹Ü­a•áì\ÖOä@ùgóaÒ\ŠW‹‹òˆö—‰ÎÁTâZ”[”¡†hîCÞk½OâkŽÍ½‰æ^Ör„ƒï–ŒšˆóõUødý_Ý…Øä^ªN‚ä‘vùlÙSåQ¿‡¹P®…”ÀŽÅé]Éœ†ô§ãGº`Û‹ß…¾ŽÙH×ƒÞqÞpÆS¾œ»e˜ËòŠïRïjçSès÷B÷M„e°TžlžIÙe”Pƒ†À_™‰š›Äœè\óxôWïž·A“ÜÀãKñgðGâ“ùPÑaâ˜Ø”…¢ÐQšˆ‘M‘K Nò‰üoÉnÅ“‚}œæŽú‚ÈƒÔœyÅŒÓÔŒåšƒŠâO”v“½Ïsð’×‹ÀpçP®aêUî‡ÏÕ~×Êr‘Ô‹Èò–Ò—¶Uç†ˆö‡LéLƒ”ÄcS•³‚tÈOé‹öKânÜ‡Ø³Œ‰mêÒr‚áÖR™Â´~ýZ“Î·Q‘ÍÕ\òG—–™fä…èK°VßtñYuýXŸëï†ø|›_ÐnÏxŒ™ã|® ÜP»I¾Iƒ‰ŽÎ×‡™»NäzërµAƒ¦Ó|ÌŽÆc½IÜX‚÷âA¯êJ„“íåN¾E¼ƒù‡¾bÝzýpÞoÔ~Ùnú\Â”Ê[‡èÄ…²Éò‹˜ºœÝÜf¸Z”xåeäSûzß_‡}í^Ž§ÙJñ~½H“ú†Îà“ÛÄ‘‘„ÕQ—š—Ùy°Dº„®”“õühÊŽ™n×•´XÒd“vu¶\Œ§±I cŸôà‡ç‹”³œìßf¾†¼eÔgÖB½Ó]çCîüc‰|ëŠŽpâš°dážÕ{ã“õ Õ™¯Bölá”í”åVÓ†äbGäA–|„Ó—ƒö–ù…¸] Ùªš×xÙ€åƒž^™³ ©ºVütå‘”à¾„»fƒ¶ê Œ¦‘»ç…‡îDâgŸõÜOŠZ‰™èIùZî~ÓžºðIÖ@ˆ×é‘Ü—ä~åŠù˜î€î…÷{ÕOƒº –ðDÙEßƒãsøõb°lÁPéy¬mµ\âCŸ©ØœïˆÔL¼â[ô™ïwÕuUÙM¾pçšöE¼Š‰žŠ^‘¼SƒfØS—÷ähïL¯‚ñT¿pÖSøPž–ÄwÝ—“áÝoÙxÍØ“Ó‡‹D¿`øDñ€¼›½EÙŽûŸõVöváÔ“â}ÉwÙW—UÚs¶’ÚMŒÀ“{½CŒù„‚ä“¾V‘ßæ€²GÕa¿cä†”Røéwãt‚€¼væk}½oƒÙs½Žõ†ýŒmì–Ø•ã^œÏÆˆ˜‹Ù‰òÔ¾—ÓMÐMî™ÔbÝžâ’ådøù]úX„Ž’ìøŽ“êPÓ^ð^‘TØžÔŸ“¥ûXöŠV«EÒŽšwý”é|Ü‰ÔŽÙF„£…Q„¥‹‚™uõq÷ZÝLÐ–¾iõ…å‡øß^ˆå†JŽ½˜¡ÏXãxñ”ínhêR½WîRÌ–ž®î—éuúQÙRÔXêHÏ ™MÞZø™¼tüZÓÈ‡éb÷c‰Ø×oœû‘ôGù–‡WÈA®‹„Ô’ò‘˜åçf‘Ñ‰Äšg­hß€¾“Q†¾¯ˆŸ¨œoŠJÀQæDõŒüSÖeöm“]Ýxš§ÙV·x•þ Z…RÖMÕdÀLÔœËC‡‚ÒÀD¬q•ŸÈœ†ÕŸðQé’«@Ø›µœâ€èZ“ô™C·eð‡ÛE×Iëu¿ƒ¾ƒ˜OÝ‹¼‰”DŽ×ËE„©úÓ‹Ó›ëHÀ^¼oÓ“Ô‘Ëj‡\‡óK­^ÓJýW´‰ÁbÏŠÜQìV÷qöaŠAÇvîaÙZâ›ƒrñ{àP›Ñäeæ‰Ïušž±OˆÔ¹{égÆD¾}ÀO™z‰Aû|’þ“ìº†ƒ€œpË]™‘èbÛ`ÙvÒŠæIÅž„¦ðTužR¾ÖG¿V‘â‘ì²€úY¹aöžídŒ¢{ÊY˜ªª„Öváu½{í\Äz²òœ‹É”‡ãq³CƒeÄ_ïœÀU½gÞIÝ^“×þú„õoëA¹½YÕ]ŒÃ°XîMõ^¾oå\ƒHÖ”ßM•x a±M„ÅÇGÇoŽ„Ë|ð~¿NÚBÓPöLó@½›îiìoçR½¯d¸‚ƒô„q›ÜÞŸ†Ã„ìn¼mŽýÅfôbøFúñxÅe“þä‘Ö„¡ÔnŒÕ™ÎïZâ ä|¸MýeùN½äŸçëhÓX›Q½^×H«kâxÜŠòE°—é_„P„’‰N÷ðæzå|ýé`â‚äDîwš¤ÕnòS¾~ÝVâŽä˜îh‰¨‘©ýlçH“¸ŽìÑ‡¿‰Kƒ~à”‡ˆÄ’Œ’ªœóyµV•ç›rÕEÕNà—‰¿ÀkÙLÌŽh¸Qð¢…TÊ‰‘|Â˜ºˆé€åKöH”UéŸÏ“ÏžÅDÈRíÙ‡ˆÆœZž|Ùl²Aån°]»[Ë{™Ú”r»@ê@Ìmž‘×Ž”ˆÓ[‘ÐÀ| €žE¹™ì”Ìè|Òh¬˜éäZ“Æ„Ú³‡Z÷ã™ç„°A˜·ö˜èD‰¾îœIÕC¿w»hØ‚ëxõŽ¶Yû…–„îµ[švžrë`ƒ«áB‰ÈËžÉWÌy‡³ßŠóP¿r™À™µÞ]µZä‡ûZ°O¼cÜVìZ÷~÷k‚zÂ“ÉßBç ‘ziºŸ”¿Ä˜æœ‘ÙŸ’¾šÌ`ŠYž‡­IššÑžÒcö–¼Z›öƒÉÝvÕôu¯Ÿß|ç‚¿á‘ú«CÅRà÷[„CÙUÌA[™_ÞOÜkýgâì`ŽXîI¾c™ôÏ|öNðs„¢žgòt¾^æyúwýˆÃ@‡µ»\‰Å”në]Ìdž{­‡™É–Vµa˜ÇŠä“§ºtƒEÊV‡DâçU¯›ÂeÏNótÌJ±RïB] t“ïûuÌ”ô”ÙTµ“ä›ê‘‰À”]‡£é‚žoœO™¾™©Þ_Ý`ÞAšÚÅFûRú˜ÆA÷|Žn”Œ\ž´yÅLŒD™èû[èŽ’àÝ†‚öœS¾]Õ“‡÷Ì}Á_ß‰èŒ»jò…ñ˜½j Î«MžT™åÄTæ óH…ÎäX‚HŒÒ¿|‘]žV¾G™°Ò@äs‡`‹Œ¬”´aÎ›ñRÁR†á‡O‹ß˜qÙIûœÙuß~Ã}„ê²mðzÐUMÖ™¿zçNî‹ö Øˆå^ãTÙQüN›]æVéTž‚ƒ’Ð F‘¿å{åi‰ô²[Öi›Ò’ƒçÁdÖk«J¶[¾d¾’ÆìtüwR¾˜¿Šœç‘‘é}éh¾‡øQã‘Ö‡Öƒò‡ðxš{æŸÖ\®€ãf…Èâc¼{ëy“ÏÄXÀô[çtÔGðHƒÈ”MÄâ‰öF”fÝ‚öTá„øBÊ\ÑUÂ™‡§è‡æ‡êŸÌY‡Ëî”Üb™ŽªŸŒŽ”QôÆr‡“Âœâo¼~Ä“âÞrƒz‡ñwâSÖZƒ®¯‘šWútšª‡IaÖŽ‘Y®T±PÛ˜ý‹’°’ÙrÞ\‡Šùi¼„Á`â”ò_Õ›ñ‰ïh¿~îlØš‹åÌO‘{ÔuŠîHá•“ää˜ã×Vçhç’—«ÄšýRòTØM†¢šâ—‰Ó™ÌIòU¾_˜´ƒí î@ö’ ¿âFãUßwºžÖtåXãQ“œ\×l‰qƒLÊn‘aòqÀ`˜ âj˜Œ†Ü‰¦ËNŠ“Œ‹Ô™{‘êŸÍäçIçjÁuÛ„æ@˜ò†ÌƒSÂN¸[ÕV×SÊwÀR´“ÜE¸`Üå›ºDšJÓHŒ‹äuÝpšäƒAí•Õˆ‘c“åõ›­‚¸FŸ¦ÍŽ€ÙgÏlöqÚ……^Ü|òŒýxÔxçé˜ÓUøzïE™à„ñÔ¾JÝbãŒ…sùo´_é êIâ×Œðˆ”_À@Ê‹Æ˜ïŸáígÕJ¼xïƒÜ˜s½qŽVÏ”¿dãœïAÜ›äJÍ˜éc™ž¢Ë_ïSöwÙ‚ãšÐ¼R†Êò}’ß¿‰­†ÝäC·wš¢„x¼†æ|õºY•ñá‡„héWêƒÙ ¿˜Ó˜Š™ò~áŸ÷X‰„‚ûÙpˆsš‘ÓxŸý½BÙd”z‘ØÔO…‡ž—®Œ¼Œ‹ðÄIBÔ–Õ”žcÂ•ÀK„ÙŽŸª{ñÔŠ•rÎgŒ×Rñ‚„ÝßmáŒï—Ò•Ô‡Öu‰PÉPsÝYÙBâ‹öˆ‰Û«F¾R˜ÐÝ”•øÚHŒÙÐg˜äØQ”µ”d¼‚Ž›éVëpÕl¶í˜Õf´T qèp½zï•Pñ†¾ŒæJúƒÂ–‘ZížÔAÕb”\Ë’ðtï`æ}ÌKÔVÃCÖq·dëmëS½—šqÕrŒO“p¹SÉpªs¿s¬æi†îÃ«H“éêYãBöÅ_‘BâõT”‚Ø°cž©‰¯×TÕ„‡@•ÒãgåUí™œ« Cƒ¯ðhç|çMý½{Ó‘íwäˆòvÖ`äRî}ówŒÏ¾ŸùYêD—l¼gýföœÙNèFdÂ ŸNã~½y‘Qî^â^¶dˆDâQˆF“»îjÍ‘ï‚Ã“ørñWñ„™E»XüƒÒm‹zÄež³îBÈf¼w¾U¾WÝyífß`‡úžéžH¾SÈ”‚¥‚Î¾•Ö^ÐlÕ†Ž®éœ¿¬¬|ítŸ˜õnœØÂ„¼y·€†–é”®Y“ëÎœu¸CÅPÈný}†èæužõÕ_ŸoÊ…Ç‰]ìF„ÕÕ`àwT‘“‹³ò\ù^úFåa ÞÒuÁ•ãŠ‘ò¼šðqô]­tÒ ÎrÝ {‚bªMB‡˜³ˆõrÀwÙtã•éeï@ëU¬F«I¿hðWÁw‘—¾€Ç{ËWÌ\sª‹¹ú’°BÏ–¶iÜ]Žûè‚àlÔ”í‘í—ËGðAóJ¾|ð‹Ê’‡ÌäN•Ô‡[‡^žtò”½‹—nº…f’¶”yÃ{ÖCŒ‘žaÖxÒC”X¼œÀiä\á…Ådê€œîƒ´›°äPÀCð}ø Ì“‡uíšÔS”¢¾wÀmÔ‚íœÜŽ‘Òßx°_½kÖXãCæ›ŒWÖoÍ÷L„×ÔƒŒ¤ñZÓ–Óßd‰_¡÷\‰ºøfø††¡†Ó ˆº‹I—¿šåéŽŸŸû}‡ÀŽrîéÆG…’³Ž©ÖVòž…˜ÚIƒ°ƒ¼×—‘ÃéZá‰ô|ðýBø„—î“P¯ƒê–°WðB˜ÓŸ¬¬Ž“uˆòßb¸GÖ{ËŽÝUú_öŽ ”í“˜IÈ~ìvÖ]à’•ÏŸîátãžîUßzƒxÏË‡ƒ|‘›ÁxÔ„×hÕx×g®À[Ôr‡ÒŽFï‘«óA¿OÝWÙOáæ„èO¯ŽÅœÊaêŽãyï‹ë[ãŸ°a™Ñ‹ëú—‘ªÀt¬“Îž IŸÉÏ‰ÚA·f‰LúL¿Mæv”t‡Âž]žu­‹ûW°`îWÀ›†Ñ“í‚ò°bÛxÔçOƒž‘nà]â™ªqÕTÊ~äBôœÝ›ô~OŠÊÅcŽZÕZªz×uîAñS‚ø‚RÕ˜ÖIÊš£ï„é“‹ž¼uÓDšeâ•ùOú–ýrøxœYÞ@ˆ@†TˆA¾‰ßh™´øSüx¼sÜSè€»›‚é†ãXày„òëEß\ÌNáj•žíàiÊ|Á‘C¼‹íyšŒšèësžÄÝd”€•ºÙ­‘ÚŽçYÚEÅKñzè——ØŸ“ñ„tÉÙ‘‡KŽ¾ºjÙ\×PÙ›¾C¿•ÜˆåŽél–ÅÔpýS‚ùšÖ±K”ØÝšä—£‘ð¾`×dˆqŽ¤Ù~Ã›ÚwÔtá“ÏUÞHæNß@Ö†ÝmúpØ‘á˜‚ÉÔ\æ‚ê‡œ¿b˜EÝFÙcµøc’ê± ªb ŽŽ¬°Yà×CÕŠ˜ã`åP¹~¿—ÂšˆÌ¼ˆ“´”SŽÃÙ|œþòs™±—dÝTÝeÙ—úvÎ‡¿{ÜWÜUÓzçŠ½K·NÄ[±ŠæRÖaÝS°™•ƒóE¼q¿UØiÖTÕD T²š‡ÚÙAèTñvÐ™½ãŒ£´uÞDÙ‡Êð‚ïD˜¶ÇfÑbŠy‰Ñ îåFÙ˜‰‹¾YòK¿PÕœÊÖøáÕŽèCÆÙYnÖJ¾lÝwÙD±{åOýbõ™Û™¿‚¿v‚ôàuÕŒò|öOÔ{½Mæ—ã@ÀyÜg÷VÂOKÊNÉòáhÕµþôY¹ ŽÖÅVÎù™™ááâ··M‚ÜÔEÕFÑYœR÷áüq“ÓœD’LÂ}ŒÆ”E‰T¸Dðj›@åvûyÏ¤œ¥ß[»n¶RîŠŽ[ë…¸^¼™„žºBì¶ÕIÔ]µñÓ…×vàSÃÍšëÚæ‰Åˆßˆ‰|™”Ê{È’É‰ÉO¹½éÂ“«ßå†w†U‡z‡j¾ïÅüÖoÒLŽS¼¹·ÂƒeªwûƒðNðlð€ð–Àãâð‘¬ãÝsž¹»ìžEžzµ­ŒŽôé½f¾y¬z—g—¨°¸™R™ÁÝMÜ Ù}ÄdÄLïlºýŸÁïœ¡Ãì´^L²gâbãOäyäHä{äç˜ç™åŸåuåxäžæXæ[æ“çèuè‰èd·„ù‘úBûI°[åí¯{ÄŸÒM¿‹ÂgîžÏ\üDõEõGõRõœöAöX÷aöcö…öš÷IíXíxýO';
}
function Traditionalized(cc){
	var str='',ss=JTPYStr(),tt=FTPYStr();
	for(var i=0;i<cc.length;i++)
	{
		if(cc.charCodeAt(i)>10000&&ss.indexOf(cc.charAt(i))!=-1)str+=tt.charAt(ss.indexOf(cc.charAt(i)));
  		else str+=cc.charAt(i);
	}
	return str;
}
function Simplized(cc){
	var str='',ss=JTPYStr(),tt=FTPYStr();
	for(var i=0;i<cc.length;i++)
	{
		if(cc.charCodeAt(i)>10000&&tt.indexOf(cc.charAt(i))!=-1)str+=ss.charAt(tt.indexOf(cc.charAt(i)));
  		else str+=cc.charAt(i);
	}
	return str;
}

function setCookie(name, value)		//cookiesÉèÖÃ
{
	var argv = setCookie.arguments;
	var argc = setCookie.arguments.length;
	var expires = (argc > 2) ? argv[2] : null;
	if(expires!=null)
	{
		var LargeExpDate = new Date ();
		LargeExpDate.setTime(LargeExpDate.getTime() + (expires*1000*3600*24));
	}
	document.cookie = name + "=" + escape (value)+((expires == null) ? "" : ("; expires=" +LargeExpDate.toGMTString()));
}

function getCookie(Name)			//cookies¶ÁÈ¡
{
	var search = Name + "="
	if(document.cookie.length > 0) 
	{
		offset = document.cookie.indexOf(search)
		if(offset != -1) 
		{
			offset += search.length
			end = document.cookie.indexOf(";", offset)
			if(end == -1) end = document.cookie.length
			return unescape(document.cookie.substring(offset, end))
		 }
	else return ""
	  }
}

var StranLink_Obj=document.getElementById("StranLink")
if (StranLink_Obj)
{
	var JF_cn="ft"+self.location.hostname.toString().replace(/\./g,"")
	var BodyIsFt=getCookie(JF_cn)
	if(BodyIsFt!="1")BodyIsFt=Default_isFT
	with(StranLink_Obj)
	{
		if(typeof(document.all)!="object") 	//·ÇIEä¯ÀÀÆ÷
		{
			href="javascript:StranBody()"
		}
		else
		{
			href="#";
			onclick= new Function("StranBody();return false")
		}
		title=StranText("µã»÷ÒÔ·±ÌåÖÐÎÄ·½Ê½ä¯ÀÀ",1,1)
		innerHTML=StranText(innerHTML,1,1)
	}
	if(BodyIsFt=="1"){setTimeout("StranBody()",StranIt_Delay)}
}