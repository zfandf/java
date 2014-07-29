﻿<?php

// 使用PHPMailer发送邮件实例，foxmail邮箱
//Script by Code52.net
//代码吾爱，Be a happy coder.
//需要传进来的参数：
/*
 * randmailFrom
 * mailTo
 * randsubject
 * randContent
 */

include("class.phpmailer.php");
include("class.smtp.php"); // 可选

$mail             = new PHPMailer();
$randContent = rand(1,3);
$content ="test/".$randContent.".html";
$body             = $mail->getFile("$content");//邮件正文内容，提取html文件为其内容
$body             = eregi_replace("[\]",'',$body);

$mail->IsSMTP();
$mail->SMTPAuth   = true;                  // 必填，SMTP服务器是否需要验证，true为需要，false为不需要
$mail->Host       = "mail.bnu.edu.cn";      //必填，设置SMTP服务器
//$mail->Port       = 25;                   // 设置端口

$mail->Username   = "heyue@mail.bnu.edu.cn";  // 必填，开通SMTP服务的邮箱；任意一个foxmail邮箱均可
$mail->Password   = "bnuheyue";            //必填， 以上邮箱对应的密码

$mail->From       = "heyue@mail.bnu.edu.cn";    //必填，发件人Email
$mail->FromName   = "heyue";              //必填，发件人昵称或姓名
$mail->Subject    = "This is the subject";       //必填，邮件标题（主题）
$mail->AltBody    = "This is the body when user views in plain text format"; //可选，纯文本形势下用户看到的内容
$mail->WordWrap   = 50; // 自动换行的字数

$mail->MsgHTML($body);

$mail->AddReplyTo("heyue@mail.bnu.edu.cn","Webmaster");//回复邮箱地址


//$mail->AddAttachment("/path/to/file.zip");             // 添加附件,注意路径
//$mail->AddAttachment("/path/to/image.jpg", "new.jpg"); // 添加附件

$mail->AddAddress("heyue_cn@qq.com","First Last");//收件人地址。参数一：收信人的邮箱地址，可添加多个。参数二：收件人称呼

$mail->IsHTML(true); // 是否以HTML形式发送，如果不是，请删除此行

if(!$mail->Send()) {
  echo "Mailer错误: " . $mail->ErrorInfo;
} else {
  echo "邮件发送成功";
}

?>