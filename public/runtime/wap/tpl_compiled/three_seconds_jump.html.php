<?php echo $this->fetch('inc/header.html'); ?> 
<div id="J_wrap">
    <div class="blank20"></div>
    <div class="mod_box tc" style="height:200px">
        <p class="f16 tc">
            系统将在 <span id="time">3</span> 秒钟后自动跳转，如果没有自动跳转
        </p>
        <div class="blank20"></div>
        <a href="<?php
echo parse_url_tag("u:cart#index|"."id=".$this->_var['id']."".""); 
?>" title="点击访问" class="ui-button theme_bgcolor" style="margin:0 auto;float:none;display:inline-block;color:#fff" rel="ui-button">点击立即跳转</a>
    </div>
    <div class="blank20"></div> 
</div>
<script language="javascript">  
	$(function(){
	   delayURL();  
	});    
    function delayURL() { 
        var delay = document.getElementById("time").innerHTML;
 		var t = setTimeout("delayURL()", 1000);
        if (delay > 0) {
            delay--;
            document.getElementById("time").innerHTML = delay;
        } else {
     		clearTimeout(t); 
            window.location.href ='<?php
echo parse_url_tag_wap("u:cart#index|"."id=".$this->_var['id']."".""); 
?>';
        }        
    } 
</script>  
<?php echo $this->fetch('inc/footer.html'); ?> 


