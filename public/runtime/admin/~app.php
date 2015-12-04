<?php  if (!defined('THINK_PATH')) exit(); filter_request($_REQUEST); filter_request($_GET); filter_request($_POST); define("AUTH_NOT_LOGIN", 1); define("AUTH_NOT_AUTH", 2); function conf($name,$value = false) { if($value === false) { return C($name); } else { if(M("Conf")->where("is_effect=1 and name='".$name."'")->count()>0) { if(in_array($name,array('EXPIRED_TIME','SUBMIT_DELAY','SEND_SPAN','WATER_ALPHA','MAX_IMAGE_SIZE','INDEX_LEFT_STORE','INDEX_LEFT_TUAN','INDEX_LEFT_YOUHUI','INDEX_LEFT_DAIJIN','INDEX_LEFT_EVENT','INDEX_RIGHT_STORE','INDEX_RIGHT_TUAN','INDEX_RIGHT_YOUHUI','INDEX_RIGHT_DAIJIN','INDEX_RIGHT_EVENT','SIDE_DEAL_COUNT','DEAL_PAGE_SIZE','PAGE_SIZE','BATCH_PAGE_SIZE','HELP_CATE_LIMIT','HELP_ITEM_LIMIT','REC_HOT_LIMIT','REC_NEW_LIMIT','REC_BEST_LIMIT','REC_CATE_GOODS_LIMIT','SALE_LIST','INDEX_NOTICE_COUNT','RELATE_GOODS_LIMIT'))) { $value = intval($value); } M("Conf")->where("is_effect=1 and name='".$name."'")->setField("value",$value); } C($name,$value); } } function write_timezone($zone='') { if($zone=='') $zone = conf('TIME_ZONE'); $var = array( '0' => 'UTC', '8' => 'PRC', ); $timezone_config_str = "<?php\r\n"; $timezone_config_str .= "return array(\r\n"; $timezone_config_str.="'DEFAULT_TIMEZONE'=>'".$var[$zone]."',\r\n"; $timezone_config_str.=");\r\n"; $timezone_config_str.="?>"; @file_put_contents(get_real_path()."public/timezone_config.php",$timezone_config_str); } function save_log($msg,$status) { if(conf("ADMIN_LOG")==1) { $adm_session = es_session::get(md5(conf("AUTH_KEY"))); $log_data['log_info'] = $msg; $log_data['log_time'] = get_gmtime(); $log_data['log_admin'] = intval($adm_session['adm_id']); $log_data['log_ip'] = get_client_ip(); $log_data['log_status'] = $status; $log_data['module'] = MODULE_NAME; $log_data['action'] = ACTION_NAME; $type = ''; if(MODULE_NAME=='Public'&&ACTION_NAME=='do_login'){ $type = '管理员登录'; }elseif(MODULE_NAME=='User'&&ACTION_NAME=='modify_account'){ $type = '管理员金额修改'; } if($type){ $GLOBALS['msg']->manage_msg('MSG_ADMIN_MANAGE','',array('type'=>$type,'content'=>$msg)); } M("Log")->add($log_data); } } function get_toogle_status($tag,$id,$field) { if($tag) { return "<span class='is_effect' onclick=\"toogle_status(".$id.",this,'".$field."');\">".l("YES")."</span>"; } else { return "<span class='is_effect' onclick=\"toogle_status(".$id.",this,'".$field."');\">".l("NO")."</span>"; } } function get_is_effect($tag,$id) { if($tag) { return "<span class='is_effect' onclick='set_effect(".$id.",this);'>".l("IS_EFFECT_1")."</span>"; } else { return "<span class='is_effect' onclick='set_effect(".$id.",this);'>".l("IS_EFFECT_0")."</span>"; } } function get_is_project($tag,$id) { if($tag) { return "是"; } else { return "<span class='is_effect' onclick='set_project(".$id.",this);'>否</span>"; } } function get_sort($sort,$id) { if($tag) { return "<span class='sort_span' onclick='set_sort(".$id.",".$sort.",this);'>".$sort."</span>"; } else { return "<span class='sort_span' onclick='set_sort(".$id.",".$sort.",this);'>".$sort."</span>"; } } function get_nav($nav_id) { return M("RoleNav")->where("id=".$nav_id)->getField("name"); } function get_module($module_id) { return M("RoleModule")->where("id=".$module_id)->getField("module"); } function get_group($group_id) { if($group_data = M("RoleGroup")->where("id=".$group_id)->find()) $group_name = $group_data['name']; else $group_name = L("SYSTEM_NODE"); return $group_name; } function get_role_name($role_id) { return M("Role")->where("id=".$role_id)->getField("name"); } function get_admin_name($admin_id) { $adm_name = M("Admin")->where("id=".$admin_id)->getField("adm_name"); if($adm_name) return $adm_name; else return l("NONE_ADMIN_NAME"); } function get_log_status($status) { return l("LOG_STATUS_".$status); } function check_sort($sort) { if(!is_numeric($sort)) { return false; } return true; } function check_empty($data) { if(trim($data)=='') { return false; } return true; } function set_default($null,$adm_id) { $admin_name = M("Admin")->where("id=".$adm_id)->getField("adm_name"); if($admin_name == conf("DEFAULT_ADMIN")) { return "<span style='color:#f30;'>".l("DEFAULT_ADMIN")."</span>"; } else { return "<a href='".u("Admin/set_default",array("id"=>$adm_id))."'>".l("SET_DEFAULT_ADMIN")."</a>"; } } function get_all_files( $path ) { $list = array(); $dir = @opendir($path); while (false !== ($file = @readdir($dir))) { if($file!='.'&&$file!='..') if( is_dir( $path.$file."/" ) ){ $list = array_merge( $list , get_all_files( $path.$file."/" ) ); } else { $list[] = $path.$file; } } @closedir($dir); return $list; } function get_send_type_msg($status) { if($status==0) { return l("SMS_SEND"); }elseif($status==2){ return '微信'; } else { return l("MAIL_SEND"); } } function get_is_send($is_send) { if($is_send==0) return L("NO"); else return L("YES"); } function get_send_result($result) { if($result==0) { return L("FAILED"); } else { return L("SUCCESS"); } } function get_status($status) { if($status) { return l("YES"); } else return l("NO"); } function show_content($content,$id) { return "<a title='".l("VIEW")."' href='javascript:void(0);' onclick='show_content(".$id.")'>".l("VIEW")."</a>"; } function get_deal_user($uid) { $uinfo = M("User")->getById($uid); if($uinfo) { return $uinfo['user_name']; } else { if($uid==0) return "管理员发起"; else return "发起人被删除"; } } function get_to_date($time) { if($time==0)return "长期"; if($time<get_gmtime()) { return "<span style='color:#f30;'>过期</span>"; } else { return "<span>".to_date($time,"Y/m/d H:i")."</span>"; } } function get_title($title) { return "<span title='".$title."'>".msubstr($title)."</span>"; } function get_deal_name($id) { $name = M("Deal")->where("id=".$id)->getField("name"); return get_title($name); } function get_send_status($status) { return L("SEND_STATUS_".$status); } function get_send_type($send_type) { return l("SEND_TYPE_".$send_type); } function get_indeximage_type($type=0){ switch($type){ case 1: return "产品众筹"; break; case 2: return "股权众筹"; break; default: return "首页"; } } function get_isrec($is_rec,$id) { if($tag) { return "<span class='is_rec' onclick='set_isrec(".$id.",".$is_rec.",this);'>".$is_rec."</span>"; } else { return "<span class='is_rec' onclick='set_isrec(".$id.",".$is_rec.",this);'>".$is_rec."</span>"; } } function is_ips_bill_no_admin($ips_bill_no){ if($ips_bill_no>0){ return '第三方托管'; }else{ return '网站支付'; } } return array ( 'app_debug' => false, 'app_domain_deploy' => false, 'app_plugin_on' => false, 'app_file_case' => false, 'app_group_depr' => '.', 'app_group_list' => '', 'app_autoload_reg' => false, 'app_autoload_path' => 'Think.Util.,@.COM.', 'app_config_list' => array ( 0 => 'taglibs', 1 => 'routes', 2 => 'tags', 3 => 'htmls', 4 => 'modules', 5 => 'actions', ), 'cookie_expire' => 3600, 'cookie_domain' => '', 'cookie_path' => '/', 'cookie_prefix' => '', 'default_app' => '@', 'default_group' => 'Home', 'default_module' => 'Index', 'default_action' => 'index', 'default_charset' => 'utf-8', 'default_timezone' => 'PRC', 'default_ajax_return' => 'JSON', 'default_theme' => 'default', 'default_lang' => 'zh-cn', 'db_type' => 'mysql', 'db_host' => 'localhost', 'db_name' => 'crowdfunding', 'db_user' => 'root', 'db_pwd' => 'cuipijizhenghaochi', 'db_port' => '3306', 'db_prefix' => 'fanwe_', 'db_suffix' => '', 'db_fieldtype_check' => false, 'db_fields_cache' => true, 'db_charset' => 'utf8', 'db_deploy_type' => 0, 'db_rw_separate' => false, 'data_cache_time' => -1, 'data_cache_compress' => false, 'data_cache_check' => false, 'data_cache_type' => 'File', 'data_cache_path' => './admin/../public/runtime/admin/Temp/', 'data_cache_subdir' => false, 'data_path_level' => 1, 'error_message' => '您浏览的页面暂时发生了错误！请稍后再试～', 'error_page' => '', 'html_cache_on' => false, 'html_cache_time' => 60, 'html_read_type' => 0, 'html_file_suffix' => '.shtml', 'lang_switch_on' => false, 'lang_auto_detect' => true, 'log_record' => false, 'log_file_size' => 2097152, 'log_record_level' => array ( 0 => 'EMERG', 1 => 'ALERT', 2 => 'CRIT', 3 => 'ERR', ), 'page_rollpage' => 5, 'page_listrows' => 30, 'session_auto_start' => true, 'show_run_time' => false, 'show_adv_time' => false, 'show_db_times' => false, 'show_cache_times' => false, 'show_use_mem' => false, 'show_page_trace' => false, 'show_error_msg' => true, 'tmpl_engine_type' => 'Think', 'tmpl_detect_theme' => false, 'tmpl_template_suffix' => '.html', 'tmpl_cachfile_suffix' => '.php', 'tmpl_deny_func_list' => 'echo,exit', 'tmpl_parse_string' => '', 'tmpl_l_delim' => '{', 'tmpl_r_delim' => '}', 'tmpl_var_identify' => 'array', 'tmpl_strip_space' => false, 'tmpl_cache_on' => '1', 'tmpl_cache_time' => -1, 'tmpl_action_error' => 'Public:error', 'tmpl_action_success' => 'Public:success', 'tmpl_trace_file' => './admin/ThinkPHP/Tpl/PageTrace.tpl.php', 'tmpl_exception_file' => './admin/ThinkPHP/Tpl/ThinkException.tpl.php', 'tmpl_file_depr' => '/', 'taglib_begin' => '<', 'taglib_end' => '>', 'taglib_load' => true, 'taglib_build_in' => 'cx', 'taglib_pre_load' => '', 'tag_nested_level' => 3, 'tag_extend_parse' => '', 'token_on' => 0, 'token_name' => '__hash__', 'token_type' => 'md5', 'url_case_insensitive' => false, 'url_router_on' => false, 'url_dispatch_on' => true, 'url_model' => '0', 'url_pathinfo_model' => 2, 'url_pathinfo_depr' => '/', 'url_html_suffix' => '', 'var_group' => 'g', 'var_module' => 'm', 'var_action' => 'a', 'var_router' => 'r', 'var_page' => 'p', 'var_template' => 't', 'var_language' => 'l', 'var_ajax_submit' => 'ajax', 'var_pathinfo' => 's', 'default_admin' => 'admin', 'auth_key' => 'forfun', 'time_zone' => '8', 'admin_log' => '1', 'db_version' => '1.6', 'db_vol_maxsize' => '8000000', 'water_mark' => '', 'big_width' => '500', 'big_height' => '500', 'small_width' => '200', 'small_height' => '200', 'water_alpha' => '50', 'water_position' => '4', 'max_image_size' => '3000000', 'allow_image_ext' => 'jpg,gif,png', 'bg_color' => '#ffffff', 'is_water_mark' => '0', 'template' => 'fanwe', 'site_logo' => './public/attachment/201508/17/12/55d162085b8dd.png', 'seo_title' => '预购一个梦想', 'mail_on' => '1', 'sms_on' => '1', 'public_domain_root' => '', 'app_msg_sender_open' => '1', 'admin_msg_sender_open' => '1', 'gzip_on' => '1', 'site_name' => 'FunnyDream众筹', 'cache_on' => '1', 'expired_time' => '0', 'tmpl_domain_root' => '', 'cache_type' => 'File', 'memcache_host' => '127.0.0.1:11211', 'image_username' => 'admin', 'image_password' => 'admin', 'deal_msg_lock' => '0', 'send_span' => '2', 'domain_root' => '', 'integrate_cfg' => '', 'integrate_code' => '', 'pay_radio' => '0.1', 'site_license' => 'FunnyDream众筹z.forfunnet.com 版权所有', 'seo_keyword' => 'FunnyDream众筹 - 预购一个梦想', 'seo_description' => 'FunnyDream众筹', 'promote_msg_lock' => '1', 'promote_msg_page' => '0', 'state_cdoe' => '', 'user_verify' => '2', 'invite_referrals' => '5', 'invite_referrals_type' => '1', 'user_message_auto_effect' => '1', 'buy_invite_referrals' => '5', 'referral_ip_limi' => '1', 'mail_send_payment' => '1', 'reply_address' => '455180151@qq.com', 'mail_send_delivery' => '1', 'network_for_record' => '浙ICP备15036476号-2', 'qr_code' => './public/attachment/201512/02/15/565e9b967aafe.jpg', 'repay_make' => '7', 'sql_check' => '1', 'mortgage_money' => '0.01', 'enquier_num' => '6', 'invest_pay_send_status' => '0', 'invest_status_send_status' => '0', 'invest_paid_send_status' => '0', 'invest_status' => '1', 'average_user_status' => '0', 'referral_limit' => '999', 'score_trade_number' => '100', 'buy_presend_score_multiple' => '0.5', 'buy_presend_point_multiple' => '0.5', 'wx_msg_lock' => '0', 'virsual_num' => '3988', 'work_time' => '09:00-18:30', 'mortgage_money_unfreeze' => '12', 'business_tax' => '1', 'identify_nagative' => '0', 'project_hide' => '0', 'business_code' => '1', 'kf_qq' => '455180151', 'business_licence' => '1', 'identify_positive' => '0', 'kf_phone' => '4008058837', 'app_name' => 'VK维客众筹-VitaKung.com ', 'app_sub_ver' => 51, 'rewriter_depart' => '-', 'site_domain' => '', 'venture_investment' => '0', '_taglibs_' => array ( 'html' => '@.TagLib.TagLibHtml', ), ); ?>