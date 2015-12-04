<?php
//000000000600a:5:{s:2:"id";s:1:"3";s:4:"name";s:20:"TPL_MAIL_USER_VERIFY";s:7:"content";s:2620:"<table cellpadding="0" cellspacing="0" bgcolor="" width="100%" style="background:#ffffff;" class="baidu_pass">
<tbody>
	<tr>
		<td>
		<table cellpadding="0" cellspacing="0" width="100%">
        <tbody>
		<tr>
			<td style="background:#ffffff;border-bottom:2px solid #dfdfdf;width:15px;">&nbsp;</td>
			<td style="background:#ffffff;border-bottom:2px solid #ffffff;width:10px;">&nbsp;</td>
			<td style="background:#ffffff;width:137px;"><img src="{$user.logo}" class="logo" ellpadding="0" cellspacing="0"></td>
			<td style="background:#ffffff;border-bottom:2px solid #ffffff;width:10px;">&nbsp;</td>
			<td style="background:#ffffff;border-bottom:2px solid #dfdfdf;">&nbsp;</td>
		</tr>
        </tbody>
		</table>
		</td>
	</tr>
	<tr>
		<td>
		<table cellpadding="0" cellspacing="0" width="100%">
        <tbody>
		<tr>
			<td width="25px;" style="width:25px;"></td>
			<td align="">
				<div style="line-height:40px;height:40px;"></div>
				<p style="margin:0px;padding:0px;"><strong style="font-size:14px;line-height:24px;color:#333333;font-family:arial,sans-serif;">亲爱的用户：</strong></p>
				<p style="margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:'宋体',arial,sans-serif;">您好！</p>
				<p style="margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:'宋体',arial,sans-serif;">您于 {$user.send_time_ms} 帐号 发送验证码：</p>
				<p style="margin:0px;padding:0px;">验证码：{$user.send_code}</p>
 				 
				<div style="line-height:80px;height:80px;"></div>
				<p style="margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:'宋体',arial,sans-serif;">{$user.site_name}帐号团队</p>
				<p style="margin:0px;padding:0px;line-height:24px;font-size:12px;color:#333333;font-family:'宋体',arial,sans-serif;"><span style="border-bottom:1px dashed #ccc;" t="5" times="">{$user.send_time}</span></p>
			</td>
		</tr>
		</tbody>
		</table>
		</td>
	</tr>
	<tr>
		<td>
			<table cellpadding="0" cellspacing="0" width="100%" style="border-top:1px solid #dfdfdf">
			<tbody>
			<tr>
				<td width="25px;" style="width:25px;"></td>
				<td align="">
					<div style="line-height:40px;height:40px;"></div>
					<p style="margin:0px;padding:0px;line-height:24px;font-size:12px;color:#979797;font-family:'宋体',arial,sans-serif;">若您没有注册过{$user.site_name}帐号，请忽略此邮件，此帐号将不会被激活，由此给您带来的不便请谅解。</p>
				</td>
			</tr>
			</tbody>
			</table>
		</td>
	</tr>
</tbody>
</table>";s:4:"type";s:1:"1";s:7:"is_html";s:1:"1";}
?>