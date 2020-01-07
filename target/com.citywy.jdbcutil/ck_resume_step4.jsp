<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="renderer" content="webkit|ie-comp|ie-stand" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <link rel="stylesheet" type="text/css" href="css/zfw_base.css" />
    <link rel="stylesheet" type="text/css" href="css/cropper.min.css" />
    <link rel="stylesheet" type="text/css" href="css/ImgCropping.css" />
    <link rel="stylesheet" type="text/css" href="css/ck_resume_step4.css" />
    <title></title>
</head>
<body>
    <!--制服网导航开始-->
    <div class="nav-top">
        <div class="navcon clearfix">
            <div class="logo">
                <a href="javascript:;" target="_blank" title="制服网">制服网</a><span>开始你的服装设计之旅吧!</span>
            </div>
            <div class="menu" id="menu">
                <ul>
                    <li><a href="javascript:;" class="menuA">首页</a></li>
                    <li class="cur"><a href="javascript:;" class="menuA">圈子</a></li>
                    <li onMouseOver="show(this)" onMouseOut="hide(this)">
                        <a href="javascript:;" class="menu-down menuA">作品<i class="icon_downArr"></i></a>
                        <div class="lit-menu">
                            <p><a href="javascript:;">设计作品</a></p>
                            <p><a href="javascript:;">服装版型</a></p>
                            <p><a href="javascript:;">文档资料</a></p>
                        </div>
                    </li>
                    <li><a href="javascript:;" class="menuA">微拍</a></li>
                    <li onMouseOver="show(this)" onMouseOut="hide(this)">
                        <a href="javascript:;" class="menu-down menuA">招聘<i class="icon_downArr"></i></a>
                        <div class="lit-menu">
                            <p><a href="javascript:;">找工作</a></p>
                            <p><a href="javascript:;">找企业</a></p>
                            <p><a href="javascript:;">找人才</a></p>
                        </div>
                    </li>
                    <li onMouseOver="show(this)" onMouseOut="hide(this)">
                        <a href="https://www.baidu.com" class="menu-down menuA">更多<i class="icon_downArr"></i></a>
                        <div class="lit-menu">
                            <p><a href="javascript:;">新闻</a></p>
                            <p><a href="javascript:;">招标</a></p>
                            <p><a href="javascript:;">赛事</a></p>
                            <p><a href="javascript:;">展会</a></p>
                        </div>
                    </li>
                </ul>                
            </div>
            <!-- 搜索部分 -->
            <div class="search-box hide" id="search_box">
                <span class="search-cancel" id="search_cancel"></span>
                <input type="text" class="search-input">
                <span class="search-icon"></span>              
            </div>
            <div class="nav-right">
                <a class="user-search fl" href="javascript:;" id="nav_search_btn">
                    <i class="icon-nav-search"></i>
                </a>
                <a class="user-upload fl" href="javascript:;">
                    <i href="javascript:;" class="icon-nav-upload"></i>
                </a>
                <div class="user-massage fl">
                    <a href="javascript:;" class="icon-nav-massage" id="massage_btn"><i></i><sup>1</sup></a>
                    <div class="massage-box" id="massage_box" style="display: none;">
                        <section>消息盒<span class="clean-box-msg">清空</span></section>
                        <div class="message-box-list-wrapper">
                            <ul class="message-box-list">
                                <li>
                                    <a href="javascript:;"><span>[留言]</span>中国人气设计师互动平台深师、插画师、艺术家</a>
                                </li>
                                <li>
                                    <a href="javascript:;"><span>[评论]</span>中国人气设计师互动平台深师、插画师、艺术家</a>
                                </li>
                                <li>
                                    <a href="javascript:;"><span>[私信]</span>中国人</a>
                                </li>
                                <li>
                                    <a href="javascript:;"><span>[通知]</span>中国人气设计师互动平台深师、插画师、艺术家</a>
                                </li>
                            </ul>
                        </div>
                        <a href="javascript:;" class="check-all">查看全部</a>
                    </div>
                </div>
                <div class="user-logined fl" id="nav_user_face">
                    <a href="javascript:;" class="nav-uesr-face">
                        <img src="images/adv01.jpg" alt="" />
                    </a>
                    <div class="user-drop-box" id="user_drop_box">
                        <div class="user-drop-head">
                            <div class="user-drop-head-infor">
                                <i class="medal"></i>
                                <div class="user-state">
                                    <div class="user-state-top">
                                        <a href="javascript:;" class="user-name">西城烟柳</a><span
                                            class="icon-mobail"></span><span class="icon-massage"></span><span
                                            class="icon-qq"></span><span class="icon-weibo"></span><span
                                            class="icon-wechat"></span>
                                        <!--<span class="icon-mobail sucessed"></span><span class="icon-massage sucessed"></span><span class="icon-qq sucessed"></span><span class="icon-weibo sucessed"></span><span class="icon-wechat sucessed"></span>-->
                                    </div>
                                    <p class="user-mx">
                                        <a href="javascript:;">关注：1244</a><a href="javascript:;">粉丝：12485</a><a
                                            href="javascript:;">作品：213</a><a href="javascript:;" class="fr mx">明细</a><a
                                            href="javascript:;" class="fr integral">积分：<span>13144</span></a>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="user-state-infor clearfix">
                            <a href="javascript:;" class="fl personal-center"><i></i>个人中心</a>
                            <a href="javascript:;" class="fl personal-works"><i></i>我的作品</a>
                            <a href="javascript:;" class="fl personal-collect"><i></i>我的收藏</a>
                            <a href="javascript:;" class="fl personal-manage"><i></i>积分管理</a>
                        </div>
                        <div class="user-drop-footer clearfix">
                            <a href="javascript:;" class="fl">账号设置</a>
                            <a href="javascript:;" class="fr">退出</a>
                        </div>
                    </div>
                </div>
                <!--<div class="login-reg"><a href="javascript:;">登录</a><a href="javascript:;">注册</a></div>-->
            </div>
        </div>
    </div>
    <!-- 主题部分 -->
    <div class="recruit-main w clearfix">
        <!-- 创建我的简历5步 -->
        <div class="step-bar box-shadow radius bgfff">
            <div class="title">创建我的简历</div>
            <div class="step">
                <div class="progress-bar">
                    <div class="progress-cur" style="width:75%;"></div>
                </div> 
                <div class="step1 item">
                    <div class="num light">1</div>
                    <div class="tex">联系方式与作品</div>
                </div>
                <div class="step2 item">
                    <div class="num light">2</div>
                    <div class="tex">基本信息</div>
                </div>
                <div class="step3 item">
                    <div class="num light">3</div>
                    <div class="tex">工作经历</div>
                </div>
                <div class="step4 item">
                    <div class="num light">4</div>
                    <div class="tex">教育经历</div>
                </div>
                <div class="step5 item">
                    <div class="num">5</div>
                    <div class="tex">创建完成</div>
                </div>   
            </div>
        </div>
        <!-- 信息填写 -->
        <div class="infor-fill-warp box-shadow radius bgfff mar_top107">
            <!-- 头像 -->
            <div class="avater box-shadow">
                <img src="images/tx.jpg" alt="" id="finalImg" width="100%">
                <a href="javascript:;" class="head-pic" id="replaceImg">
                    <i class="icon-resume-upload"></i><br>请使用5M以下，<br>png/jpg限制格式<br>的照片
                </a>
            </div>
            <!--图片裁剪框 start-->
            <div style="display: none" class="tailoring-container">
                <div class="black-cloth" onclick="closeTailor(this)"></div>
                <div class="tailoring-content">
                        <div class="tailoring-content-one">
                            <label title="上传图片" for="chooseImg" class="l-btn choose-btn">
                                <input type="file" accept="image/jpg,image/jpeg,image/png" name="file" id="chooseImg" class="hidden" onchange="selectImg(this)">
                                选择图片
                            </label>
                            <div class="close-tailoring"  onclick="closeTailor(this)">×</div>
                        </div>
                        <div class="tailoring-content-two">
                            <div class="tailoring-box-parcel">
                                <img id="tailoringImg">
                            </div>
                            <div class="preview-box-parcel">
                                <p>图片预览：</p>
                                <div class="circular previewImg"></div>
                            </div>
                        </div>
                        <div class="tailoring-content-three">
                            <button class="l-btn cropper-reset-btn">复位</button>
                            <button class="l-btn cropper-rotate-btn">旋转</button>
                            <button class="l-btn cropper-scaleX-btn">换向</button>
                            <button class="l-btn sureCut" id="sureCut">确定</button>
                        </div>
                    </div>
            </div>
            <!--图片裁剪框 end-->
            <!-- 信息主要内容 -->
            <div class="infor-content">
                <div class="infor-content-hd groupEdu">
                    <div class="group-item-box">
                        <div class="group-item">
                            <div class="form-row mar_bot30 clearfix">
                                <label class="form-label wid356"><span class="reddot"></span>学校名称</label>
                                <div class="form-input-warp">
                                    <input type="hidden" name="college" value="">
                                    <select name="college_id"  class="flexselect input-style input-size input-radius wid310"  id="college_id"  datatype="*" tabindex="1">
                                            <option value="">填写学校名称</option>
                                        
                                            <option value="2" >清华大学</option>
                                        
                                            <option value="3" >北京大学</option>
                                        
                                            <option value="4" >中国人民大学</option>
                                        
                                            <option value="5" >北京航空航天大学</option>
                                        
                                            <option value="6" >北京邮电大学</option>
                                        
                                            <option value="7" >北京师范大学</option>
                                        
                                            <option value="8" >中国传媒大学</option>
                                        
                                            <option value="9" >北京语言大学</option>
                                        
                                            <option value="10" >北京科技大学</option>
                                        
                                            <option value="11" >中国农业大学</option>
                                        
                                            <option value="12" >北京理工大学</option>
                                        
                                            <option value="13" >北京林业大学</option>
                                        
                                            <option value="14" >北京交通大学</option>
                                        
                                            <option value="15" >中国矿业大学（北京）</option>
                                        
                                            <option value="16" >北京信息科技大学</option>
                                        
                                            <option value="17" >北京工业大学</option>
                                        
                                            <option value="18" >北京化工大学</option>
                                        
                                            <option value="19" >中国政法大学</option>
                                        
                                            <option value="20" >对外经贸大学</option>
                                        
                                            <option value="21" >中央民族大学</option>
                                        
                                            <option value="22" >中国地质大学（北京）</option>
                                        
                                            <option value="23" >中科院</option>
                                        
                                            <option value="24" >北京中医药大学</option>
                                        
                                            <option value="25" >首都经济贸易大学</option>
                                        
                                            <option value="26" >中央财经大学</option>
                                        
                                            <option value="27" >北方工业大学</option>
                                        
                                            <option value="28" >中国石油大学（北京）</option>
                                        
                                            <option value="29" >外交学院</option>
                                        
                                            <option value="30" >首都师范大学</option>
                                        
                                            <option value="31" >中央戏剧学院</option>
                                        
                                            <option value="32" >中国青年政治学院</option>
                                        
                                            <option value="33" >北京外国语大学</option>
                                        
                                            <option value="34" >华北电力大学（北京）</option>
                                        
                                            <option value="35" >中国人民公安大学</option>
                                        
                                            <option value="36" >北京协和医学院</option>
                                        
                                            <option value="37" >北京体育大学</option>
                                        
                                            <option value="38" >北京工商大学</option>
                                        
                                            <option value="39" >北京联合大学</option>
                                        
                                            <option value="40" >首都医科大学</option>
                                        
                                            <option value="41" >国际关系学院</option>
                                        
                                            <option value="42" >中央美术学院</option>
                                        
                                            <option value="43" >北京电子科技学院</option>
                                        
                                            <option value="44" >中国劳动关系学院</option>
                                        
                                            <option value="45" >中华女子学院</option>
                                        
                                            <option value="46" >北京建筑工程学院</option>
                                        
                                            <option value="47" >北京印刷学院</option>
                                        
                                            <option value="48" >北京石油化工学院</option>
                                        
                                            <option value="49" >首钢工学院</option>
                                        
                                            <option value="50" >北京农学院</option>
                                        
                                            <option value="51" >首都体育学院</option>
                                        
                                            <option value="52" >北京第二外国语学院</option>
                                        
                                            <option value="53" >北京物资学院</option>
                                        
                                            <option value="54" >北京警察学院</option>
                                        
                                            <option value="55" >中央音乐学院</option>
                                        
                                            <option value="56" >中国戏曲学院</option>
                                        
                                            <option value="57" >北京舞蹈学院</option>
                                        
                                            <option value="58" >北京城市学院</option>
                                        
                                            <option value="59" >北京电影学院</option>
                                        
                                            <option value="60" >北京服装学院</option>
                                        
                                            <option value="61" >北京工商大学嘉华学院</option>
                                        
                                            <option value="62" >首都师范大学科德学院</option>
                                        
                                            <option value="63" >北京工业大学耿丹学院</option>
                                        
                                            <option value="64" >北京化工大学北方学院</option>
                                        
                                            <option value="65" >北京政法职业学院</option>
                                        
                                            <option value="66" >北京信息职业技术学院</option>
                                        
                                            <option value="67" >北京联合大学广告学院</option>
                                        
                                            <option value="68" >北京邮电大学世纪学院</option>
                                        
                                            <option value="69" >北京大学医学部</option>
                                        
                                            <option value="70" >北京现代职业技术学院</option>
                                        
                                            <option value="71" >北京现代音乐研修学院</option>
                                        
                                            <option value="72" >北京戏曲艺术职业学院</option>
                                        
                                            <option value="73" >北京锡华国际经贸职业学院</option>
                                        
                                            <option value="74" >北京盛基艺术学校</option>
                                        
                                            <option value="75" >北京培黎职业学院</option>
                                        
                                            <option value="76" >北京农业职业学院</option>
                                        
                                            <option value="77" >北京科技职业学院</option>
                                        
                                            <option value="78" >北京科技经营管理学院</option>
                                        
                                            <option value="79" >北京经贸职业学院</option>
                                        
                                            <option value="80" >北京经济技术职业学院</option>
                                        
                                            <option value="81" >北京京北职业技术学院</option>
                                        
                                            <option value="82" >北京交通职业技术学院</option>
                                        
                                            <option value="83" >北京吉利大学</option>
                                        
                                            <option value="84" >北京汇佳职业学院</option>
                                        
                                            <option value="85" >北京工业职业技术学院</option>
                                        
                                            <option value="86" >北京工商管理专修学院</option>
                                        
                                            <option value="87" >北京电子科技职业学院</option>
                                        
                                            <option value="88" >北京财贸职业学院</option>
                                        
                                            <option value="89" >北京北大方正软件技术学院</option>
                                        
                                            <option value="90" >北大资源美术学院</option>
                                        
                                            <option value="91" >北京人文大学</option>
                                        
                                            <option value="92" >北京高等秘书学院</option>
                                        
                                            <option value="93" >北京应用技术大学</option>
                                        
                                            <option value="94" >中国防卫科技学院</option>
                                        
                                            <option value="95" >中国音乐学院</option>
                                        
                                            <option value="96" >中国信息大学</option>
                                        
                                            <option value="97" >北京青年政治学院</option>
                                        
                                            <option value="98" >北京财经专修学院</option>
                                        
                                            <option value="99" >北京经济管理职业学院</option>
                                        
                                            <option value="100" >北京美国英语语言学院</option>
                                        
                                            <option value="101" >中国管理软件学院</option>
                                        
                                            <option value="102" >财政部财政科学研究所</option>
                                        
                                            <option value="103" >北大资源学院</option>
                                        
                                            <option value="104" >现代管理大学</option>
                                        
                                            <option value="105" >北京民族大学</option>
                                        
                                            <option value="106" >北京市劳动保障职业学院</option>
                                        
                                            <option value="107" >北京市建设职工大学</option>
                                        
                                            <option value="108" >北京市房地产职工大学</option>
                                        
                                            <option value="109" >北京市汽车工业总公司职工大学</option>
                                        
                                            <option value="110" >北京市西城经济科学大学</option>
                                        
                                            <option value="111" >北京市丰台区职工大学</option>
                                        
                                            <option value="112" >北京广播电视大学</option>
                                        
                                            <option value="113" >北京教育学院</option>
                                        
                                            <option value="114" >北京市东城区职工业余大学</option>
                                        
                                            <option value="115" >北京市总工会职工大学</option>
                                        
                                            <option value="116" >北京市海淀区职工大学</option>
                                        
                                            <option value="117" >北京市崇文区职工大学</option>
                                        
                                            <option value="118" >北京宣武红旗业余大学</option>
                                        
                                            <option value="119" >北京市石景山区业余大学</option>
                                        
                                            <option value="120" >北京市朝阳区职工大学</option>
                                        
                                            <option value="121" >北京市机械工业局职工大学</option>
                                        
                                            <option value="122" >北京医药集团职工大学</option>
                                        
                                            <option value="123" >北京劳动保障职业学院</option>
                                        
                                            <option value="124" >北京社会管理职业学院</option>
                                        
                                            <option value="125" >北京演艺专修学院</option>
                                        
                                            <option value="126" >北京兴华大学</option>
                                        
                                            <option value="127" >北京新园明职业学院</option>
                                        
                                            <option value="128" >中央党校研究生院</option>
                                        
                                            <option value="129" >中国社科院</option>
                                        
                                            <option value="130" >北京旅游专修学院</option>
                                        
                                            <option value="131" >东方文化艺术学院</option>
                                        
                                            <option value="132" >首都联合职工大学</option>
                                        
                                            <option value="133" >北京影视研修学院</option>
                                        
                                            <option value="134" >国家法官学院</option>
                                        
                                            <option value="135" >北京建设大学</option>
                                        
                                            <option value="136" >北京金融学院</option>
                                        
                                            <option value="137" >北京黄埔大学</option>
                                        
                                            <option value="138" >中瑞酒店管理学院</option>
                                        
                                            <option value="139" >中国建筑设计研究院</option>
                                        
                                            <option value="140" >北京文理研修学院</option>
                                        
                                            <option value="141" >北京当代艺术学院</option>
                                        
                                            <option value="142" >北京大学国际法学院</option>
                                        
                                            <option value="143" >北京交通运输职业学院</option>
                                        
                                            <option value="144" >中国艺术研究院</option>
                                        
                                            <option value="145" >北京工业大学通州分校</option>
                                        
                                            <option value="146" >北京八维研修学院</option>
                                        
                                            <option value="147" >网络销售大学</option>
                                        
                                            <option value="148" >朝阳二外</option>
                                        
                                            <option value="149" >中北国际演艺学校</option>
                                        
                                            <option value="150" >复旦大学</option>
                                        
                                            <option value="151" >上海交通大学</option>
                                        
                                            <option value="152" >同济大学</option>
                                        
                                            <option value="153" >华东师范大学</option>
                                        
                                            <option value="154" >上海财经大学</option>
                                        
                                            <option value="155" >华东理工大学</option>
                                        
                                            <option value="156" >上海商学院</option>
                                        
                                            <option value="157" >东华大学</option>
                                        
                                            <option value="158" >上海理工大学</option>
                                        
                                            <option value="159" >上海大学</option>
                                        
                                            <option value="160" >上海外国语大学</option>
                                        
                                            <option value="161" >上海海事大学</option>
                                        
                                            <option value="162" >上海工程科技大学</option>
                                        
                                            <option value="163" >上海海洋大学</option>
                                        
                                            <option value="164" >上海中医药大学</option>
                                        
                                            <option value="165" >上海师范大学</option>
                                        
                                            <option value="166" >上海建桥学院</option>
                                        
                                            <option value="167" >上海政法学院</option>
                                        
                                            <option value="168" >上海电机学院</option>
                                        
                                            <option value="169" >上海第二工业大学</option>
                                        
                                            <option value="170" >上海应用技术学院</option>
                                        
                                            <option value="171" >上海电力学院</option>
                                        
                                            <option value="172" >上海对外贸易学院</option>
                                        
                                            <option value="173" >上海金融学院</option>
                                        
                                            <option value="174" >上海立信会计学院</option>
                                        
                                            <option value="175" >上海体育学院</option>
                                        
                                            <option value="176" >上海音乐学院</option>
                                        
                                            <option value="177" >上海戏剧学院</option>
                                        
                                            <option value="178" >上海杉达学院</option>
                                        
                                            <option value="179" >华东政法大学</option>
                                        
                                            <option value="180" >上海外国语大学贤达经济人文学院</option>
                                        
                                            <option value="181" >同济大学同科学院</option>
                                        
                                            <option value="182" >上海师范大学天华学院</option>
                                        
                                            <option value="183" >上海东方文化职业学院</option>
                                        
                                            <option value="184" >上海工商学院</option>
                                        
                                            <option value="185" >复旦大学上海视觉艺术学院</option>
                                        
                                            <option value="186" >复旦大学上海医学院</option>
                                        
                                            <option value="187" >复旦大学太平洋金融学院</option>
                                        
                                            <option value="188" >上海邦德职业技术学院</option>
                                        
                                            <option value="189" >上海诚信学院</option>
                                        
                                            <option value="190" >上海城市管理职业技术学院</option>
                                        
                                            <option value="191" >上海出版印刷高等专科学校</option>
                                        
                                            <option value="192" >上海电影艺术职业学院</option>
                                        
                                            <option value="193" >上海电子信息职业技术学院</option>
                                        
                                            <option value="194" >上海东海职业技术学院</option>
                                        
                                            <option value="195" >上海工会管理职业学院</option>
                                        
                                            <option value="196" >上海工商外国语学院</option>
                                        
                                            <option value="197" >上海工艺美术职业学院</option>
                                        
                                            <option value="198" >上海公安高等专科学校</option>
                                        
                                            <option value="199" >上海海关学院</option>
                                        
                                            <option value="200" >上海海事职业技术学院</option>
                                        
                                            <option value="201" >上海济光职业技术学院</option>
                                        
                                            <option value="202" >上海建峰职业技术学院</option>
                                        
                                            <option value="203" >上海交通职业技术学院</option>
                                        
                                            <option value="204" >上海立达职业技术学院</option>
                                        
                                            <option value="205" >上海旅游高等专科学校</option>
                                        
                                            <option value="206" >上海民远职业技术学院</option>
                                        
                                            <option value="207" >上海农林职业技术学院</option>
                                        
                                            <option value="208" >上海欧华职业技术学院</option>
                                        
                                            <option value="209" >上海思博职业技术学院</option>
                                        
                                            <option value="210" >上海托普信息技术学院</option>
                                        
                                            <option value="211" >上海新侨职业技术学院</option>
                                        
                                            <option value="212" >上海行健职业学院</option>
                                        
                                            <option value="213" >上海医疗器械高等专科学校</option>
                                        
                                            <option value="214" >上海医药高等专科学校</option>
                                        
                                            <option value="215" >上海震旦职业学院</option>
                                        
                                            <option value="216" >上海中华职业技术学院</option>
                                        
                                            <option value="217" >上海中侨职业技术学院</option>
                                        
                                            <option value="218" >上海纺织工业职工大学</option>
                                        
                                            <option value="219" >上海体育职业学院</option>
                                        
                                            <option value="220" >上海医药职工大学</option>
                                        
                                            <option value="222" >上海职工医学院</option>
                                        
                                            <option value="223" >上海职工体育运动技术学院</option>
                                        
                                            <option value="224" >华东理工大学网络教育学院</option>
                                        
                                            <option value="225" >上海市经济管理干部学院</option>
                                        
                                            <option value="226" >上海社会科学院</option>
                                        
                                            <option value="227" >上海大学艺术研究院</option>
                                        
                                            <option value="228" >中国科学院上海生命科学研究院</option>
                                        
                                            <option value="229" >上海电机学院</option>
                                        
                                            <option value="230" >上海电力学院</option>
                                        
                                            <option value="231" >上海市工程技术大学</option>
                                        
                                            <option value="232" >上海广播电视大学</option>
                                        
                                            <option value="233" >上海市工商外国语学院</option>
                                        
                                            <option value="234" >上海生物制品研究所</option>
                                        
                                            <option value="235" >华东师范大学</option>
                                        
                                            <option value="236" >上海科学技术学院</option>
                                        
                                            <option value="237" >上海思博职业技术学校</option>
                                        
                                            <option value="238" >上海市工会管理学院</option>
                                        
                                            <option value="239" >上海行政学院</option>
                                        
                                            <option value="240" >上海科学职业技术学院</option>
                                        
                                            <option value="241" >上海科技学院</option>
                                        
                                            <option value="242" >衫达大学</option>
                                        
                                            <option value="243" >拉萨尔国际设计学院</option>
                                        
                                            <option value="244" >上海工程技术大学</option>
                                        
                                            <option value="246" >上海青年管理干部学院</option>
                                        
                                            <option value="247" >上海鸿文职业技术学院</option>
                                        
                                            <option value="248" >上海大学巴士汽车学院</option>
                                        
                                            <option value="249" >哈尔滨工业大学</option>
                                        
                                            <option value="250" >哈尔滨工程大学</option>
                                        
                                            <option value="251" >东北林业大学</option>
                                        
                                            <option value="252" >东北农业大学</option>
                                        
                                            <option value="253" >哈尔滨医科大学</option>
                                        
                                            <option value="254" >黑龙江中医药大学</option>
                                        
                                            <option value="255" >黑龙江工程学院</option>
                                        
                                            <option value="256" >黑龙江科技大学</option>
                                        
                                            <option value="257" >哈尔滨学院</option>
                                        
                                            <option value="258" >哈尔滨体育学院</option>
                                        
                                            <option value="259" >黑龙江东方学院</option>
                                        
                                            <option value="260" >黑龙江大学</option>
                                        
                                            <option value="261" >哈尔滨商业大学</option>
                                        
                                            <option value="262" >哈尔滨师范大学</option>
                                        
                                            <option value="263" >哈尔滨理工大学</option>
                                        
                                            <option value="264" >佳木斯大学</option>
                                        
                                            <option value="265" >齐齐哈尔大学</option>
                                        
                                            <option value="266" >齐齐哈尔医学院</option>
                                        
                                            <option value="267" >黑龙江八一农垦大学</option>
                                        
                                            <option value="268" >东北石油大学</option>
                                        
                                            <option value="269" >大庆师范学院</option>
                                        
                                            <option value="270" >牡丹江医学院</option>
                                        
                                            <option value="271" >牡丹江师范学院</option>
                                        
                                            <option value="272" >绥化学院</option>
                                        
                                            <option value="273" >黑河学院</option>
                                        
                                            <option value="274" >大庆医学高等专科学校</option>
                                        
                                            <option value="275" >大庆职业学院</option>
                                        
                                            <option value="276" >大兴安岭职业学院</option>
                                        
                                            <option value="277" >哈尔滨电力职业技术学院</option>
                                        
                                            <option value="278" >哈尔滨华夏计算机职业技术学院</option>
                                        
                                            <option value="279" >哈尔滨金融学院</option>
                                        
                                            <option value="280" >哈尔滨铁道职业技术学院</option>
                                        
                                            <option value="281" >哈尔滨现代公共关系职业学院</option>
                                        
                                            <option value="282" >哈尔滨职业技术学院</option>
                                        
                                            <option value="283" >鹤岗师范高等专科学校</option>
                                        
                                            <option value="284" >黑龙江北开职业技术学院</option>
                                        
                                            <option value="285" >黑龙江工商职业技术学</option>
                                        
                                            <option value="286" >黑龙江建筑职业技术学院</option>
                                        
                                            <option value="287" >黑龙江林业职业技术学院</option>
                                        
                                            <option value="288" >黑龙江旅游职业技术学院</option>
                                        
                                            <option value="289" >黑龙江煤炭职业技术学院</option>
                                        
                                            <option value="290" >黑龙江民族职业学院</option>
                                        
                                            <option value="291" >黑龙江农垦职业学院</option>
                                        
                                            <option value="292" >黑龙江农业工程职业学院</option>
                                        
                                            <option value="293" >黑龙江农业经济职业学院</option>
                                        
                                            <option value="294" >黑龙江农业职业技术学院</option>
                                        
                                            <option value="295" >黑龙江三江美术职业学院</option>
                                        
                                            <option value="296" >黑龙江商业职业学院</option>
                                        
                                            <option value="297" >黑龙江生态工程职业学院</option>
                                        
                                            <option value="298" >黑龙江生物科技职业学院</option>
                                        
                                            <option value="299" >黑龙江信息技术职业学院</option>
                                        
                                            <option value="300" >黑龙江艺术职业学院</option>
                                        
                                            <option value="301" >鸡西大学</option>
                                        
                                            <option value="302" >牡丹江大学</option>
                                        
                                            <option value="303" >七台河职业学院</option>
                                        
                                            <option value="304" >齐齐哈尔高等师范专科学校</option>
                                        
                                            <option value="305" >齐齐哈尔职业学院</option>
                                        
                                            <option value="306" >伊春职业学院</option>
                                        
                                            <option value="307" >哈尔滨师范大学阿城学院</option>
                                        
                                            <option value="308" >黑龙江省政法管理干部学院</option>
                                        
                                            <option value="309" >黑龙江交通职业技术学院</option>
                                        
                                            <option value="310" >哈尔滨应用职业技术学院</option>
                                        
                                            <option value="311" >黑龙江省教育学院</option>
                                        
                                            <option value="312" >哈尔滨理工大学远东学院</option>
                                        
                                            <option value="313" >哈尔滨师范大学呼兰学院</option>
                                        
                                            <option value="314" >哈尔滨师范大学恒星学院</option>
                                        
                                            <option value="315" >哈尔滨商业大学德强商务学院</option>
                                        
                                            <option value="316" >大庆石油学院华瑞学院</option>
                                        
                                            <option value="317" >东北农业大学成栋学院</option>
                                        
                                            <option value="318" >黑龙江大学剑桥学院</option>
                                        
                                            <option value="319" >哈尔滨商业大学广厦学院</option>
                                        
                                            <option value="320" >哈尔滨工业大学华德应用技术学</option>
                                        
                                            <option value="321" >鹤岗矿务局职工大学</option>
                                        
                                            <option value="322" >哈尔滨市职工医学院</option>
                                        
                                            <option value="323" >佳木斯教育学院</option>
                                        
                                            <option value="324" >黑龙江幼儿师范高等专科学校</option>
                                        
                                            <option value="325" >哈尔滨外国语学院</option>
                                        
                                            <option value="326" >哈尔滨科学技术职业学院</option>
                                        
                                            <option value="327" >黑龙江粮食职业学院</option>
                                        
                                            <option value="328" >佳木斯职业学院</option>
                                        
                                            <option value="329" >黑龙江广播电视大学</option>
                                        
                                            <option value="330" >哈尔滨广播电视大学</option>
                                        
                                            <option value="331" >黑龙江大鹏传媒学院</option>
                                        
                                            <option value="332" >鸡西市北方外国语学院</option>
                                        
                                            <option value="333" >牡丹江市精英计算机学院</option>
                                        
                                            <option value="334" >黑龙江省工商职业技术学院</option>
                                        
                                            <option value="335" >齐齐哈尔林业学校'</option>
                                        
                                            <option value="336" >黑龙江生态职业学院</option>
                                        
                                            <option value="337" >哈尔滨阳光计算机专修学校</option>
                                        
                                            <option value="338" >齐齐哈尔市卫生学校</option>
                                        
                                            <option value="339" >伟建工学院</option>
                                        
                                            <option value="340" >诚实外语学院（肇庆分院）</option>
                                        
                                            <option value="341" >黑龙江省畜牧职业学院</option>
                                        
                                            <option value="342" >哈尔滨德强商务学院</option>
                                        
                                            <option value="343" >黑龙江现代艺术学</option>
                                        
                                            <option value="344" >黑龙江省对外贸易学校</option>
                                        
                                            <option value="345" >哈尔滨市幼儿师范学校</option>
                                        
                                            <option value="346" >黑龙江省社会科学院研究生部</option>
                                        
                                            <option value="347" >哈尔滨理工大学荣成学院</option>
                                        
                                            <option value="348" >吉林大学</option>
                                        
                                            <option value="349" >东北师范大学</option>
                                        
                                            <option value="350" >长春大学</option>
                                        
                                            <option value="351" >吉林农业大学</option>
                                        
                                            <option value="352" >长春中医药大学</option>
                                        
                                            <option value="353" >东北电力大学</option>
                                        
                                            <option value="354" >吉林化工学院</option>
                                        
                                            <option value="355" >吉林建工学院</option>
                                        
                                            <option value="356" >长春工程学院</option>
                                        
                                            <option value="357" >长春师范学院</option>
                                        
                                            <option value="358" >吉林工程技术师范学院</option>
                                        
                                            <option value="359" >吉林华桥外国语学院</option>
                                        
                                            <option value="360" >吉林财经大学</option>
                                        
                                            <option value="361" >吉林体育学院</option>
                                        
                                            <option value="362" >吉林艺术学院</option>
                                        
                                            <option value="363" >长春工业大学</option>
                                        
                                            <option value="364" >长春理工大学</option>
                                        
                                            <option value="365" >延边大学</option>
                                        
                                            <option value="366" >北华大学</option>
                                        
                                            <option value="367" >吉林农业科技学院</option>
                                        
                                            <option value="368" >吉林医药学院</option>
                                        
                                            <option value="369" >吉林师范大学</option>
                                        
                                            <option value="370" >白城师范学院</option>
                                        
                                            <option value="371" >通化师范学院</option>
                                        
                                            <option value="372" >白城医学高等专科学校</option>
                                        
                                            <option value="373" >长春东方职业学院</option>
                                        
                                            <option value="374" >长春金融高等专科学校</option>
                                        
                                            <option value="375" >长春汽车工业高等专科学校</option>
                                        
                                            <option value="376" >长春信息技术职业学院</option>
                                        
                                            <option value="377" >长春医学高等专科学校</option>
                                        
                                            <option value="378" >长春职业技术学院</option>
                                        
                                            <option value="379" >东北师范大学人文学院</option>
                                        
                                            <option value="380" >吉林工商学院—财经校区</option>
                                        
                                            <option value="381" >吉林大学—莱姆顿学院</option>
                                        
                                            <option value="382" >吉林电子信息职业技术学院</option>
                                        
                                            <option value="383" >吉林对外经贸职业学院</option>
                                        
                                            <option value="384" >吉林工业职业技术学院</option>
                                        
                                            <option value="385" >吉林公安高等专科学校</option>
                                        
                                            <option value="386" >吉林交通职业技术学院</option>
                                        
                                            <option value="387" >吉林工商学院—工程校区</option>
                                        
                                            <option value="388" >吉林农业工程职业技术学院</option>
                                        
                                            <option value="389" >吉林工商学院—商贸校区</option>
                                        
                                            <option value="390" >吉林司法警官职业学院</option>
                                        
                                            <option value="391" >辽源职业技术学院</option>
                                        
                                            <option value="392" >四平职业大学</option>
                                        
                                            <option value="393" >松原职业技术学院</option>
                                        
                                            <option value="394" >吉林省教育学院</option>
                                        
                                            <option value="395" >吉林经济管理干部学院</option>
                                        
                                            <option value="396" >长春大学光华学院</option>
                                        
                                            <option value="397" >长春大学旅游学院</option>
                                        
                                            <option value="398" >长春工业大学人文信息学</option>
                                        
                                            <option value="399" >吉林动画学院</option>
                                        
                                            <option value="400" >长春理工大学光电信息学院</option>
                                        
                                            <option value="401" >长春税务学院信息经济学院</option>
                                        
                                            <option value="402" >吉林农业大学发展学院</option>
                                        
                                            <option value="403" >吉林师范大学博达学院</option>
                                        
                                            <option value="404" >吉林铁道职业技术学院</option>
                                        
                                            <option value="405" >白城职业技术学院</option>
                                        
                                            <option value="406" >吉林建筑工程学院建筑装饰学院</option>
                                        
                                            <option value="407" >吉林建筑工程学院城建学院</option>
                                        
                                            <option value="408" >通化市职工大学</option>
                                        
                                            <option value="409" >通化钢铁公司职工大学</option>
                                        
                                            <option value="410" >吉林省经济管理干部学院</option>
                                        
                                            <option value="411" >吉林广播电视大学</option>
                                        
                                            <option value="412" >长春教育学院</option>
                                        
                                            <option value="413" >梨树农村成人高等专科学校</option>
                                        
                                            <option value="414" >延边黎明农民大学</option>
                                        
                                            <option value="415" >吉林职工医科大学</option>
                                        
                                            <option value="416" >吉林省行政管理干部学院</option>
                                        
                                            <option value="417" >吉林化学工业公司职工大学</option>
                                        
                                            <option value="418" >延边职工大学</option>
                                        
                                            <option value="419" >长春职工医科大学</option>
                                        
                                            <option value="420" >长春市直属机关业余大学</option>
                                        
                                            <option value="421" >长春市建筑职工业余大学</option>
                                        
                                            <option value="422" >长春职工大学</option>
                                        
                                            <option value="423" >长春广播电视大学</option>
                                        
                                            <option value="424" >长白山职业技术学院</option>
                                        
                                            <option value="425" >长春邮电学院</option>
                                        
                                            <option value="426" >吉林职业师范学院</option>
                                        
                                            <option value="427" >长春博文职业学院</option>
                                        
                                            <option value="428" >长春汽车高等专科学校</option>
                                        
                                            <option value="429" >吉林北华管理学院</option>
                                        
                                            <option value="430" >长春高等汽车专科学校</option>
                                        
                                            <option value="431" >长春市培林外国语职业学校</option>
                                        
                                            <option value="432" >长春幼儿师范学校</option>
                                        
                                            <option value="433" >长春艺术学校</option>
                                        
                                            <option value="434" >吉林警察学院</option>
                                        
                                            <option value="435" >大连理工大学</option>
                                        
                                            <option value="436" >东北大学</option>
                                        
                                            <option value="437" >辽宁大学</option>
                                        
                                            <option value="438" >大连海事大学</option>
                                        
                                            <option value="439" >东北财经大学</option>
                                        
                                            <option value="440" >大连大学</option>
                                        
                                            <option value="441" >大连交通大学</option>
                                        
                                            <option value="442" >大连医科大学</option>
                                        
                                            <option value="443" >辽宁师范大学</option>
                                        
                                            <option value="444" >大连民族学院</option>
                                        
                                            <option value="445" >大连工业大学</option>
                                        
                                            <option value="446" >大连海洋大学</option>
                                        
                                            <option value="447" >大连外国语学院</option>
                                        
                                            <option value="448" >辽宁对外经贸学院</option>
                                        
                                            <option value="449" >沈阳大学</option>
                                        
                                            <option value="450" >沈阳理工大学</option>
                                        
                                            <option value="451" >沈阳工业大学</option>
                                        
                                            <option value="452" >沈阳建筑大学</option>
                                        
                                            <option value="453" >沈阳农业大学</option>
                                        
                                            <option value="454" >辽宁中医药大学</option>
                                        
                                            <option value="455" >沈阳药科大学</option>
                                        
                                            <option value="456" >沈阳师范大学</option>
                                        
                                            <option value="457" >中国刑警学院</option>
                                        
                                            <option value="458" >沈阳化工大学</option>
                                        
                                            <option value="459" >沈阳航空航天大学</option>
                                        
                                            <option value="460" >沈阳工程学院</option>
                                        
                                            <option value="461" >沈阳医学院</option>
                                        
                                            <option value="462" >沈阳体育学院</option>
                                        
                                            <option value="463" >鲁迅美术学院</option>
                                        
                                            <option value="464" >沈阳音乐学院</option>
                                        
                                            <option value="465" >中国医科大学</option>
                                        
                                            <option value="466" >辽宁工程技术大学</option>
                                        
                                            <option value="467" >辽宁石化大学</option>
                                        
                                            <option value="468" >辽宁科技大学</option>
                                        
                                            <option value="469" >鞍山师范学院</option>
                                        
                                            <option value="470" >渤海大学</option>
                                        
                                            <option value="471" >辽宁工业大学</option>
                                        
                                            <option value="472" >辽宁医学院</option>
                                        
                                            <option value="473" >辽宁科技学院</option>
                                        
                                            <option value="474" >辽东学院</option>
                                        
                                            <option value="475" >鞍山市高等职业专科学校</option>
                                        
                                            <option value="476" >渤海船舶职业学院</option>
                                        
                                            <option value="477" >渤海大学文理学院</option>
                                        
                                            <option value="478" >朝阳师范高等专科学校</option>
                                        
                                            <option value="479" >大连东软信息学院</option>
                                        
                                            <option value="480" >大连翻译职业技术学院</option>
                                        
                                            <option value="481" >大连枫叶职业技术学院</option>
                                        
                                            <option value="482" >大连软件职业学院</option>
                                        
                                            <option value="483" >大连商务职业学院</option>
                                        
                                            <option value="484" >大连艺术职业学院</option>
                                        
                                            <option value="485" >大连职业技术学院</option>
                                        
                                            <option value="486" >抚顺师范高等专科学校</option>
                                        
                                            <option value="487" >抚顺职业技术学院</option>
                                        
                                            <option value="488" >阜新高等专科学校</option>
                                        
                                            <option value="489" >锦州商务职业学院</option>
                                        
                                            <option value="490" >锦州师范高等专科学校</option>
                                        
                                            <option value="491" >辽宁广播电视大学</option>
                                        
                                            <option value="492" >辽宁广告职业学院</option>
                                        
                                            <option value="493" >辽宁机电职业技术学院</option>
                                        
                                            <option value="494" >辽宁交通高等专科学校</option>
                                        
                                            <option value="495" >沈阳大学师范学院</option>
                                        
                                            <option value="496" >辽宁金融职业学院</option>
                                        
                                            <option value="497" >辽宁经济职业技术学院</option>
                                        
                                            <option value="498" >辽宁警官高等专科学校</option>
                                        
                                            <option value="499" >辽宁科技大学</option>
                                        
                                            <option value="500" >辽宁林业职业技术学院</option>
                                        
                                            <option value="501" >辽宁美术职业学院</option>
                                        
                                            <option value="502" >辽宁农业职业技术学院</option>
                                        
                                            <option value="503" >辽宁商贸职业学院</option>
                                        
                                            <option value="504" >辽宁石化职业技术学</option>
                                        
                                            <option value="505" >大连广播电视大学</option>
                                        
                                            <option value="506" >辽宁体育运动职业技术学院</option>
                                        
                                            <option value="507" >辽宁信息职业技术学院</option>
                                        
                                            <option value="508" >辽阳职业技术学院</option>
                                        
                                            <option value="509" >盘锦职业技术学院</option>
                                        
                                            <option value="510" >沈阳航空职业技术学院</option>
                                        
                                            <option value="511" >沈阳职业技术学院</option>
                                        
                                            <option value="512" >辽宁职业学院</option>
                                        
                                            <option value="513" >铁岭师范高等专科学校</option>
                                        
                                            <option value="514" >营口职业技术学院</option>
                                        
                                            <option value="515" >沈阳广播电视大学</option>
                                        
                                            <option value="516" >辽河石油职业技术学院</option>
                                        
                                            <option value="517" >沈阳航空工业学院北方科技学院</option>
                                        
                                            <option value="518" >沈阳理工大学应用技术学院</option>
                                        
                                            <option value="519" >大连工业大学艺术与信息工程学院</option>
                                        
                                            <option value="520" >大连交通大学信息工程学院</option>
                                        
                                            <option value="521" >沈阳建筑大学城市建设学院</option>
                                        
                                            <option value="522" >辽宁科技大学信息技术学院</option>
                                        
                                            <option value="523" >辽宁石油化工大学顺华能源学院</option>
                                        
                                            <option value="524" >沈阳化工学院科亚学院</option>
                                        
                                            <option value="525" >沈阳农业大学科学技术学院</option>
                                        
                                            <option value="526" >中国医科大学临床医药学院</option>
                                        
                                            <option value="527" >大连医科大学中山学院</option>
                                        
                                            <option value="528" >辽宁医学院医疗学院</option>
                                        
                                            <option value="529" >辽宁中医药大学杏林学院</option>
                                        
                                            <option value="530" >沈阳医学院何氏视觉科学学院</option>
                                        
                                            <option value="531" >辽宁师范大学海华学院</option>
                                        
                                            <option value="532" >东北财经大学津桥商学院</option>
                                        
                                            <option value="533" >沈阳师范大学渤海学</option>
                                        
                                            <option value="534" >大连理工大学城市学院</option>
                                        
                                            <option value="535" >沈阳大学科技工程学院</option>
                                        
                                            <option value="536" >辽宁装备制造职业技术学院</option>
                                        
                                            <option value="537" >辽宁文化艺术职工大学</option>
                                        
                                            <option value="538" >辽宁公安司法管理干部学院</option>
                                        
                                            <option value="539" >沈阳工业大学工程学院</option>
                                        
                                            <option value="540" >海军职工大学</option>
                                        
                                            <option value="541" >阜新矿务局职工大学</option>
                                        
                                            <option value="542" >沈阳机械工业职工大学</option>
                                        
                                            <option value="543" >阜新煤炭职工医学专科学校</option>
                                        
                                            <option value="544" >辽宁财贸职工大学</option>
                                        
                                            <option value="545" >大连市教育学院</option>
                                        
                                            <option value="546" >朝阳职工工学院</option>
                                        
                                            <option value="547" >鞍山钢铁集团公司职工大学</option>
                                        
                                            <option value="548" >抚顺石油化工公司职工大学</option>
                                        
                                            <option value="549" >辽宁兵器工业职工大学</option>
                                        
                                            <option value="550" >本溪钢铁公司职工工学院</option>
                                        
                                            <option value="551" >大连工人大学</option>
                                        
                                            <option value="552" >大连职工大学</option>
                                        
                                            <option value="553" >抚顺矿务局职工工学院</option>
                                        
                                            <option value="554" >辽宁地质工程职业学院</option>
                                        
                                            <option value="555" >辽宁中医药大学</option>
                                        
                                            <option value="556" >辽宁建筑职业技术学院</option>
                                        
                                            <option value="557" >沈阳国际科学技术专修学院</option>
                                        
                                            <option value="558" >辽宁商务职业学院</option>
                                        
                                            <option value="559" >辽宁财贸学院</option>
                                        
                                            <option value="560" >大连市工人大学</option>
                                        
                                            <option value="561" >辽宁广告设计学院</option>
                                        
                                            <option value="562" >沈阳工业大学（辽阳校区）</option>
                                        
                                            <option value="563" >辽宁省交通高等专科学校</option>
                                        
                                            <option value="564" >辽宁省城市建设职业技术学院</option>
                                        
                                            <option value="565" >辽宁对外经贸学院</option>
                                        
                                            <option value="566" >大连艺术学院</option>
                                        
                                            <option value="567" >辽宁税务高等专科学校</option>
                                        
                                            <option value="568" >抚顺高等专科学校'</option>
                                        
                                            <option value="569" >吉林大学工商管理学院</option>
                                        
                                            <option value="570" >辽宁省高等专科学校</option>
                                        
                                            <option value="571" >辽宁财政高等专科学校</option>
                                        
                                            <option value="572" >大连航运职业技术学院</option>
                                        
                                            <option value="573" >辽宁东方中医学院</option>
                                        
                                            <option value="574" >沈阳师范渤海学院</option>
                                        
                                            <option value="575" >辽宁公安司法干部管理学院</option>
                                        
                                            <option value="576" >中国人民解放军大连医学高等专科学校</option>
                                        
                                            <option value="577" >东北大学东软信息学院</option>
                                        
                                            <option value="578" >大连装备制造职业技术学院</option>
                                        
                                            <option value="579" >沈阳建筑大学</option>
                                        
                                            <option value="580" >大连东方外国语学院</option>
                                        
                                            <option value="581" >锦州医学院畜牧兽医学院</option>
                                        
                                            <option value="582" >辽宁铁道职业技术学院</option>
                                        
                                            <option value="583" >沈阳音乐学院附属大连音乐舞蹈学校</option>
                                        
                                            <option value="584" >南开大学</option>
                                        
                                            <option value="585" >天津大学</option>
                                        
                                            <option value="586" >河北工业大学</option>
                                        
                                            <option value="587" >天津师范大学</option>
                                        
                                            <option value="588" >天津工业大学</option>
                                        
                                            <option value="589" >天津科技大学</option>
                                        
                                            <option value="590" >天津理工大学</option>
                                        
                                            <option value="591" >天津医科大学</option>
                                        
                                            <option value="592" >天津中医药大学</option>
                                        
                                            <option value="593" >天津财经大学</option>
                                        
                                            <option value="594" >中国民航大学</option>
                                        
                                            <option value="595" >天津城市建设学院</option>
                                        
                                            <option value="596" >天津农学院</option>
                                        
                                            <option value="597" >天津工程师范大学</option>
                                        
                                            <option value="598" >天津外国语大学</option>
                                        
                                            <option value="599" >天津商业大学</option>
                                        
                                            <option value="600" >天津体育学院</option>
                                        
                                            <option value="601" >天津音乐学院</option>
                                        
                                            <option value="602" >天津美术学院</option>
                                        
                                            <option value="603" >民办天狮职业技术学院</option>
                                        
                                            <option value="604" >天津滨海职业技术学院</option>
                                        
                                            <option value="605" >天津渤海职业技术学院</option>
                                        
                                            <option value="606" >天津城市建设管理职业技术学院</option>
                                        
                                            <option value="607" >天津城市职业学院</option>
                                        
                                            <option value="608" >天津电子信息职业技术学院</option>
                                        
                                            <option value="609" >天津对外经济贸易职业学院</option>
                                        
                                            <option value="610" >天津工程职业技术学院</option>
                                        
                                            <option value="611" >天津工商职业技术学院</option>
                                        
                                            <option value="612" >天津工业职业技术学院</option>
                                        
                                            <option value="613" >天津工艺美术职业学院</option>
                                        
                                            <option value="614" >天津公安警官职业学院</option>
                                        
                                            <option value="615" >天津海运职业学院</option>
                                        
                                            <option value="616" >天津机电职业技术学院</option>
                                        
                                            <option value="617" >天津交通职业学院</option>
                                        
                                            <option value="618" >天津开发区职业技术学院</option>
                                        
                                            <option value="619" >天津青年职业学院</option>
                                        
                                            <option value="620" >天津轻工职业技术学院</option>
                                        
                                            <option value="621" >天津生物工程职业技术学院</option>
                                        
                                            <option value="622" >天津石油职业技术学院</option>
                                        
                                            <option value="623" >天津铁道职业技术学院</option>
                                        
                                            <option value="624" >天津现代职业技术学院</option>
                                        
                                            <option value="625" >天津冶金职业技术学院</option>
                                        
                                            <option value="626" >天津医学高等专科学校</option>
                                        
                                            <option value="627" >天津艺术职业学院</option>
                                        
                                            <option value="628" >天津职业大学</option>
                                        
                                            <option value="629" >天津中德职业技术学院</option>
                                        
                                            <option value="630" >天津市工会管理干部学院</option>
                                        
                                            <option value="631" >天津外国语学院滨海外事学院</option>
                                        
                                            <option value="632" >天津体育学院运动与文化艺术学院</option>
                                        
                                            <option value="633" >天津商学院宝德学院</option>
                                        
                                            <option value="634" >天津医科大学临床医学院</option>
                                        
                                            <option value="635" >北京科技大学天津学院</option>
                                        
                                            <option value="636" >天津师范大学津沽学院</option>
                                        
                                            <option value="637" >天津理工大学中环信息学院</option>
                                        
                                            <option value="638" >天津大学仁爱学院</option>
                                        
                                            <option value="639" >天津财经大学珠江学院</option>
                                        
                                            <option value="640" >南开大学滨海学院</option>
                                        
                                            <option value="641" >天津市职工经济技术大学</option>
                                        
                                            <option value="642" >天津市房地产局职工大学</option>
                                        
                                            <option value="643" >天津市政法管理干部学院</option>
                                        
                                            <option value="644" >天津市财贸管理干部学院</option>
                                        
                                            <option value="645" >天津市广播电视大学</option>
                                        
                                            <option value="646" >天津市管理干部学院</option>
                                        
                                            <option value="647" >天津市渤海化工职工学院</option>
                                        
                                            <option value="648" >天津市南开区职工大学</option>
                                        
                                            <option value="649" >天津市红桥区职工大学</option>
                                        
                                            <option value="650" >天津市建筑工程职工大学</option>
                                        
                                            <option value="651" >天津市河东区职工大学</option>
                                        
                                            <option value="652" >天津市河西区职工大学</option>
                                        
                                            <option value="653" >天津市和平区新华职工大学</option>
                                        
                                            <option value="654" >天津物资管理干部学院</option>
                                        
                                            <option value="655" >天津市海军工程大学</option>
                                        
                                            <option value="656" >中国旅游干部管理学院</option>
                                        
                                            <option value="657" >天津海运职业学校</option>
                                        
                                            <option value="658" >天津市国土资源和房屋职业学院</option>
                                        
                                            <option value="659" >天津轻工职业学院</option>
                                        
                                            <option value="660" >斯波泰克高级技工学院</option>
                                        
                                            <option value="661" >天津广播影视职业学院</option>
                                        
                                            <option value="662" >天津职业技术师范大学</option>
                                        
                                            <option value="663" >中国科学技术大学</option>
                                        
                                            <option value="664" >安徽大学</option>
                                        
                                            <option value="665" >合肥工业大学</option>
                                        
                                            <option value="666" >安徽医科大学</option>
                                        
                                            <option value="667" >安徽建筑工业学院</option>
                                        
                                            <option value="668" >安徽中医学院</option>
                                        
                                            <option value="669" >合肥学院</option>
                                        
                                            <option value="670" >安徽农业大学</option>
                                        
                                            <option value="671" >安徽工业大学</option>
                                        
                                            <option value="672" >安徽科技学院</option>
                                        
                                            <option value="673" >皖南医学院</option>
                                        
                                            <option value="674" >安徽师范大学</option>
                                        
                                            <option value="675" >安徽工程大学</option>
                                        
                                            <option value="676" >蚌埠医学院</option>
                                        
                                            <option value="677" >安徽财经大学</option>
                                        
                                            <option value="678" >阜阳师范学院</option>
                                        
                                            <option value="679" >淮南师范学院</option>
                                        
                                            <option value="680" >安徽理工大学</option>
                                        
                                            <option value="681" >淮北师范大学</option>
                                        
                                            <option value="682" >安庆师范学院</option>
                                        
                                            <option value="683" >铜陵学院</option>
                                        
                                            <option value="684" >皖西学院</option>
                                        
                                            <option value="685" >巢湖学院</option>
                                        
                                            <option value="686" >滁州学院</option>
                                        
                                            <option value="687" >宿州学院</option>
                                        
                                            <option value="688" >黄山学院</option>
                                        
                                            <option value="689" >新华学院</option>
                                        
                                            <option value="690" >蚌埠学院</option>
                                        
                                            <option value="691" >安徽财贸职业学院</option>
                                        
                                            <option value="692" >安徽城市管理职业学院</option>
                                        
                                            <option value="693" >安徽电气工程职业技术学院</option>
                                        
                                            <option value="694" >安徽电子信息职业技术学院</option>
                                        
                                            <option value="695" >安徽工贸职业技术学院</option>
                                        
                                            <option value="696" >安徽工商职业学院</option>
                                        
                                            <option value="697" >安徽工业经济职业技术学院</option>
                                        
                                            <option value="698" >安徽公安职业学院</option>
                                        
                                            <option value="699" >安徽广播影视职业技术学院</option>
                                        
                                            <option value="700" >安徽国防科技职业学院</option>
                                        
                                            <option value="701" >安徽国际商务职业学院</option>
                                        
                                            <option value="702" >安徽机电职业技术学院</option>
                                        
                                            <option value="703" >安徽交通职业技术学院</option>
                                        
                                            <option value="704" >安徽教育学院</option>
                                        
                                            <option value="705" >安徽经济管理学院</option>
                                        
                                            <option value="706" >安徽警官职业学院</option>
                                        
                                            <option value="707" >安徽林业职业技术学院</option>
                                        
                                            <option value="708" >安徽明星科技职业学院</option>
                                        
                                            <option value="709" >安徽商贸职业技术学院</option>
                                        
                                            <option value="710" >安徽审计职业学院</option>
                                        
                                            <option value="711" >安徽省三联职业技术学院</option>
                                        
                                            <option value="712" >安徽水利水电职业技术学院</option>
                                        
                                            <option value="713" >安徽体育运动职业技术学院</option>
                                        
                                            <option value="714" >安徽文达信息技术职业学院</option>
                                        
                                            <option value="715" >安徽新闻出版职业技术学院</option>
                                        
                                            <option value="716" >安徽冶金科技职业学院</option>
                                        
                                            <option value="717" >安徽医学高等专科学校</option>
                                        
                                            <option value="718" >安徽艺术职业学院</option>
                                        
                                            <option value="719" >安徽邮电职业技术学院</option>
                                        
                                            <option value="720" >安徽职业技术学院</option>
                                        
                                            <option value="721" >安徽中澳科技职业学院</option>
                                        
                                            <option value="722" >安徽中医药高等专科学校</option>
                                        
                                            <option value="723" >安庆职业技术学院</option>
                                        
                                            <option value="724" >蚌埠高等专科学校</option>
                                        
                                            <option value="725" >蚌埠职业教育专修学院</option>
                                        
                                            <option value="726" >亳州师范高等专科学校</option>
                                        
                                            <option value="727" >亳州职业技术学院</option>
                                        
                                            <option value="728" >巢湖职业技术学院</option>
                                        
                                            <option value="729" >池州学院</option>
                                        
                                            <option value="730" >池州职业技术学院</option>
                                        
                                            <option value="731" >滁州职业技术学院</option>
                                        
                                            <option value="732" >阜阳科技职业学院</option>
                                        
                                            <option value="733" >阜阳职业技术学院'</option>
                                        
                                            <option value="734" >合肥市万博科技职业学院</option>
                                        
                                            <option value="735" >合肥通用职业技术学院</option>
                                        
                                            <option value="736" >淮北职业技术学院</option>
                                        
                                            <option value="737" >淮南联合大学</option>
                                        
                                            <option value="738" >淮南职业技术学院</option>
                                        
                                            <option value="739" >六安职业技术学院</option>
                                        
                                            <option value="740" >马鞍山师范高等专科学校</option>
                                        
                                            <option value="741" >安徽外国语职业技术学院</option>
                                        
                                            <option value="742" >合肥经济技术职业学院</option>
                                        
                                            <option value="743" >宿州职业技术学院</option>
                                        
                                            <option value="744" >铜陵职业技术学院</option>
                                        
                                            <option value="745" >芜湖信息技术职业学院</option>
                                        
                                            <option value="746" >芜湖职业技术学院</option>
                                        
                                            <option value="747" >宣城职业技术学院</option>
                                        
                                            <option value="748" >安徽师范大学皖江学院</option>
                                        
                                            <option value="749" >合肥师范学院</option>
                                        
                                            <option value="750" >凤阳师范高等专科学校</option>
                                        
                                            <option value="751" >安庆医药高等专科学校</option>
                                        
                                            <option value="752" >安徽工业职业技术学院</option>
                                        
                                            <option value="753" >合肥幼儿师范高等专科学校</option>
                                        
                                            <option value="754" >蚌埠经济技术职业学院</option>
                                        
                                            <option value="755" >合肥财经职业学院</option>
                                        
                                            <option value="756" >徽商职业学院</option>
                                        
                                            <option value="757" >民办安徽旅游职业学院</option>
                                        
                                            <option value="758" >宿县地区教育学院</option>
                                        
                                            <option value="759" >淮南市职工大学</option>
                                        
                                            <option value="760" >合肥职工科技大学</option>
                                        
                                            <option value="761" >合肥市职工大学</option>
                                        
                                            <option value="762" >安徽省广播电视大学</option>
                                        
                                            <option value="763" >安徽绿海商务职业学院</option>
                                        
                                            <option value="764" >河海大学文天学院</option>
                                        
                                            <option value="765" >安徽涉外经济职业学院</option>
                                        
                                            <option value="766" >皖南农学院</option>
                                        
                                            <option value="767" >安徽蚌埠汽车管理学院</option>
                                        
                                            <option value="768" >阜阳师范学院</option>
                                        
                                            <option value="769" >安庆师范学院</option>
                                        
                                            <option value="770" >安徽新华电脑专修学院</option>
                                        
                                            <option value="771" >蚌埠坦克学院</option>
                                        
                                            <option value="772" >安徽合肥机电技师学院</option>
                                        
                                            <option value="773" >安徽技术师范学院</option>
                                        
                                            <option value="774" >宿州市联合大学</option>
                                        
                                            <option value="775" >安徽经济管理干部学院</option>
                                        
                                            <option value="776" >安徽工商职业技术学院</option>
                                        
                                            <option value="777" >南京大学</option>
                                        
                                            <option value="778" >河海大学</option>
                                        
                                            <option value="779" >南京师范大学</option>
                                        
                                            <option value="780" >南京理工大学</option>
                                        
                                            <option value="781" >东南大学</option>
                                        
                                            <option value="782" >南京航空航天大学</option>
                                        
                                            <option value="783" >南京财经大学</option>
                                        
                                            <option value="784" >南京医科大学</option>
                                        
                                            <option value="785" >南京工业大学</option>
                                        
                                            <option value="786" >南京农业大学</option>
                                        
                                            <option value="787" >南京林业大学</option>
                                        
                                            <option value="788" >南京邮电大学</option>
                                        
                                            <option value="789" >南京信息工程大学</option>
                                        
                                            <option value="790" >南京中医药大学</option>
                                        
                                            <option value="791" >南京工程学院</option>
                                        
                                            <option value="792" >金陵科技学院</option>
                                        
                                            <option value="793" >南京晓庄学院</option>
                                        
                                            <option value="794" >南京审计学院</option>
                                        
                                            <option value="795" >江苏警官学院</option>
                                        
                                            <option value="796" >南京体育学院</option>
                                        
                                            <option value="797" >南京艺术学院</option>
                                        
                                            <option value="798" >三江学院</option>
                                        
                                            <option value="799" >中国药科大学</option>
                                        
                                            <option value="800" >苏州大学</option>
                                        
                                            <option value="801" >江南大学</option>
                                        
                                            <option value="802" >无锡高等师范学校</option>
                                        
                                            <option value="803" >南京工程高等职业学校</option>
                                        
                                            <option value="804" >南京政治学院</option>
                                        
                                            <option value="805" >江苏技术师范学院</option>
                                        
                                            <option value="806" >淮安广播电视大学</option>
                                        
                                            <option value="807" >徐州经贸高等职业学校</option>
                                        
                                            <option value="808" >江苏师范大学</option>
                                        
                                            <option value="809" >徐州师范大学连云港校区</option>
                                        
                                            <option value="810" >江苏科技大学张家港校区</option>
                                        
                                            <option value="811" >江苏建筑职业技术学院</option>
                                        
                                            <option value="812" >无锡旅游商贸高等职业技术学校</option>
                                        
                                            <option value="813" >无锡技师学院</option>
                                        
                                            <option value="814" >江苏京华科教专修学院</option>
                                        
                                            <option value="815" >盐城高等师范学校</option>
                                        
                                            <option value="816" >苏州教育学院</option>
                                        
                                            <option value="817" >徐州医学院</option>
                                        
                                            <option value="818" >中国矿业大学</option>
                                        
                                            <option value="819" >扬州大学</option>
                                        
                                            <option value="820" >江苏大学</option>
                                        
                                            <option value="821" >江苏科技大学</option>
                                        
                                            <option value="822" >南通大学</option>
                                        
                                            <option value="823" >常州大学</option>
                                        
                                            <option value="824" >常州工学院</option>
                                        
                                            <option value="825" >江苏技术师范学院</option>
                                        
                                            <option value="826" >淮阴工学院</option>
                                        
                                            <option value="827" >淮阴师范学院</option>
                                        
                                            <option value="828" >淮海工学院</option>
                                        
                                            <option value="829" >盐城工学院</option>
                                        
                                            <option value="830" >盐城师范学院</option>
                                        
                                            <option value="831" >常熟理工学院</option>
                                        
                                            <option value="832" >常州纺织服装职业技术学院</option>
                                        
                                            <option value="833" >常州工程职业技术学院</option>
                                        
                                            <option value="834" >常州机电职业技术学院</option>
                                        
                                            <option value="835" >常州轻工职业技术学院</option>
                                        
                                            <option value="836" >常州信息职业技术学院</option>
                                        
                                            <option value="837" >硅湖职业技术学院</option>
                                        
                                            <option value="838" >河海大学常州校区</option>
                                        
                                            <option value="839" >淮安信息职业技术学院</option>
                                        
                                            <option value="840" >建东职业技术学院</option>
                                        
                                            <option value="841" >健雄职业技术学院</option>
                                        
                                            <option value="842" >江海职业技术学院</option>
                                        
                                            <option value="843" >江南影视艺术职业学院</option>
                                        
                                            <option value="844" >江苏财经职业技术学院</option>
                                        
                                            <option value="845" >江苏海事职业技术学院</option>
                                        
                                            <option value="846" >江苏经贸职业技术学院</option>
                                        
                                            <option value="847" >江苏联合职业技术学院</option>
                                        
                                            <option value="848" >江苏农林职业技术学院</option>
                                        
                                            <option value="849" >江苏食品职业技术学院</option>
                                        
                                            <option value="850" >江苏信息职业技术学院</option>
                                        
                                            <option value="851" >江苏畜牧兽医职业技术学院</option>
                                        
                                            <option value="852" >江阴职业技术学院</option>
                                        
                                            <option value="853" >金肯职业技术学院</option>
                                        
                                            <option value="854" >金山职业技术学院</option>
                                        
                                            <option value="855" >九州职业技术学院</option>
                                        
                                            <option value="856" >昆山登云科技职业学院</option>
                                        
                                            <option value="857" >连云港师范高等专科学校</option>
                                        
                                            <option value="858" >连云港职业技术学院</option>
                                        
                                            <option value="859" >民办明达职业技术学院</option>
                                        
                                            <option value="860" >南京动力高等专科学校</option>
                                        
                                            <option value="861" >南京工业职业技术学院</option>
                                        
                                            <option value="862" >南京化工职业技术学院</option>
                                        
                                            <option value="863" >南京交通职业技术学院</option>
                                        
                                            <option value="864" >南京人口管理干部学院</option>
                                        
                                            <option value="865" >南京森林警察学院</option>
                                        
                                            <option value="866" >南京视觉艺术职业学院</option>
                                        
                                            <option value="867" >南京特殊教育职业技术学院</option>
                                        
                                            <option value="868" >南京铁道职业技术学院</option>
                                        
                                            <option value="869" >南京信息职业技术学院</option>
                                        
                                            <option value="870" >南通纺织职业技术学院</option>
                                        
                                            <option value="871" >南通航运职业技术学院</option>
                                        
                                            <option value="872" >南通农业职业技术学院</option>
                                        
                                            <option value="873" >南通职业大学</option>
                                        
                                            <option value="874" >培尔职业技术学院</option>
                                        
                                            <option value="875" >沙洲职业工学院</option>
                                        
                                            <option value="876" >苏州港大思培科技职业学院</option>
                                        
                                            <option value="877" >苏州工业园区职业技术学院</option>
                                        
                                            <option value="878" >苏州工业职业技术学院</option>
                                        
                                            <option value="879" >苏州工艺美术职业技术学院</option>
                                        
                                            <option value="880" >苏州经贸职业技术学院</option>
                                        
                                            <option value="881" >苏州科技大学</option>
                                        
                                            <option value="882" >苏州农业职业技术学院</option>
                                        
                                            <option value="883" >苏州托普信息职业技术学院</option>
                                        
                                            <option value="884" >苏州职业大学</option>
                                        
                                            <option value="885" >宿迁学院</option>
                                        
                                            <option value="886" >泰州师范高等专科学校</option>
                                        
                                            <option value="887" >泰州职业技术学院</option>
                                        
                                            <option value="888" >无锡城市职业技术学院</option>
                                        
                                            <option value="889" >无锡工艺职业技术学院</option>
                                        
                                            <option value="890" >无锡科技职业学院</option>
                                        
                                            <option value="891" >无锡南洋职业技术学院</option>
                                        
                                            <option value="892" >无锡轻工大学</option>
                                        
                                            <option value="893" >无锡商业职业技术学院</option>
                                        
                                            <option value="894" >无锡职业技术学院</option>
                                        
                                            <option value="895" >徐州工业职业技术学院</option>
                                        
                                            <option value="896" >徐州广播电视大学</option>
                                        
                                            <option value="897" >江苏建筑学院</option>
                                        
                                            <option value="898" >徐州教育学院</option>
                                        
                                            <option value="899" >徐州工程学院</option>
                                        
                                            <option value="900" >炎黄职业技术学院</option>
                                        
                                            <option value="901" >盐城纺织职业技术学院</option>
                                        
                                            <option value="902" >扬州工业职业技术学院</option>
                                        
                                            <option value="903" >扬州环境资源管理学院</option>
                                        
                                            <option value="904" >扬州环境资源职业技术学院</option>
                                        
                                            <option value="905" >扬州教育学院</option>
                                        
                                            <option value="906" >扬州职业大学</option>
                                        
                                            <option value="907" >应天职业技术学院</option>
                                        
                                            <option value="908" >镇江市高等专科学校</option>
                                        
                                            <option value="909" >正德职业技术学院</option>
                                        
                                            <option value="910" >中国传媒大学南广学院</option>
                                        
                                            <option value="911" >钟山职业技术学院</option>
                                        
                                            <option value="912" >紫琅职业技术学院</option>
                                        
                                            <option value="913" >江苏广播电视大学</option>
                                        
                                            <option value="914" >江苏教育学院</option>
                                        
                                            <option value="915" >徐州师范高等专科学校</option>
                                        
                                            <option value="916" >江苏省省级机关管理干部学院</option>
                                        
                                            <option value="917" >江苏职工医科大学</option>
                                        
                                            <option value="918" >苏州卫生职业技术学院</option>
                                        
                                            <option value="919" >盐城卫生职业技术学院</option>
                                        
                                            <option value="920" >金陵旅馆管理干部学院</option>
                                        
                                            <option value="921" >南京市广播电视大学</option>
                                        
                                            <option value="922" >南京机电职业技术学院</option>
                                        
                                            <option value="923" >江苏城市职业学院</option>
                                        
                                            <option value="924" >苏州高博软件技术职业学院</option>
                                        
                                            <option value="925" >南京旅游职业学院</option>
                                        
                                            <option value="926" >空军第一职工大学</option>
                                        
                                            <option value="927" >江苏省青年管理干部学院</option>
                                        
                                            <option value="928" >江苏省广播电视大学</option>
                                        
                                            <option value="929" >南京金陵旅馆管理干部学院</option>
                                        
                                            <option value="930" >南通市工人业余大学</option>
                                        
                                            <option value="931" >常州市职工大学</option>
                                        
                                            <option value="932" >南京市职工大学</option>
                                        
                                            <option value="933" >南京联合职工大学</option>
                                        
                                            <option value="934" >江苏电力职工大学</option>
                                        
                                            <option value="935" >宿迁职业技术学院</option>
                                        
                                            <option value="936" >南京工程兵工程学校</option>
                                        
                                            <option value="937" >南京理工大学泰州科技学院</option>
                                        
                                            <option value="938" >东南大学成贤学院</option>
                                        
                                            <option value="939" >南京理工大学紫金学院</option>
                                        
                                            <option value="940" >南京航空航天大学金城学院</option>
                                        
                                            <option value="941" >南京财经大学红山学院</option>
                                        
                                            <option value="942" >南京师范大学泰州学院</option>
                                        
                                            <option value="943" >南京审计学院金审学院</option>
                                        
                                            <option value="944" >南通大学杏林学院</option>
                                        
                                            <option value="945" >江苏工业学院怀德学院</option>
                                        
                                            <option value="946" >江苏科技大学南徐学院</option>
                                        
                                            <option value="947" >南京邮电大学通达学院</option>
                                        
                                            <option value="948" >徐州师范大学科文学院</option>
                                        
                                            <option value="949" >扬州大学广陵学院</option>
                                        
                                            <option value="950" >江苏大学京江学院</option>
                                        
                                            <option value="951" >苏州科技学院天平学院</option>
                                        
                                            <option value="952" >苏州大学应用技术学院</option>
                                        
                                            <option value="953" >苏州大学文正学院</option>
                                        
                                            <option value="954" >南京信息工程大学滨江学院</option>
                                        
                                            <option value="955" >南京中医药大学翰林学院</option>
                                        
                                            <option value="956" >南京师范大学中北学院</option>
                                        
                                            <option value="957" >南京工业大学浦江学院</option>
                                        
                                            <option value="958" >江南大学太湖学院</option>
                                        
                                            <option value="959" >南通体臣卫生学校</option>
                                        
                                            <option value="960" >南通市广播电视大学</option>
                                        
                                            <option value="961" >江苏省南通商贸高等职业学校</option>
                                        
                                            <option value="962" >南通高等师范学校</option>
                                        
                                            <option value="963" >如皋高等师范学校</option>
                                        
                                            <option value="964" >南通市中等专业学校</option>
                                        
                                            <option value="965" >太湖创意职业技术学院</option>
                                        
                                            <option value="966" >西交利物浦大学</option>
                                        
                                            <option value="967" >南京中天专修学院</option>
                                        
                                            <option value="968" >江苏苏州广播电视大学</option>
                                        
                                            <option value="969" >南京金陵科技专修学院</option>
                                        
                                            <option value="970" >江苏科技经贸专修学院</option>
                                        
                                            <option value="971" >江苏省无锡交通高等职业技术学校</option>
                                        
                                            <option value="972" >南京新华电脑专修学院</option>
                                        
                                            <option value="973" >河海大学继续教育学院</option>
                                        
                                            <option value="974" >江苏城镇建设学校</option>
                                        
                                            <option value="975" >南京航天管理干部学院</option>
                                        
                                            <option value="976" >中国人民大学国际学院</option>
                                        
                                            <option value="977" >徐州幼儿高等师范学校</option>
                                        
                                            <option value="978" >江苏技术师范东方学院</option>
                                        
                                            <option value="979" >南京高等职业技术学校</option>
                                        
                                            <option value="980" >江苏省司法警官高等职业学校</option>
                                        
                                            <option value="981" >苏州大学宿迁学院</option>
                                        
                                            <option value="982" >徐州医学院华方学院</option>
                                        
                                            <option value="983" >中国矿业大学徐海学院</option>
                                        
                                            <option value="984" >苏州信息职业技术学院</option>
                                        
                                            <option value="985" >江苏东南科技专修学院</option>
                                        
                                            <option value="986" >盐城生物工程高等职业技术学院</option>
                                        
                                            <option value="987" >江苏电大通州学院</option>
                                        
                                            <option value="988" >南京大学金陵学院</option>
                                        
                                            <option value="989" >运河高等师范学校</option>
                                        
                                            <option value="990" >南京东方文理研修学院</option>
                                        
                                            <option value="991" >徐州财经高等职业技术学校</option>
                                        
                                            <option value="992" >浙江大学</option>
                                        
                                            <option value="993" >浙江理工大学</option>
                                        
                                            <option value="994" >浙江工业大学</option>
                                        
                                            <option value="995" >杭州电子科技大学</option>
                                        
                                            <option value="996" >浙江中医药大学</option>
                                        
                                            <option value="997" >浙江工商大学</option>
                                        
                                            <option value="998" >中国计量学院</option>
                                        
                                            <option value="999" >浙江科技学院</option>
                                        
                                            <option value="1000" >浙江农林大学</option>
                                        
                                            <option value="1001" >杭州师范大学</option>
                                        
                                            <option value="1002" >浙江传媒学院</option>
                                        
                                            <option value="1003" >浙江财经大学</option>
                                        
                                            <option value="1004" >中国美术学院</option>
                                        
                                            <option value="1005" >浙江树人大学</option>
                                        
                                            <option value="1006" >浙江农业商贸职业学院</option>
                                        
                                            <option value="1007" >浙江三联专修学院</option>
                                        
                                            <option value="1008" >浙江三联专修学院</option>
                                        
                                            <option value="1009" >杭州之江专修学院</option>
                                        
                                            <option value="1010" >上海杉达学院嘉善光彪学院</option>
                                        
                                            <option value="1011" >浙江吉利技师学院</option>
                                        
                                            <option value="1012" >浙江宇翔外国语专修学院</option>
                                        
                                            <option value="1013" >宁波大学</option>
                                        
                                            <option value="1014" >宁波工程学院</option>
                                        
                                            <option value="1015" >浙江万里学院</option>
                                        
                                            <option value="1016" >宁波诺丁汉大学</option>
                                        
                                            <option value="1017" >嘉兴学院</option>
                                        
                                            <option value="1018" >浙江海洋大学</option>
                                        
                                            <option value="1019" >温州大学</option>
                                        
                                            <option value="1020" >温州医学院</option>
                                        
                                            <option value="1021" >湖州师范学院</option>
                                        
                                            <option value="1022" >台州学院</option>
                                        
                                            <option value="1023" >绍兴文理学院</option>
                                        
                                            <option value="1024" >浙江丽水学院</option>
                                        
                                            <option value="1025" >浙江师范大学</option>
                                        
                                            <option value="1026" >长征职业技术学院</option>
                                        
                                            <option value="1027" >公安海警学院</option>
                                        
                                            <option value="1028" >杭州万向职业技术学院</option>
                                        
                                            <option value="1029" >杭州职业技术学院</option>
                                        
                                            <option value="1030" >湖州职业技术学院</option>
                                        
                                            <option value="1031" >嘉兴职业技术学院</option>
                                        
                                            <option value="1032" >金华职业技术学院</option>
                                        
                                            <option value="1033" >浙江科技学院求是学院</option>
                                        
                                            <option value="1034" >丽水职业技术学院</option>
                                        
                                            <option value="1035" >宁波城市职业技术学院</option>
                                        
                                            <option value="1036" >宁波大红鹰学院</option>
                                        
                                            <option value="1037" >宁波大学科技学院</option>
                                        
                                            <option value="1038" >宁波天一职业技术学院</option>
                                        
                                            <option value="1039" >宁波职业技术学院</option>
                                        
                                            <option value="1040" >衢州职业技术学院</option>
                                        
                                            <option value="1041" >绍兴职业技术学院</option>
                                        
                                            <option value="1042" >浙江越秀外国语学院</option>
                                        
                                            <option value="1043" >台州职业技术学院</option>
                                        
                                            <option value="1044" >温州职业技术学院</option>
                                        
                                            <option value="1045" >义乌工商职业技术学院</option>
                                        
                                            <option value="1046" >浙江大学城市学院</option>
                                        
                                            <option value="1047" >浙江大学宁波理工学院</option>
                                        
                                            <option value="1048" >浙江东方职业技术学院</option>
                                        
                                            <option value="1049" >浙江纺织服装职业技术学院</option>
                                        
                                            <option value="1050" >浙江工贸职业技术学院</option>
                                        
                                            <option value="1051" >浙江工商职业技术学院</option>
                                        
                                            <option value="1052" >浙江工业职业技术学院</option>
                                        
                                            <option value="1053" >浙江警察学院</option>
                                        
                                            <option value="1054" >浙江广厦建设职业技术学院</option>
                                        
                                            <option value="1055" >浙江机电职业技术学院</option>
                                        
                                            <option value="1056" >浙江建设职业技术学院</option>
                                        
                                            <option value="1057" >浙江交通职业技术学院</option>
                                        
                                            <option value="1058" >浙江外国语学院</option>
                                        
                                            <option value="1059" >浙江金融职业学院</option>
                                        
                                            <option value="1060" >浙江经济职业技术学院</option>
                                        
                                            <option value="1061" >浙江经贸职业技术学院</option>
                                        
                                            <option value="1062" >浙江警官职业学院</option>
                                        
                                            <option value="1063" >浙江旅游职业学院</option>
                                        
                                            <option value="1064" >浙江商业职业技术学院</option>
                                        
                                            <option value="1065" >浙江水利水电专科学校</option>
                                        
                                            <option value="1066" >浙江医学高等专科学校</option>
                                        
                                            <option value="1067" >浙江医药高等专科学校</option>
                                        
                                            <option value="1068" >浙江艺术职业学院</option>
                                        
                                            <option value="1069" >浙江育英职业技术学院</option>
                                        
                                            <option value="1070" >浙江电力职业技术学院</option>
                                        
                                            <option value="1071" >嘉兴南洋职业技术学院</option>
                                        
                                            <option value="1072" >浙江国际海运职业技术学校</option>
                                        
                                            <option value="1073" >衢州学院</option>
                                        
                                            <option value="1074" >浙江国际海运职业技术学院</option>
                                        
                                            <option value="1075" >温州市工人业余大学</option>
                                        
                                            <option value="1076" >宁波市广播电视大学</option>
                                        
                                            <option value="1077" >浙江嘉兴教育学院</option>
                                        
                                            <option value="1078" >浙江经济管理职工大学</option>
                                        
                                            <option value="1079" >浙江省广播电视大学</option>
                                        
                                            <option value="1080" >金华教育学院</option>
                                        
                                            <option value="1081" >宁波教育学院</option>
                                        
                                            <option value="1082" >杭州成人科技大学</option>
                                        
                                            <option value="1083" >杭州市工人业余大学</option>
                                        
                                            <option value="1084" >浙江省省级机关职工业余大学</option>
                                        
                                            <option value="1085" >浙江同济科技职业学院</option>
                                        
                                            <option value="1086" >浙江邮电职业技术学院</option>
                                        
                                            <option value="1087" >浙江体育职业技术学院</option>
                                        
                                            <option value="1088" >台州科技职业学院</option>
                                        
                                            <option value="1089" >温州科技职业学院</option>
                                        
                                            <option value="1090" >浙江理工大学成教学院北景园分院</option>
                                        
                                            <option value="1091" >同济大学浙江学院</option>
                                        
                                            <option value="1092" >浙江横店影视职业学院</option>
                                        
                                            <option value="1093" >杭州科技职业技术学院</option>
                                        
                                            <option value="1094" >浙江汽车职业技术学院</option>
                                        
                                            <option value="1095" >中国美术学院艺术设计职业技术学院</option>
                                        
                                            <option value="1096" >金华广播电视大学</option>
                                        
                                            <option value="1097" >杭州老和山职业技术学院</option>
                                        
                                            <option value="1098" >杭州师范大学钱江学院</option>
                                        
                                            <option value="1099" >浙江新世纪经贸专修学院</option>
                                        
                                            <option value="1100" >杭州人文专修学院</option>
                                        
                                            <option value="1101" >上海财经大学浙江学院</option>
                                        
                                            <option value="1102" >浙江师范大学行知学院</option>
                                        
                                            <option value="1103" >浙江理工大学科技与艺术学院</option>
                                        
                                            <option value="1104" >浙江工业大学之江学院</option>
                                        
                                            <option value="1105" >杭州江南专修学院</option>
                                        
                                            <option value="1106" >江南专修学院</option>
                                        
                                            <option value="1107" >西藏大学</option>
                                        
                                            <option value="1108" >西藏藏医学院</option>
                                        
                                            <option value="1109" >西藏民族学院</option>
                                        
                                            <option value="1110" >拉萨师范高等专科学校</option>
                                        
                                            <option value="1111" >西藏警官高等专科学校</option>
                                        
                                            <option value="1112" >西藏职业技术学院</option>
                                        
                                            <option value="1113" >西藏民院</option>
                                        
                                            <option value="1114" >香港大学</option>
                                        
                                            <option value="1115" >香港中文大学</option>
                                        
                                            <option value="1116" >香港科技大学</option>
                                        
                                            <option value="1117" >香港理工大学</option>
                                        
                                            <option value="1118" >香港城市大学</option>
                                        
                                            <option value="1119" >香港浸会大学</option>
                                        
                                            <option value="1120" >香港岭南大学</option>
                                        
                                            <option value="1121" >香港国际工商管理学院</option>
                                        
                                            <option value="1122" >香港珠海学院</option>
                                        
                                            <option value="1123" >香港教育学院</option>
                                        
                                            <option value="1124" >香港树仁大学</option>
                                        
                                            <option value="1125" >香港演艺学院</option>
                                        
                                            <option value="1126" >澳门大学</option>
                                        
                                            <option value="1127" >澳门理工学院</option>
                                        
                                            <option value="1128" >澳门科技大学</option>
                                        
                                            <option value="1129" >澳门旅游学院</option>
                                        
                                            <option value="1130" >澳门镜湖护理学院</option>
                                        
                                            <option value="1131" >澳门城市大学</option>
                                        
                                            <option value="1132" >天主教辅仁大学</option>
                                        
                                            <option value="1133" >长庚大学</option>
                                        
                                            <option value="1134" >私立义守大学</option>
                                        
                                            <option value="1135" >东海大学</option>
                                        
                                            <option value="1136" >国立台湾大学</option>
                                        
                                            <option value="1137" >国立中正大学</option>
                                        
                                            <option value="1138" >国立台湾艺术大学</option>
                                        
                                            <option value="1139" >国立清华大学</option>
                                        
                                            <option value="1140" >国立中山大学</option>
                                        
                                            <option value="1141" >国立政治大学</option>
                                        
                                            <option value="1142" >国立成功大学</option>
                                        
                                            <option value="1143" >国立中央大学</option>
                                        
                                            <option value="1144" >国立阳明大学</option>
                                        
                                            <option value="1145" >国立东华大学</option>
                                        
                                            <option value="1146" >国立中兴大学</option>
                                        
                                            <option value="1147" >国立台湾师范大学</option>
                                        
                                            <option value="1148" >国立台湾海洋大学</option>
                                        
                                            <option value="1149" >国立高雄大学</option>
                                        
                                            <option value="1150" >国立嘉义大学</option>
                                        
                                            <option value="1151" >国立台湾科技大学</option>
                                        
                                            <option value="1152" >国立空中大学</option>
                                        
                                            <option value="1153" >国立台北大学</option>
                                        
                                            <option value="1154" >国立高雄师范大学</option>
                                        
                                            <option value="1155" >国立联合大学</option>
                                        
                                            <option value="1156" >国立暨南国际大学</option>
                                        
                                            <option value="1157" >国立屏东科技大学</option>
                                        
                                            <option value="1158" >国立彰化师范大学</option>
                                        
                                            <option value="1159" >国立台北科技大学</option>
                                        
                                            <option value="1160" >国立台东大学</option>
                                        
                                            <option value="1161" >国立宜蓝大学</option>
                                        
                                            <option value="1162" >国立台北艺术大学</option>
                                        
                                            <option value="1163" >国立云林科技大学</option>
                                        
                                            <option value="1164" >国立台南大学</option>
                                        
                                            <option value="1165" >国立虎尾科技大学</option>
                                        
                                            <option value="1166" >国立花莲教育大学</option>
                                        
                                            <option value="1167" >国立高雄第一科技大学</option>
                                        
                                            <option value="1168" >国立屏东教育大学</option>
                                        
                                            <option value="1169" >国立新竹教育大学</option>
                                        
                                            <option value="1170" >国立澎湖科技大学</option>
                                        
                                            <option value="1171" >建国科技大学</option>
                                        
                                            <option value="1172" >国立台南艺术大学</option>
                                        
                                            <option value="1173" >国立高雄应用科技大学</option>
                                        
                                            <option value="1174" >国立高雄海洋科技大学</option>
                                        
                                            <option value="1175" >国立勤益科技大学</option>
                                        
                                            <option value="1176" >东吴大学</option>
                                        
                                            <option value="1177" >国立交通大学</option>
                                        
                                            <option value="1178" >逢甲大学</option>
                                        
                                            <option value="1179" >高雄医学大学</option>
                                        
                                            <option value="1180" >淡江大学</option>
                                        
                                            <option value="1181" >辅仁大学</option>
                                        
                                            <option value="1182" >台湾静宜大学</option>
                                        
                                            <option value="1183" >中国文化大学</option>
                                        
                                            <option value="1184" >育达科技大学</option>
                                        
                                            <option value="1185" >世新大学</option>
                                        
                                            <option value="1186" >铭传大学</option>
                                        
                                            <option value="1187" >国立台北教育大学</option>
                                        
                                            <option value="1188" >台湾亚洲大学</option>
                                        
                                            <option value="1189" >中原大学</option>
                                        
                                            <option value="1190" >台湾实践大学</option>
                                        
                                            <option value="1191" >景文科技大学</option>
                                        
                                            <option value="1192" >台湾东海大学</option>
                                        
                                            <option value="1193" >清云科技大学</option>
                                        
                                            <option value="1194" >台湾健行科技大学</option>
                                        
                                            <option value="1195" >朝阳科技大学</option>
                                        
                                            <option value="1196" >台湾元智大学</option>
                                        
                                            <option value="1197" >元培科技大学</option>
                                        
                                            <option value="1198" >私立中国医药大学</option>
                                        
                                            <option value="1199" >台湾明志科技大学</option>
                                        
                                            <option value="1200" >岭东科技大学</option>
                                        
                                            <option value="1201" >玄奘大学</option>
                                        
                                            <option value="1202" >圣约翰科技大学</option>
                                        
                                            <option value="1203" >文藻外语学院</option>
                                        
                                            <option value="1204" >大同大学</option>
                                        
                                            <option value="1205" >台湾昆山科技大学</option>
                                        
                                            <option value="1206" >海南大学</option>
                                        
                                            <option value="1207" >海南医学院</option>
                                        
                                            <option value="1208" >海南师范大学</option>
                                        
                                            <option value="1209" >华南热带农业大学</option>
                                        
                                            <option value="1210" >琼州大学</option>
                                        
                                            <option value="1211" >海口经济学院</option>
                                        
                                            <option value="1212" >海南经贸职业技术学院</option>
                                        
                                            <option value="1213" >海南软件职业技术学院</option>
                                        
                                            <option value="1214" >海南外国语职业学院</option>
                                        
                                            <option value="1215" >海南工商职业学院</option>
                                        
                                            <option value="1216" >海南政法职业学院</option>
                                        
                                            <option value="1217" >海南职业技术学院</option>
                                        
                                            <option value="1218" >琼台师范高等专科学校</option>
                                        
                                            <option value="1219" >三亚航空旅游职业学院</option>
                                        
                                            <option value="1220" >三亚卓达旅游职业学院</option>
                                        
                                            <option value="1221" >海南大学三亚学院</option>
                                        
                                            <option value="1222" >三亚城市职业学院</option>
                                        
                                            <option value="1223" >海南科技职业学院</option>
                                        
                                            <option value="1224" >三亚理工职业学院</option>
                                        
                                            <option value="1225" >青海大学</option>
                                        
                                            <option value="1226" >青海师范大学</option>
                                        
                                            <option value="1227" >青海民族大学</option>
                                        
                                            <option value="1228" >青海民族师范高等专科学校</option>
                                        
                                            <option value="1229" >青海财经职业学院</option>
                                        
                                            <option value="1230" >青海畜牧兽医职业技术学院</option>
                                        
                                            <option value="1231" >青海建筑职业技术学院</option>
                                        
                                            <option value="1232" >青海师范高等专科学校</option>
                                        
                                            <option value="1233" >青海警官职业学院</option>
                                        
                                            <option value="1234" >青海交通职业技术学院</option>
                                        
                                            <option value="1235" >青海卫生职业技术学院</option>
                                        
                                            <option value="1236" >新疆大学</option>
                                        
                                            <option value="1237" >新疆农业大学</option>
                                        
                                            <option value="1238" >新疆医科大学</option>
                                        
                                            <option value="1239" >新疆师范大学</option>
                                        
                                            <option value="1240" >新疆财经大学</option>
                                        
                                            <option value="1241" >新疆艺术学院</option>
                                        
                                            <option value="1242" >伊犁师范奎屯校区</option>
                                        
                                            <option value="1243" >石河子大学</option>
                                        
                                            <option value="1244" >塔里木大学</option>
                                        
                                            <option value="1245" >喀什师范学院</option>
                                        
                                            <option value="1246" >伊犁师范学院</option>
                                        
                                            <option value="1247" >昌吉学院</option>
                                        
                                            <option value="1248" >阿克苏职业技术学院</option>
                                        
                                            <option value="1249" >巴音郭楞职业技术学院</option>
                                        
                                            <option value="1250" >昌吉职业技术学院</option>
                                        
                                            <option value="1251" >和田师范专科学校</option>
                                        
                                            <option value="1252" >克拉玛依职业技术学院</option>
                                        
                                            <option value="1253" >乌鲁木齐职业大学</option>
                                        
                                            <option value="1254" >新疆兵团警官高等专科学校</option>
                                        
                                            <option value="1255" >新疆工业高等专科学校</option>
                                        
                                            <option value="1256" >新疆机电职业技术学院</option>
                                        
                                            <option value="1257" >新疆建设职业技术学院</option>
                                        
                                            <option value="1258" >新疆交通职业技术学院</option>
                                        
                                            <option value="1259" >新疆警官高等专科学校</option>
                                        
                                            <option value="1260" >新疆能源职业技术学院</option>
                                        
                                            <option value="1261" >新疆农业职业技术学院</option>
                                        
                                            <option value="1262" >新疆轻工职业技术学院</option>
                                        
                                            <option value="1263" >新疆石河子职业技术学院</option>
                                        
                                            <option value="1264" >新疆天山职业技术学院</option>
                                        
                                            <option value="1265" >新疆维吾尔医学专科学校</option>
                                        
                                            <option value="1266" >新疆现代职业技术学院</option>
                                        
                                            <option value="1267" >伊犁职业技术学院</option>
                                        
                                            <option value="1268" >新疆科信学院</option>
                                        
                                            <option value="1269" >新疆职业大学</option>
                                        
                                            <option value="1270" >新疆石油学院</option>
                                        
                                            <option value="1271" >新疆大学科学技术学院</option>
                                        
                                            <option value="1272" >新疆农业大学科学技术学院</option>
                                        
                                            <option value="1273" >新疆财经大学商务学院</option>
                                        
                                            <option value="1274" >新疆医科大学厚博学院</option>
                                        
                                            <option value="1275" >石河子大学科技学院</option>
                                        
                                            <option value="1276" >新疆教育学院</option>
                                        
                                            <option value="1277" >新疆政法学院</option>
                                        
                                            <option value="1278" >新疆广播电视大学</option>
                                        
                                            <option value="1279" >宁夏大学</option>
                                        
                                            <option value="1280" >北方民族大学</option>
                                        
                                            <option value="1281" >宁夏医科大学</option>
                                        
                                            <option value="1282" >宁夏理工大学</option>
                                        
                                            <option value="1283" >吴忠职业技术学院</option>
                                        
                                            <option value="1284" >宁夏职业技术学院</option>
                                        
                                            <option value="1285" >宁夏财经职业技术学院</option>
                                        
                                            <option value="1286" >宁夏司法警官职业学院</option>
                                        
                                            <option value="1287" >宁夏师范学院</option>
                                        
                                            <option value="1288" >宁夏工业职业学院</option>
                                        
                                            <option value="1289" >宁夏工商职业技术学院</option>
                                        
                                            <option value="1290" >宁夏建设职业技术学院</option>
                                        
                                            <option value="1291" >银川科技职业学院（银川大学）</option>
                                        
                                            <option value="1292" >宁夏大学新华学院</option>
                                        
                                            <option value="1293" >中国矿业大学银川学院</option>
                                        
                                            <option value="1294" >内蒙古大学</option>
                                        
                                            <option value="1295" >内蒙古工业大学</option>
                                        
                                            <option value="1296" >内蒙古农业大学</option>
                                        
                                            <option value="1297" >内蒙古师范大学</option>
                                        
                                            <option value="1298" >内蒙古医科大学</option>
                                        
                                            <option value="1299" >内蒙古财经大学</option>
                                        
                                            <option value="1300" >中央党校函授学院内蒙古分院</option>
                                        
                                            <option value="1301" >中共内蒙古自治区委员会党校</option>
                                        
                                            <option value="1302" >内蒙古自治区行政学院</option>
                                        
                                            <option value="1303" >内蒙古大学创业学院</option>
                                        
                                            <option value="1304" >内蒙古科技大学包头医学院</option>
                                        
                                            <option value="1305" >内蒙古师范大学鸿德学院</option>
                                        
                                            <option value="1306" >内蒙古科技大学</option>
                                        
                                            <option value="1307" >内蒙古民族大学</option>
                                        
                                            <option value="1308" >赤峰学院</option>
                                        
                                            <option value="1309" >呼伦贝尔学院</option>
                                        
                                            <option value="1310" >包头钢铁职业技术学院</option>
                                        
                                            <option value="1311" >包头轻工职业技术学院</option>
                                        
                                            <option value="1312" >包头职业技术学院</option>
                                        
                                            <option value="1313" >河套大学</option>
                                        
                                            <option value="1314" >呼和浩特职业学院</option>
                                        
                                            <option value="1315" >科尔沁艺术职业学院</option>
                                        
                                            <option value="1316" >内蒙古财税职业学院</option>
                                        
                                            <option value="1317" >内蒙古电子信息职业技术学院</option>
                                        
                                            <option value="1318" >内蒙古青城大学</option>
                                        
                                            <option value="1319" >内蒙古化工职业学院</option>
                                        
                                            <option value="1320" >内蒙古机电职业技术学院</option>
                                        
                                            <option value="1321" >内蒙古建筑职业技术学院</option>
                                        
                                            <option value="1322" >内蒙古交通职业技术学院</option>
                                        
                                            <option value="1323" >呼和浩特民族学院</option>
                                        
                                            <option value="1324" >内蒙古商贸职业学院</option>
                                        
                                            <option value="1325" >内蒙古体育职业学院</option>
                                        
                                            <option value="1326" >通辽职业学院</option>
                                        
                                            <option value="1327" >乌海职业技术学院</option>
                                        
                                            <option value="1328" >乌兰察布职业学院</option>
                                        
                                            <option value="1329" >锡林郭勒职业学院</option>
                                        
                                            <option value="1330" >兴安职业技术学院</option>
                                        
                                            <option value="1331" >内蒙古警察职业学院</option>
                                        
                                            <option value="1332" >内蒙古北方职业技术学院</option>
                                        
                                            <option value="1333" >内蒙古丰州学院</option>
                                        
                                            <option value="1334" >内蒙古经贸外语职业学院</option>
                                        
                                            <option value="1335" >内蒙古科技职业学院</option>
                                        
                                            <option value="1336" >赤峰职业技术学院</option>
                                        
                                            <option value="1337" >包头铁道职业技术学院</option>
                                        
                                            <option value="1338" >内蒙古广播电视大学直属学院</option>
                                        
                                            <option value="1339" >集宁师范学院</option>
                                        
                                            <option value="1340" >内蒙古财经学院</option>
                                        
                                            <option value="1341" >包头师范学院</option>
                                        
                                            <option value="1342" >内蒙古科技大学包头师范学院</option>
                                        
                                            <option value="1343" >内蒙古医药专修学院</option>
                                        
                                            <option value="1344" >鄂尔多斯职业学院</option>
                                        
                                            <option value="1345" >乌兰察布医学高等专科学校</option>
                                        
                                            <option value="1346" >复旦大学</option>
                                        
                                            <option value="1347" >上海交通大学</option>
                                        
                                            <option value="1348" >同济大学</option>
                                        
                                            <option value="1349" >华东师范大学</option>
                                        
                                            <option value="1350" >上海财经大学</option>
                                        
                                            <option value="1351" >华东理工大学</option>
                                        
                                            <option value="1352" >上海商学院</option>
                                        
                                            <option value="1353" >东华大学</option>
                                        
                                            <option value="1354" >上海理工大学</option>
                                        
                                            <option value="1355" >上海大学</option>
                                        
                                            <option value="1356" >上海外国语大学</option>
                                        
                                            <option value="1357" >上海海事大学</option>
                                        
                                            <option value="1358" >上海工程技术大学</option>
                                        
                                            <option value="1359" >上海海洋大学</option>
                                        
                                            <option value="1360" >上海中医药大学</option>
                                        
                                            <option value="1361" >上海师范大学</option>
                                        
                                            <option value="1362" >建桥学院</option>
                                        
                                            <option value="1363" >上海政法学院</option>
                                        
                                            <option value="1364" >上海电机学院</option>
                                        
                                            <option value="1365" >上海第二工业大学</option>
                                        
                                            <option value="1366" >上海应用技术学院</option>
                                        
                                            <option value="1367" >上海电力学院</option>
                                        
                                            <option value="1368" >上海对外贸易学院</option>
                                        
                                            <option value="1369" >上海金融学院</option>
                                        
                                            <option value="1370" >上海立信会计学院</option>
                                        
                                            <option value="1371" >上海体育学院</option>
                                        
                                            <option value="1372" >上海音乐学院</option>
                                        
                                            <option value="1373" >上海戏剧学院</option>
                                        
                                            <option value="1374" >杉达学院</option>
                                        
                                            <option value="1375" >华东政法大学</option>
                                        
                                            <option value="1376" >上海师范大学青年学院</option>
                                        
                                            <option value="1377" >中法艾菲服装设计师学院</option>
                                        
                                            <option value="1378" >上海市计算技术研究所</option>
                                        
                                            <option value="1379" >上海国家会计学院</option>
                                        
                                            <option value="1380" >上海外国语大学贤达经济人文学院</option>
                                        
                                            <option value="1381" >同济大学同科学院</option>
                                        
                                            <option value="1382" >上海师范大学天华学院</option>
                                        
                                            <option value="1383" >上海东方文化职业学院</option>
                                        
                                            <option value="1384" >上海工商学院</option>
                                        
                                            <option value="1385" >上海高级金融学院</option>
                                        
                                            <option value="1386" >复旦大学上海视觉艺术学院</option>
                                        
                                            <option value="1387" >复旦大学上海医学院</option>
                                        
                                            <option value="1388" >复旦大学太平洋金融学院</option>
                                        
                                            <option value="1389" >上海邦德职业技术学院</option>
                                        
                                            <option value="1390" >上海诚信学院</option>
                                        
                                            <option value="1391" >上海城市管理职业技术学院</option>
                                        
                                            <option value="1392" >上海出版印刷高等专科学校</option>
                                        
                                            <option value="1393" >上海电影艺术职业学院</option>
                                        
                                            <option value="1394" >上海电子信息职业技术学院</option>
                                        
                                            <option value="1395" >上海东海职业技术学院</option>
                                        
                                            <option value="1396" >上海工会管理职业学院</option>
                                        
                                            <option value="1397" >上海工商外国语学院</option>
                                        
                                            <option value="1398" >上海工艺美术职业学院</option>
                                        
                                            <option value="1399" >上海公安高等专科学校</option>
                                        
                                            <option value="1400" >上海海关学院</option>
                                        
                                            <option value="1401" >上海海事职业技术学院</option>
                                        
                                            <option value="1402" >上海济光职业技术学院</option>
                                        
                                            <option value="1403" >上海建峰职业技术学院</option>
                                        
                                            <option value="1404" >上海交通职业技术学院</option>
                                        
                                            <option value="1405" >上海科学技术职业学院</option>
                                        
                                            <option value="1406" >上海立达职业技术学院</option>
                                        
                                            <option value="1407" >上海旅游高等专科学校</option>
                                        
                                            <option value="1408" >上海民远职业技术学院</option>
                                        
                                            <option value="1409" >上海农林职业技术学院</option>
                                        
                                            <option value="1410" >上海欧华职业技术学院</option>
                                        
                                            <option value="1411" >上海思博职业技术学院</option>
                                        
                                            <option value="1412" >上海兴韦信息技术职业学院</option>
                                        
                                            <option value="1413" >上海新侨职业技术学院</option>
                                        
                                            <option value="1414" >上海行健职业学院</option>
                                        
                                            <option value="1415" >上海医疗器械高等专科学校</option>
                                        
                                            <option value="1416" >上海医药高等专科学校</option>
                                        
                                            <option value="1417" >上海震旦职业学院</option>
                                        
                                            <option value="1418" >上海中华职业技术学院</option>
                                        
                                            <option value="1419" >上海中侨职业技术学院</option>
                                        
                                            <option value="1420" >上海纺织工业职工大学</option>
                                        
                                            <option value="1421" >上海体育职业学院</option>
                                        
                                            <option value="1422" >上海医药职工大学</option>
                                        
                                            <option value="1423" >上海市广播电视大学</option>
                                        
                                            <option value="1424" >上海健康职业技术学院</option>
                                        
                                            <option value="1425" >上海职工体育运动技术学院</option>
                                        
                                            <option value="1426" >华东理工大学网络教育学院</option>
                                        
                                            <option value="1427" >上海市经济管理干部学院</option>
                                        
                                            <option value="1428" >上海社会科学院</option>
                                        
                                            <option value="1429" >上海大学艺术研究院</option>
                                        
                                            <option value="1430" >中国科学院上海生命科学研究院</option>
                                        
                                            <option value="1431" >上海生物制品研究所</option>
                                        
                                            <option value="1432" >上海行政学院</option>
                                        
                                            <option value="1433" >上海科技学院</option>
                                        
                                            <option value="1434" >拉萨尔国际设计学院</option>
                                        
                                            <option value="1435" >上海青年管理干部学院</option>
                                        
                                            <option value="1436" >上海鸿文职业技术学院</option>
                                        
                                            <option value="1437" >上海大学巴士汽车学院</option>
                                        
                                            <option value="1438" >河北大学</option>
                                        
                                            <option value="1439" >河北农业大学</option>
                                        
                                            <option value="1440" >中央司法警官学院</option>
                                        
                                            <option value="1441" >石家庄铁道大学</option>
                                        
                                            <option value="1442" >石家庄经济学院</option>
                                        
                                            <option value="1443" >河北京安学院</option>
                                        
                                            <option value="1444" >泊头职业学院</option>
                                        
                                            <option value="1445" >河北财经学院</option>
                                        
                                            <option value="1446" >石家庄幼儿师范高等专科学校</option>
                                        
                                            <option value="1447" >河北联合大学迁安学院</option>
                                        
                                            <option value="1448" >廊坊燕京职业技术学院</option>
                                        
                                            <option value="1449" >邢台广播电视大学</option>
                                        
                                            <option value="1450" >河北师范大学</option>
                                        
                                            <option value="1451" >河北科技大学</option>
                                        
                                            <option value="1452" >河北医科大学</option>
                                        
                                            <option value="1453" >河北经贸大学</option>
                                        
                                            <option value="1454" >河北体育学院</option>
                                        
                                            <option value="1455" >石家庄学院</option>
                                        
                                            <option value="1456" >燕山大学</option>
                                        
                                            <option value="1457" >河北科技师范学院</option>
                                        
                                            <option value="1458" >河北联合大学</option>
                                        
                                            <option value="1459" >华北煤炭医学院</option>
                                        
                                            <option value="1460" >唐山学院</option>
                                        
                                            <option value="1461" >唐山师范学院</option>
                                        
                                            <option value="1462" >北华航天工业学院</option>
                                        
                                            <option value="1463" >廊坊师范学院</option>
                                        
                                            <option value="1464" >防灾科技学院</option>
                                        
                                            <option value="1465" >华北科技学院</option>
                                        
                                            <option value="1466" >河北建筑工程学院</option>
                                        
                                            <option value="1467" >河北北方学院</option>
                                        
                                            <option value="1468" >承德医学院</option>
                                        
                                            <option value="1469" >邢台学院</option>
                                        
                                            <option value="1470" >河北工程大学</option>
                                        
                                            <option value="1471" >邯郸学院</option>
                                        
                                            <option value="1472" >衡水学院</option>
                                        
                                            <option value="1473" >保定电力职业技术学院</option>
                                        
                                            <option value="1474" >河北科技学院</option>
                                        
                                            <option value="1475" >河北金融学院</option>
                                        
                                            <option value="1476" >保定学院</option>
                                        
                                            <option value="1477" >保定职业技术学院</option>
                                        
                                            <option value="1478" >渤海石油职业学院</option>
                                        
                                            <option value="1479" >沧州师范学院</option>
                                        
                                            <option value="1480" >沧州医学高等专科学校</option>
                                        
                                            <option value="1481" >沧州职业技术学院</option>
                                        
                                            <option value="1482" >河北旅游职业学院</option>
                                        
                                            <option value="1483" >河北民族师范学院</option>
                                        
                                            <option value="1484" >承德石油高等专科学校</option>
                                        
                                            <option value="1485" >东北大学秦皇岛校区</option>
                                        
                                            <option value="1486" >邯郸职业技术学院</option>
                                        
                                            <option value="1487" >河北大学医学部</option>
                                        
                                            <option value="1488" >河北工程技术高等专科学校</option>
                                        
                                            <option value="1489" >河北工业职业技术学院</option>
                                        
                                            <option value="1490" >河北公安警察职业学院</option>
                                        
                                            <option value="1491" >河北化工医药职业技术学院</option>
                                        
                                            <option value="1492" >河北机电职业技术学院</option>
                                        
                                            <option value="1493" >河北建材职业技术学院</option>
                                        
                                            <option value="1494" >河北交通职业技术学院</option>
                                        
                                            <option value="1495" >河北京都高尔夫职业学院</option>
                                        
                                            <option value="1496" >河北女子职业技术学院</option>
                                        
                                            <option value="1497" >河北农业大学海洋学院</option>
                                        
                                            <option value="1498" >河北软件职业技术学院</option>
                                        
                                            <option value="1499" >河北省艺术职业学院</option>
                                        
                                            <option value="1500" >河北石油职业技术学院</option>
                                        
                                            <option value="1501" >河北司法警官职业学院</option>
                                        
                                            <option value="1502" >河北通信职业技术学院</option>
                                        
                                            <option value="1503" >河北远东职业技术学院</option>
                                        
                                            <option value="1504" >河北政法管理干部学院</option>
                                        
                                            <option value="1505" >河北职业技术学院</option>
                                        
                                            <option value="1506" >衡水职业技术学院</option>
                                        
                                            <option value="1507" >华北电力大学（保定）</option>
                                        
                                            <option value="1508" >廊坊大学城北大方正软件学院</option>
                                        
                                            <option value="1509" >廊坊东方大学城北京澳际联邦英语学校</option>
                                        
                                            <option value="1510" >廊坊东方大学城北京财经学院</option>
                                        
                                            <option value="1511" >廊坊东方大学城北京传媒学院</option>
                                        
                                            <option value="1512" >廊坊东方大学城北京经济技术职业学院</option>
                                        
                                            <option value="1513" >廊坊东方大学城北京经贸职业学院航空服务学院</option>
                                        
                                            <option value="1514" >廊坊东方大学城北京联合大学</option>
                                        
                                            <option value="1515" >廊坊东方大学城河北体育学院</option>
                                        
                                            <option value="1516" >廊坊东方大学城廊坊职业技术学院</option>
                                        
                                            <option value="1517" >秦皇岛教育学院</option>
                                        
                                            <option value="1518" >河北外国语职业学院</option>
                                        
                                            <option value="1519" >秦皇岛职业技术学院</option>
                                        
                                            <option value="1520" >河北美术学院</option>
                                        
                                            <option value="1521" >石家庄法商职业学院</option>
                                        
                                            <option value="1522" >石家庄工商职业学院</option>
                                        
                                            <option value="1523" >石家庄计算机职业学院</option>
                                        
                                            <option value="1524" >石家庄科技信息职业学院</option>
                                        
                                            <option value="1525" >石家庄理工职业学院</option>
                                        
                                            <option value="1526" >石家庄铁路职业技术学院</option>
                                        
                                            <option value="1527" >石家庄外国语职业学院</option>
                                        
                                            <option value="1528" >石家庄财经职业学院</option>
                                        
                                            <option value="1529" >石家庄外语翻译职业学院</option>
                                        
                                            <option value="1530" >石家庄信息工程职业学院</option>
                                        
                                            <option value="1531" >石家庄医学高等专科学校</option>
                                        
                                            <option value="1532" >河北传媒学院</option>
                                        
                                            <option value="1533" >石家庄邮电职业技术学院</option>
                                        
                                            <option value="1534" >石家庄职业技术学院</option>
                                        
                                            <option value="1535" >唐山工业职业技术学院</option>
                                        
                                            <option value="1536" >唐山广播电视大学</option>
                                        
                                            <option value="1537" >唐山科技职业技术学院</option>
                                        
                                            <option value="1538" >唐山职业技术学院</option>
                                        
                                            <option value="1539" >邢台医学高等专科学校</option>
                                        
                                            <option value="1540" >邢台职业技术学院</option>
                                        
                                            <option value="1541" >张家口职业技术学院</option>
                                        
                                            <option value="1542" >中国地质大学长城学院</option>
                                        
                                            <option value="1543" >中国环境管理干部学院</option>
                                        
                                            <option value="1544" >中国民航管理干部学院</option>
                                        
                                            <option value="1545" >张家口教育学院</option>
                                        
                                            <option value="1546" >河北能源职业技术学院</option>
                                        
                                            <option value="1547" >承德卫生学校</option>
                                        
                                            <option value="1548" >邯郸中原外国语职业学院</option>
                                        
                                            <option value="1549" >河北师范大学汇华学院</option>
                                        
                                            <option value="1550" >河北联合大学冀唐学院</option>
                                        
                                            <option value="1551" >河北医科大学临床学院</option>
                                        
                                            <option value="1552" >河北农业大学现代科技学院</option>
                                        
                                            <option value="1553" >石家庄铁道学院四方学院</option>
                                        
                                            <option value="1554" >燕山大学里仁学院</option>
                                        
                                            <option value="1555" >河北工程大学科信学院</option>
                                        
                                            <option value="1556" >河北联合大学轻工学院</option>
                                        
                                            <option value="1557" >河北大学工商学院</option>
                                        
                                            <option value="1558" >河北经贸大学经济管理学院</option>
                                        
                                            <option value="1559" >廊坊职业技术学院</option>
                                        
                                            <option value="1560" >石家庄外事职业学院</option>
                                        
                                            <option value="1561" >河北政法职业学院</option>
                                        
                                            <option value="1562" >冀中职业学院</option>
                                        
                                            <option value="1563" >石家庄科技工程职业学院</option>
                                        
                                            <option value="1564" >河北劳动关系职业学院</option>
                                        
                                            <option value="1565" >河北行政学院</option>
                                        
                                            <option value="1566" >赣州东方学校</option>
                                        
                                            <option value="1567" >北京中医药大学东方学院</option>
                                        
                                            <option value="1568" >承德燕北职业技术专修学院</option>
                                        
                                            <option value="1569" >河北工业大学廊坊分院</option>
                                        
                                            <option value="1570" >石家庄铁路工程技术学院</option>
                                        
                                            <option value="1571" >石家庄经济学院华信学院</option>
                                        
                                            <option value="1572" >中国轻工业干部管理学院</option>
                                        
                                            <option value="1573" >河北宣化通信士官学校</option>
                                        
                                            <option value="1574" >承德民族职业技术学院</option>
                                        
                                            <option value="1575" >河北省保定市财贸学校</option>
                                        
                                            <option value="1576" >宣化科技职业学院</option>
                                        
                                            <option value="1577" >河北青年管理干部学院</option>
                                        
                                            <option value="1578" >北京交通大学海滨学院</option>
                                        
                                            <option value="1579" >石家庄职工大学</option>
                                        
                                            <option value="1580" >河北地质职工大学</option>
                                        
                                            <option value="1581" >河北广播电视大学</option>
                                        
                                            <option value="1582" >保定广播电视大学</option>
                                        
                                            <option value="1583" >河北广播电视大学高等职业技术学院</option>
                                        
                                            <option value="1584" >西安交通大学</option>
                                        
                                            <option value="1585" >长安大学</option>
                                        
                                            <option value="1586" >西北工业大学</option>
                                        
                                            <option value="1587" >西北大学</option>
                                        
                                            <option value="1588" >陕西师范大学</option>
                                        
                                            <option value="1589" >西安电子科技大学</option>
                                        
                                            <option value="1590" >西安理工大学</option>
                                        
                                            <option value="1591" >西安科技大学</option>
                                        
                                            <option value="1592" >西安工业大学</option>
                                        
                                            <option value="1593" >西安外国语大学</option>
                                        
                                            <option value="1594" >西安邮电大学</option>
                                        
                                            <option value="1595" >西安医学院</option>
                                        
                                            <option value="1596" >西安财经大学</option>
                                        
                                            <option value="1597" >西北政法大学</option>
                                        
                                            <option value="1598" >西安体育学院</option>
                                        
                                            <option value="1599" >西安美术学院</option>
                                        
                                            <option value="1600" >西安音乐学院</option>
                                        
                                            <option value="1601" >西安文理学院</option>
                                        
                                            <option value="1602" >西京学院</option>
                                        
                                            <option value="1603" >西安翻译学院</option>
                                        
                                            <option value="1604" >西安培华学院</option>
                                        
                                            <option value="1605" >欧亚学院</option>
                                        
                                            <option value="1606" >西安外事学院</option>
                                        
                                            <option value="1607" >陕西工商职业学院</option>
                                        
                                            <option value="1608" >西安石油大学</option>
                                        
                                            <option value="1609" >西安建筑科技大学</option>
                                        
                                            <option value="1610" >第四军医大学</option>
                                        
                                            <option value="1611" >西安电子科技大学高等职业技术学院</option>
                                        
                                            <option value="1612" >西北工业大学明德学院</option>
                                        
                                            <option value="1613" >陕西师范大学高等职业技术学院</option>
                                        
                                            <option value="1614" >长安大学兴华学院</option>
                                        
                                            <option value="1615" >西安数字技术学院</option>
                                        
                                            <option value="1616" >榆林职业技术学院神木校区</option>
                                        
                                            <option value="1617" >西安航空学院</option>
                                        
                                            <option value="1618" >陕西省艺术学院</option>
                                        
                                            <option value="1619" >延安大学</option>
                                        
                                            <option value="1620" >陕西中医学院</option>
                                        
                                            <option value="1621" >咸阳师范学院</option>
                                        
                                            <option value="1622" >陕西科技大学</option>
                                        
                                            <option value="1623" >宝鸡文理学院</option>
                                        
                                            <option value="1624" >渭南师范学院</option>
                                        
                                            <option value="1625" >陕西理工学院</option>
                                        
                                            <option value="1626" >榆林学院</option>
                                        
                                            <option value="1627" >商洛学院</option>
                                        
                                            <option value="1628" >安康学院</option>
                                        
                                            <option value="1629" >西北农林科技大学</option>
                                        
                                            <option value="1630" >安康职业技术学院</option>
                                        
                                            <option value="1631" >宝鸡职业技术学院</option>
                                        
                                            <option value="1632" >汉中职业技术学院</option>
                                        
                                            <option value="1633" >陕西财经职业技术学院</option>
                                        
                                            <option value="1634" >陕西电子科技职业学院</option>
                                        
                                            <option value="1635" >陕西电子信息职业技术学院</option>
                                        
                                            <option value="1636" >陕西纺织服装职业技术学院</option>
                                        
                                            <option value="1637" >陕西服装工程学院</option>
                                        
                                            <option value="1638" >陕西工业职业技术学院</option>
                                        
                                            <option value="1639" >陕西国防工业职业技术学院</option>
                                        
                                            <option value="1640" >陕西国际商贸学院</option>
                                        
                                            <option value="1641" >陕西航空职业技术学院</option>
                                        
                                            <option value="1642" >陕西交通职业技术学院</option>
                                        
                                            <option value="1643" >陕西经济管理职业技术学院</option>
                                        
                                            <option value="1644" >陕西警官职业学院</option>
                                        
                                            <option value="1645" >陕西旅游烹饪职业学院</option>
                                        
                                            <option value="1646" >陕西能源职业技术学院</option>
                                        
                                            <option value="1647" >陕西青年职业学院</option>
                                        
                                            <option value="1648" >陕西铁路工程职业技术学院</option>
                                        
                                            <option value="1649" >陕西邮电职业技术学院</option>
                                        
                                            <option value="1650" >陕西职业技术学院</option>
                                        
                                            <option value="1651" >商洛职业技术学院</option>
                                        
                                            <option value="1652" >铜川职业技术学院</option>
                                        
                                            <option value="1653" >渭南职业技术学院</option>
                                        
                                            <option value="1654" >西安电力高等专科学校</option>
                                        
                                            <option value="1655" >西安东方亚太职业技术学院</option>
                                        
                                            <option value="1656" >西安高新科技职业学院</option>
                                        
                                            <option value="1657" >西安工程大学</option>
                                        
                                            <option value="1658" >西安海棠职业学院</option>
                                        
                                            <option value="1659" >西安航空技术高等专科学校</option>
                                        
                                            <option value="1660" >西安航空职业技术学院</option>
                                        
                                            <option value="1661" >西安科技商贸职业学院</option>
                                        
                                            <option value="1662" >西安汽车科技职业学院西安三资职业学院</option>
                                        
                                            <option value="1663" >西安三资职业学院</option>
                                        
                                            <option value="1664" >西安思源学院</option>
                                        
                                            <option value="1665" >西安铁路职业技术学院</option>
                                        
                                            <option value="1666" >西安职业技术学院</option>
                                        
                                            <option value="1667" >咸阳职业技术学院</option>
                                        
                                            <option value="1668" >延安职业技术学院</option>
                                        
                                            <option value="1669" >杨凌职业技术学院</option>
                                        
                                            <option value="1670" >陕西银行学校</option>
                                        
                                            <option value="1671" >西安机电信息技术学院</option>
                                        
                                            <option value="1672" >陕西教育学院</option>
                                        
                                            <option value="1673" >陕西省旅游学校</option>
                                        
                                            <option value="1674" >西安铁路工程职工大学</option>
                                        
                                            <option value="1675" >西安华西专修大学</option>
                                        
                                            <option value="1676" >西安航空职工大学</option>
                                        
                                            <option value="1677" >西安建筑科技大学华清学院</option>
                                        
                                            <option value="1678" >西安财经学院行知学院</option>
                                        
                                            <option value="1679" >陕西科技大学镐京学院</option>
                                        
                                            <option value="1680" >西安工业大学北方信息工程学院</option>
                                        
                                            <option value="1681" >延安大学西安创新学院</option>
                                        
                                            <option value="1682" >西安电子科技大学长安学院</option>
                                        
                                            <option value="1683" >西安理工大学高科学院</option>
                                        
                                            <option value="1684" >西安科技大学高新学院</option>
                                        
                                            <option value="1685" >西安交通大学城市学院</option>
                                        
                                            <option value="1686" >西北大学现代学院</option>
                                        
                                            <option value="1687" >西安工程技术学院</option>
                                        
                                            <option value="1688" >陕西航天职工大学</option>
                                        
                                            <option value="1689" >陕西工运学院</option>
                                        
                                            <option value="1690" >陕西广播电视大学</option>
                                        
                                            <option value="1691" >陕西省建筑职工大学</option>
                                        
                                            <option value="1692" >陕西通信技术学院</option>
                                        
                                            <option value="1693" >西安航空旅游学院</option>
                                        
                                            <option value="1694" >西安工程机械专修学院</option>
                                        
                                            <option value="1695" >陕西建设技术学院</option>
                                        
                                            <option value="1696" >西安冶金建筑专修学院</option>
                                        
                                            <option value="1697" >西安联合职业培训学院</option>
                                        
                                            <option value="1698" >西安外贸职工大学</option>
                                        
                                            <option value="1699" >西安金融财贸学院</option>
                                        
                                            <option value="1700" >西安技师学院</option>
                                        
                                            <option value="1701" >山西大学</option>
                                        
                                            <option value="1702" >太原理工大学</option>
                                        
                                            <option value="1703" >中北大学</option>
                                        
                                            <option value="1704" >山西医科大学</option>
                                        
                                            <option value="1705" >山西中医学院</option>
                                        
                                            <option value="1706" >太原师范学院</option>
                                        
                                            <option value="1707" >太原科技大学</option>
                                        
                                            <option value="1708" >山西财经大学</option>
                                        
                                            <option value="1709" >山西运城职业技术学院</option>
                                        
                                            <option value="1710" >阳泉师范高等专科学校</option>
                                        
                                            <option value="1711" >山西师范大学</option>
                                        
                                            <option value="1712" >山西农业大学</option>
                                        
                                            <option value="1713" >山西大同大学</option>
                                        
                                            <option value="1714" >长治医学院</option>
                                        
                                            <option value="1715" >长治学院</option>
                                        
                                            <option value="1716" >运城学院</option>
                                        
                                            <option value="1717" >晋中学院</option>
                                        
                                            <option value="1718" >忻州师范学院</option>
                                        
                                            <option value="1719" >北岳职业技术学院</option>
                                        
                                            <option value="1720" >长治职业技术学院</option>
                                        
                                            <option value="1721" >晋城职业技术学院</option>
                                        
                                            <option value="1722" >晋中职业技术学院</option>
                                        
                                            <option value="1723" >临汾职业技术学院</option>
                                        
                                            <option value="1724" >潞安职业技术学院</option>
                                        
                                            <option value="1725" >吕梁学院</option>
                                        
                                            <option value="1726" >山西财贸职业技术学院</option>
                                        
                                            <option value="1727" >山西财政税务专科学校</option>
                                        
                                            <option value="1728" >山西电力职业技术学院</option>
                                        
                                            <option value="1729" >山西工程职业技术学院</option>
                                        
                                            <option value="1730" >山西工商学院</option>
                                        
                                            <option value="1731" >山西管理职业学院</option>
                                        
                                            <option value="1732" >山西国际商务职业学院</option>
                                        
                                            <option value="1733" >山西华澳商贸职业学院</option>
                                        
                                            <option value="1734" >山西机电职业技术学院</option>
                                        
                                            <option value="1735" >山西建筑职业技术学院</option>
                                        
                                            <option value="1736" >山西交通职业技术学院</option>
                                        
                                            <option value="1737" >山西金融职业技术学院</option>
                                        
                                            <option value="1738" >山西警官高等专科学校</option>
                                        
                                            <option value="1739" >山西警官职业学院</option>
                                        
                                            <option value="1740" >山西林业职业技术学院</option>
                                        
                                            <option value="1741" >山西旅游职业学院</option>
                                        
                                            <option value="1742" >山西煤炭职业技术学院</option>
                                        
                                            <option value="1743" >山西生物应用职业技术学院</option>
                                        
                                            <option value="1744" >山西水利职业技术学院</option>
                                        
                                            <option value="1745" >山西体育职业学院</option>
                                        
                                            <option value="1746" >山西同文外语职业学院</option>
                                        
                                            <option value="1747" >山西戏剧职业学院</option>
                                        
                                            <option value="1748" >山西信息职业技术学院</option>
                                        
                                            <option value="1749" >山西兴华职业学院</option>
                                        
                                            <option value="1750" >山西艺术职业学院</option>
                                        
                                            <option value="1751" >山西运城农业职业技术学院</option>
                                        
                                            <option value="1752" >山西职业技术学院</option>
                                        
                                            <option value="1753" >太原城市职业技术学院</option>
                                        
                                            <option value="1754" >太原大学</option>
                                        
                                            <option value="1755" >太原电力高等专科学校</option>
                                        
                                            <option value="1756" >太原旅游职业学院</option>
                                        
                                            <option value="1757" >忻州职业技术学院</option>
                                        
                                            <option value="1758" >阳泉职业技术学院</option>
                                        
                                            <option value="1759" >山西城市职业技术学院</option>
                                        
                                            <option value="1760" >运城农业学院</option>
                                        
                                            <option value="1761" >山西广播电视大学</option>
                                        
                                            <option value="1762" >晋中学院师范学院</option>
                                        
                                            <option value="1763" >朔州职业技术学院</option>
                                        
                                            <option value="1764" >山西农业大学平遥机电学院</option>
                                        
                                            <option value="1765" >山西农业大学信息学院</option>
                                        
                                            <option value="1766" >山西农业大学太原畜牧兽医学院</option>
                                        
                                            <option value="1767" >山西农业大学太原园艺学院（太原农业学校）</option>
                                        
                                            <option value="1768" >山西农业大学原平农学院（原平农业学校）</option>
                                        
                                            <option value="1769" >太原科技大学运城工学院（运城工学院）</option>
                                        
                                            <option value="1770" >山西财经大学运城学院</option>
                                        
                                            <option value="1771" >山西医科大学汾阳分院</option>
                                        
                                            <option value="1772" >山西医科大学晋祠学院</option>
                                        
                                            <option value="1773" >太原科技大学华科学院</option>
                                        
                                            <option value="1774" >山西财经大学华商学院</option>
                                        
                                            <option value="1775" >中北大学信息商务学院</option>
                                        
                                            <option value="1776" >山西师范大学现代文理学院</option>
                                        
                                            <option value="1777" >忻州师范学院五寨分院（五寨师范学院）</option>
                                        
                                            <option value="1778" >山西大学商务学院</option>
                                        
                                            <option value="1779" >太原工业学院</option>
                                        
                                            <option value="1780" >山西经济管理干部学院</option>
                                        
                                            <option value="1781" >山西青年管理干部学院</option>
                                        
                                            <option value="1782" >山西省职工工艺美术学院</option>
                                        
                                            <option value="1783" >山西省吕梁市教育学院</option>
                                        
                                            <option value="1784" >长治市教育学院</option>
                                        
                                            <option value="1785" >山西煤炭管理干部学院</option>
                                        
                                            <option value="1786" >山西政法管理干部学院</option>
                                        
                                            <option value="1787" >阳泉市教育学院</option>
                                        
                                            <option value="1788" >山西煤炭职工联合大学</option>
                                        
                                            <option value="1789" >太原钢铁(集团)有限公司职工钢铁学院</option>
                                        
                                            <option value="1790" >山西机电职工学院</option>
                                        
                                            <option value="1791" >太原化学工业集团有限公司职工大学</option>
                                        
                                            <option value="1792" >山西兵器工业职工大学</option>
                                        
                                            <option value="1793" >山西传媒学院</option>
                                        
                                            <option value="1794" >山西职工医学院</option>
                                        
                                            <option value="1795" >山西省临汾电力技师学院</option>
                                        
                                            <option value="1796" >太原大学外语师范学院</option>
                                        
                                            <option value="1797" >运城幼儿师范高等专科学校</option>
                                        
                                            <option value="1798" >中国辐射防护研究院</option>
                                        
                                            <option value="1799" >山西师大临汾学院</option>
                                        
                                            <option value="1800" >山西财经大学经济技术学院</option>
                                        
                                            <option value="1801" >山西老区职业技术学院</option>
                                        
                                            <option value="1802" >中国日用化学工业研究院</option>
                                        
                                            <option value="1803" >兰州大学</option>
                                        
                                            <option value="1804" >西北民族大学</option>
                                        
                                            <option value="1805" >西北师范大学</option>
                                        
                                            <option value="1806" >甘肃中医学院</option>
                                        
                                            <option value="1807" >兰州商学院</option>
                                        
                                            <option value="1808" >甘肃政法学院</option>
                                        
                                            <option value="10000" >其他</option>
                                        
                                            <option value="1809" >兰州交通大学</option>
                                        
                                            <option value="10001" >兰州城市学院</option>
                                        
                                            <option value="1810" >西北师范大学知行学院</option>
                                        
                                            <option value="10002" >东京造形大学</option>
                                        
                                            <option value="1811" >甘肃机电职业技术学院</option>
                                        
                                            <option value="10003" >东京艺术大学</option>
                                        
                                            <option value="1812" >长庆石油高级技工学校</option>
                                        
                                            <option value="10004" >京都市立艺术大学</option>
                                        
                                            <option value="1813" >天水师范学院</option>
                                        
                                            <option value="10005" >多摩美术大学</option>
                                        
                                            <option value="1814" >陇东学院</option>
                                        
                                            <option value="10006" >武藏野美术大学</option>
                                        
                                            <option value="1815" >河西学院</option>
                                        
                                            <option value="10007" >神户艺术工科大学</option>
                                        
                                            <option value="1816" >兰州石化职业技术学院</option>
                                        
                                            <option value="10008" >東京芸術大学</option>
                                        
                                            <option value="1817" >甘肃工业职业技术学院</option>
                                        
                                            <option value="10009" >東京女子美術大学</option>
                                        
                                            <option value="1818" >甘肃警察职业学院</option>
                                        
                                            <option value="10010" >日本文化服装学院</option>
                                        
                                            <option value="1819" >兰州理工大学技术工程学院</option>
                                        
                                            <option value="10011" >京都精華大学</option>
                                        
                                            <option value="1820" >兰州职业技术学院</option>
                                        
                                            <option value="10012" >京都造形芸術大学</option>
                                        
                                            <option value="1821" >武威职业学院</option>
                                        
                                            <option value="10013" >大阪芸術大学</option>
                                        
                                            <option value="1822" >张掖医学高等专科学校</option>
                                        
                                            <option value="10014" >千叶大学工学院</option>
                                        
                                            <option value="1823" >甘肃畜牧工程职业技术学院</option>
                                        
                                            <option value="10015" >筑波大学</option>
                                        
                                            <option value="1824" >陇南师范高等专科学校</option>
                                        
                                            <option value="10016" >京都工艺纤维大学</option>
                                        
                                            <option value="1825" >甘肃民族师范学院</option>
                                        
                                            <option value="10017" >金泽美术工艺大学</option>
                                        
                                            <option value="1826" >甘肃联合大学</option>
                                        
                                            <option value="10018" >桑泽设计研究所</option>
                                        
                                            <option value="1827" >甘肃林业职业技术学院</option>
                                        
                                            <option value="10019" >大阪艺术大学</option>
                                        
                                            <option value="1828" >甘肃建筑职业技术学院</option>
                                        
                                            <option value="10020" >九州艺术工科大学</option>
                                        
                                            <option value="1829" >酒泉职业技术学院</option>
                                        
                                            <option value="10021" >东京工艺大学</option>
                                        
                                            <option value="1830" >甘肃农业职业技术学院</option>
                                        
                                            <option value="10022" >仓敷艺术科学大学</option>
                                        
                                            <option value="1831" >平凉医学高等专科学校</option>
                                        
                                            <option value="10023" >东北艺术工科大学</option>
                                        
                                            <option value="1832" >兰州资源环境职业技术学院</option>
                                        
                                            <option value="10024" >萨凡纳艺术设计学院</option>
                                        
                                            <option value="1833" >定西师范高等专科学校</option>
                                        
                                            <option value="10025" >树德科技大学</option>
                                        
                                            <option value="1834" >兰州交通大学博文学院</option>
                                        
                                            <option value="1835" >兰州工业学院</option>
                                        
                                            <option value="1836" >兰州外语职业学院</option>
                                        
                                            <option value="1837" >甘肃钢铁职业技术学院</option>
                                        
                                            <option value="1838" >兰州教育学院</option>
                                        
                                            <option value="1839" >甘肃交通职业技术学院</option>
                                        
                                            <option value="1840" >兰州商学院长青学院</option>
                                        
                                            <option value="1841" >兰州商学院陇桥学院</option>
                                        
                                            <option value="1842" >四川大学</option>
                                        
                                            <option value="1843" >四川农业大学</option>
                                        
                                            <option value="1844" >电子科技大学</option>
                                        
                                            <option value="1845" >西南交通大学</option>
                                        
                                            <option value="1846" >成都理工大学</option>
                                        
                                            <option value="1847" >四川师范大学</option>
                                        
                                            <option value="1848" >西南民族大学</option>
                                        
                                            <option value="1849" >成都大学</option>
                                        
                                            <option value="1850" >西南财经大学</option>
                                        
                                            <option value="1851" >西华大学</option>
                                        
                                            <option value="1852" >成都中医药大学</option>
                                        
                                            <option value="1853" >成都信息工程大学</option>
                                        
                                            <option value="1854" >成都医学院</option>
                                        
                                            <option value="1855" >四川文理学院</option>
                                        
                                            <option value="1856" >成都体育学院</option>
                                        
                                            <option value="1857" >四川音乐学院</option>
                                        
                                            <option value="1858" >西南石油大学</option>
                                        
                                            <option value="1859" >西南交通大学希望学院</option>
                                        
                                            <option value="1860" >四川长江职业学院</option>
                                        
                                            <option value="1861" >四川传媒学院</option>
                                        
                                            <option value="1862" >四川现代职业学院</option>
                                        
                                            <option value="1863" >西南交通大学峨眉校区</option>
                                        
                                            <option value="1864" >四川中山学院</option>
                                        
                                            <option value="1865" >中国民航飞行学院</option>
                                        
                                            <option value="1866" >四川理工学院</option>
                                        
                                            <option value="1867" >泸州医学院</option>
                                        
                                            <option value="1868" >四川警察学院</option>
                                        
                                            <option value="1869" >川北医学院</option>
                                        
                                            <option value="1870" >西华师范大学</option>
                                        
                                            <option value="1871" >内江师范学院</option>
                                        
                                            <option value="1872" >乐山师院</option>
                                        
                                            <option value="1873" >绵阳师范学院</option>
                                        
                                            <option value="1874" >西南科技大学</option>
                                        
                                            <option value="1875" >西昌学院</option>
                                        
                                            <option value="1876" >宜宾学院</option>
                                        
                                            <option value="1877" >攀枝花学院</option>
                                        
                                            <option value="1878" >阿坝师范高等专科学校</option>
                                        
                                            <option value="1879" >成都工业学院</option>
                                        
                                            <option value="1880" >成都东软学院</option>
                                        
                                            <option value="1881" >成都纺织高等专科学校</option>
                                        
                                            <option value="1882" >成都广播电视大学</option>
                                        
                                            <option value="1883" >成都航空职业技术学院</option>
                                        
                                            <option value="1884" >成都理工大学广播影视学院</option>
                                        
                                            <option value="1885" >成都农业科技职业学院</option>
                                        
                                            <option value="1886" >成都艺术职业学院</option>
                                        
                                            <option value="1887" >成都职业技术学院</option>
                                        
                                            <option value="1888" >达州职业技术学院</option>
                                        
                                            <option value="1889" >电子科技大学成都学院</option>
                                        
                                            <option value="1890" >广安职业技术学院</option>
                                        
                                            <option value="1891" >乐山职业技术学院</option>
                                        
                                            <option value="1892" >泸州职业技术学院</option>
                                        
                                            <option value="1893" >眉山职业技术学院</option>
                                        
                                            <option value="1894" >绵阳职业技术学院</option>
                                        
                                            <option value="1895" >民办四川天一学院</option>
                                        
                                            <option value="1896" >内江职业技术学院</option>
                                        
                                            <option value="1897" >南充职业技术学院</option>
                                        
                                            <option value="1898" >四川大学龙泉校区</option>
                                        
                                            <option value="1899" >四川电力职业技术学院</option>
                                        
                                            <option value="1900" >四川工程职业技术学院</option>
                                        
                                            <option value="1901" >四川工商职业技术学院</option>
                                        
                                            <option value="1902" >四川管理职业学院</option>
                                        
                                            <option value="1903" >四川广播电视大学</option>
                                        
                                            <option value="1904" >四川国际标榜职业学院</option>
                                        
                                            <option value="1905" >四川航天职业技术学院</option>
                                        
                                            <option value="1906" >四川华新现代职业学院</option>
                                        
                                            <option value="1907" >四川化工职业技术学院</option>
                                        
                                            <option value="1908" >四川机电职业技术学院</option>
                                        
                                            <option value="1909" >四川建筑职业技术学院</option>
                                        
                                            <option value="1910" >四川交通职业技术学院</option>
                                        
                                            <option value="1911" >成都师范学院</option>
                                        
                                            <option value="1912" >四川警安职业学院</option>
                                        
                                            <option value="1913" >四川烹饪高等专科学校</option>
                                        
                                            <option value="1914" >四川商务职业学院</option>
                                        
                                            <option value="1915" >四川师范大学绵阳初等教育学院</option>
                                        
                                            <option value="1916" >四川水利职业技术学院</option>
                                        
                                            <option value="1917" >四川司法警官职业学院</option>
                                        
                                            <option value="1918" >四川托普信息技术职业学院</option>
                                        
                                            <option value="1919" >四川外语学院成都学院</option>
                                        
                                            <option value="1920" >四川文化传媒职业学院</option>
                                        
                                            <option value="1921" >四川信息工程学校</option>
                                        
                                            <option value="1922" >四川邮电职业技术学院</option>
                                        
                                            <option value="1923" >四川职业技术学院</option>
                                        
                                            <option value="1924" >四川中医药高等专科学校</option>
                                        
                                            <option value="1925" >雅安职业技术学院</option>
                                        
                                            <option value="1926" >宜宾职业技术学院</option>
                                        
                                            <option value="1927" >四川大学锦城学院</option>
                                        
                                            <option value="1928" >四川大学锦江学院</option>
                                        
                                            <option value="1929" >德阳职业技术学校</option>
                                        
                                            <option value="1930" >四川信息职业技术学院</option>
                                        
                                            <option value="1931" >四川艺术职业学院</option>
                                        
                                            <option value="1932" >四川师范大学成都学院</option>
                                        
                                            <option value="1933" >四川师范大学文理学院</option>
                                        
                                            <option value="1934" >成都信息工程学院银杏酒店管理学院</option>
                                        
                                            <option value="1935" >成都理工大学工程技术学院</option>
                                        
                                            <option value="1936" >四川文化产业职业学院</option>
                                        
                                            <option value="1937" >四川科技职业学院</option>
                                        
                                            <option value="1938" >西南科技大学城市学院</option>
                                        
                                            <option value="1939" >四川音乐学院绵阳艺术学院</option>
                                        
                                            <option value="1940" >西南财经大学天府学院</option>
                                        
                                            <option value="1941" >四川中医药高等专科学校</option>
                                        
                                            <option value="1942" >中国科学院成都分院职工大学</option>
                                        
                                            <option value="1943" >成都市职工大学</option>
                                        
                                            <option value="1944" >南充市职工大学</option>
                                        
                                            <option value="1945" >四川省广播电视大学</option>
                                        
                                            <option value="1946" >四川经济管理干部学院</option>
                                        
                                            <option value="1947" >四川农业管理干部学院</option>
                                        
                                            <option value="1948" >广元职工医学院</option>
                                        
                                            <option value="1949" >四川省职工运动技术学院</option>
                                        
                                            <option value="1950" >四川省东方动力职工大学</option>
                                        
                                            <option value="1951" >成都电力职工大学</option>
                                        
                                            <option value="1952" >成都市广播电视大学</option>
                                        
                                            <option value="1953" >中国工程物理研究院职工工学院</option>
                                        
                                            <option value="1954" >成都发动机公司职工大学</option>
                                        
                                            <option value="1955" >四川核工业职工大学</option>
                                        
                                            <option value="1956" >四川科技职工大学</option>
                                        
                                            <option value="1957" >四川省化工职工大学</option>
                                        
                                            <option value="1958" >成都电子职工大学</option>
                                        
                                            <option value="1959" >国营涪江机器厂职工大学</option>
                                        
                                            <option value="1960" >成都冶金职工大学</option>
                                        
                                            <option value="1961" >第五冶金建设公司职工大学</option>
                                        
                                            <option value="1962" >成都工业职工大学</option>
                                        
                                            <option value="1963" >成都飞机工业公司职工工学院</option>
                                        
                                            <option value="1964" >四川财经职业学院</option>
                                        
                                            <option value="1965" >四川城市职业学院</option>
                                        
                                            <option value="1966" >中国五冶职工大学</option>
                                        
                                            <option value="1967" >四川师范大学经济职业学院</option>
                                        
                                            <option value="1968" >四川省卫生管理干部学院</option>
                                        
                                            <option value="1969" >四川民族学院</option>
                                        
                                            <option value="1970" >四川师范大学电影电视学院</option>
                                        
                                            <option value="1971" >昆明理工大学</option>
                                        
                                            <option value="1972" >云南农业大学</option>
                                        
                                            <option value="1973" >云南师范大学</option>
                                        
                                            <option value="1974" >云南财经大学</option>
                                        
                                            <option value="1975" >云南民族大学</option>
                                        
                                            <option value="1976" >西南林业大学</option>
                                        
                                            <option value="1977" >昆明医科大学</option>
                                        
                                            <option value="1978" >云南中医学院</option>
                                        
                                            <option value="1979" >红河学院</option>
                                        
                                            <option value="1980" >云南警官学院</option>
                                        
                                            <option value="1981" >云南艺术学院</option>
                                        
                                            <option value="1982" >云南大学</option>
                                        
                                            <option value="1983" >云南工商学院</option>
                                        
                                            <option value="1984" >云南财贸外事职业学院</option>
                                        
                                            <option value="1985" >云南经贸外事职业学院</option>
                                        
                                            <option value="1986" >大理医学院</option>
                                        
                                            <option value="1987" >云南民族大学文化学院</option>
                                        
                                            <option value="1988" >云南广播电视大学昆明分校</option>
                                        
                                            <option value="1989" >曲靖师范学院</option>
                                        
                                            <option value="1990" >玉溪师范学院</option>
                                        
                                            <option value="1991" >楚雄师范学院</option>
                                        
                                            <option value="1992" >大理学院</option>
                                        
                                            <option value="1993" >保山学院</option>
                                        
                                            <option value="1994" >保山中医药高等专科学校</option>
                                        
                                            <option value="1995" >楚雄医药高等专科学校</option>
                                        
                                            <option value="1996" >德宏师范高等专科学校</option>
                                        
                                            <option value="1997" >云南大学滇池学院</option>
                                        
                                            <option value="1998" >昆明大学</option>
                                        
                                            <option value="1999" >昆明工业职业技术学院</option>
                                        
                                            <option value="2000" >昆明师范高等专科学校</option>
                                        
                                            <option value="2001" >云南工程职业学院</option>
                                        
                                            <option value="2002" >昆明冶金高等专科学校</option>
                                        
                                            <option value="2003" >昆明艺术职业学院</option>
                                        
                                            <option value="2004" >丽江师范高等专科学校</option>
                                        
                                            <option value="2005" >曲靖医学高等专科学校</option>
                                        
                                            <option value="2006" >思茅师范高等专科学校</option>
                                        
                                            <option value="2007" >文山学院</option>
                                        
                                            <option value="2008" >西双版纳职业技术学院</option>
                                        
                                            <option value="2009" >玉溪农业职业技术学院</option>
                                        
                                            <option value="2010" >云南爱因森软件职业学院</option>
                                        
                                            <option value="2011" >云南北美职业学院</option>
                                        
                                            <option value="2012" >云南国防工业职业技术学院</option>
                                        
                                            <option value="2013" >云南国土资源职业学院</option>
                                        
                                            <option value="2014" >云南机电职业技术学院</option>
                                        
                                            <option value="2015" >云南交通职业技术学院</option>
                                        
                                            <option value="2016" >云南经济管理职业学院</option>
                                        
                                            <option value="2017" >云南科技信息职业技术学院</option>
                                        
                                            <option value="2018" >云南林业职业技术学院</option>
                                        
                                            <option value="2019" >云南能源职业技术学院</option>
                                        
                                            <option value="2020" >云南农业职业技术学院</option>
                                        
                                            <option value="2021" >云南热带作物职业学院</option>
                                        
                                            <option value="2022" >云南省林业科学院</option>
                                        
                                            <option value="2023" >云南师范大学商学院</option>
                                        
                                            <option value="2024" >云南司法警官职业学院</option>
                                        
                                            <option value="2025" >云南体育运动职业技术学院</option>
                                        
                                            <option value="2026" >云南文化艺术职业学院</option>
                                        
                                            <option value="2027" >云南新兴职业学院</option>
                                        
                                            <option value="2028" >云南医学高等专科学校</option>
                                        
                                            <option value="2029" >昭通学院</option>
                                        
                                            <option value="2030" >昆明学院</option>
                                        
                                            <option value="2031" >昆明理工大学津桥学院</option>
                                        
                                            <option value="2032" >云南师范大学文理学院</option>
                                        
                                            <option value="2033" >昆明医学院海源学院</option>
                                        
                                            <option value="2034" >云南艺术学院文华学院</option>
                                        
                                            <option value="2035" >云南大学旅游文化学院</option>
                                        
                                            <option value="2036" >临沧师范高等专科学校</option>
                                        
                                            <option value="2037" >云南锡业职业技术学院</option>
                                        
                                            <option value="2038" >云南科技信息职业学院</option>
                                        
                                            <option value="2039" >贵州大学</option>
                                        
                                            <option value="2040" >贵阳医学院</option>
                                        
                                            <option value="2041" >贵阳中医学院</option>
                                        
                                            <option value="2042" >贵州财经大学</option>
                                        
                                            <option value="2043" >贵州民族大学</option>
                                        
                                            <option value="2044" >贵阳学院</option>
                                        
                                            <option value="2045" >贵州师范大学</option>
                                        
                                            <option value="2046" >铜仁学院</option>
                                        
                                            <option value="2047" >贵州职业技术学院</option>
                                        
                                            <option value="2048" >贵州省职业技术学院</option>
                                        
                                            <option value="2049" >遵义医学院</option>
                                        
                                            <option value="2050" >遵义师范学院</option>
                                        
                                            <option value="2051" >毕节学院</option>
                                        
                                            <option value="2052" >黔南师院</option>
                                        
                                            <option value="2053" >安顺学院</option>
                                        
                                            <option value="2054" >凯里学院</option>
                                        
                                            <option value="2055" >安顺职业技术学院</option>
                                        
                                            <option value="2056" >贵州电力职业技术学院</option>
                                        
                                            <option value="2057" >贵州电子信息职业技术学院</option>
                                        
                                            <option value="2058" >贵州航天职业技术学院</option>
                                        
                                            <option value="2059" >贵州交通职业技术学院</option>
                                        
                                            <option value="2060" >贵州警官职业学院</option>
                                        
                                            <option value="2061" >贵州工业职业技术学院</option>
                                        
                                            <option value="2062" >贵州轻工职业技术学院</option>
                                        
                                            <option value="2063" >贵州商业高等专科学校</option>
                                        
                                            <option value="2064" >六盘水师范学院</option>
                                        
                                            <option value="2065" >六盘水职业技术学院</option>
                                        
                                            <option value="2066" >黔东南民族职业技术学院</option>
                                        
                                            <option value="2067" >黔南民族医学高等专科学校</option>
                                        
                                            <option value="2068" >黔南民族职业技术学院</option>
                                        
                                            <option value="2069" >黔西南民族职业技术学院</option>
                                        
                                            <option value="2070" >铜仁职业技术学院</option>
                                        
                                            <option value="2071" >遵义医药高等专科学校</option>
                                        
                                            <option value="2072" >遵义职业技术学院</option>
                                        
                                            <option value="2073" >贵州财经学院商务学院</option>
                                        
                                            <option value="2074" >贵州师范大学求是学院</option>
                                        
                                            <option value="2075" >贵州民族学院人文科技学院</option>
                                        
                                            <option value="2076" >贵阳医学院神奇民族医药学院</option>
                                        
                                            <option value="2077" >遵义医学院医学与科技学院</option>
                                        
                                            <option value="2078" >贵阳中医学院时珍学院</option>
                                        
                                            <option value="2079" >贵州大学明德学院</option>
                                        
                                            <option value="2080" >贵州大学科技学院</option>
                                        
                                            <option value="2081" >贵阳护理职业学院</option>
                                        
                                            <option value="2082" >贵州亚泰职业学院</option>
                                        
                                            <option value="2083" >贵州师范学院</option>
                                        
                                            <option value="2084" >贵阳职业技术学院</option>
                                        
                                            <option value="2085" >毕节职业技术学院</option>
                                        
                                            <option value="2086" >贵州广播电视大学</option>
                                        
                                            <option value="2087" >贵州省财经学院商务学院</option>
                                        
                                            <option value="2088" >湖南师范大学</option>
                                        
                                            <option value="2089" >中南大学</option>
                                        
                                            <option value="2090" >湖南大学</option>
                                        
                                            <option value="2091" >长沙理工大学</option>
                                        
                                            <option value="2092" >湖南农业大学</option>
                                        
                                            <option value="2093" >湖南中医药大学</option>
                                        
                                            <option value="2094" >中南林业科技大学</option>
                                        
                                            <option value="2095" >长沙学院</option>
                                        
                                            <option value="2096" >长沙医学院</option>
                                        
                                            <option value="2097" >湖南涉外经济学院</option>
                                        
                                            <option value="2098" >湖南商学院</option>
                                        
                                            <option value="2099" >湖南人文科技学院</option>
                                        
                                            <option value="2100" >湖南三一工业职业技术学院</option>
                                        
                                            <option value="2101" >湖南食品药品职业学院</option>
                                        
                                            <option value="2102" >湘潭大学</option>
                                        
                                            <option value="2103" >湖南科技大学</option>
                                        
                                            <option value="2104" >湖南工程学院</option>
                                        
                                            <option value="2105" >南华大学</option>
                                        
                                            <option value="2106" >吉首大学</option>
                                        
                                            <option value="2107" >湖南工业大学</option>
                                        
                                            <option value="2108" >湖南城市学院</option>
                                        
                                            <option value="2109" >湖南理工学院</option>
                                        
                                            <option value="2110" >湘南学院</option>
                                        
                                            <option value="2111" >衡阳师范学院</option>
                                        
                                            <option value="2112" >湖南文理学院</option>
                                        
                                            <option value="2113" >怀化学院</option>
                                        
                                            <option value="2114" >湖南科技学院</option>
                                        
                                            <option value="2115" >邵阳学院</option>
                                        
                                            <option value="2116" >保险职业学院</option>
                                        
                                            <option value="2117" >长沙电力职业技术学院</option>
                                        
                                            <option value="2118" >长沙航空职业学院</option>
                                        
                                            <option value="2119" >长沙环境保护职业技术学院</option>
                                        
                                            <option value="2120" >长沙民政职业技术学院</option>
                                        
                                            <option value="2121" >长沙南方职业学院</option>
                                        
                                            <option value="2122" >长沙商贸旅游职业技术学院</option>
                                        
                                            <option value="2123" >长沙师范专科学校</option>
                                        
                                            <option value="2124" >长沙通信职业技术学院</option>
                                        
                                            <option value="2125" >长沙职工大学</option>
                                        
                                            <option value="2126" >长沙职业技术学院</option>
                                        
                                            <option value="2127" >常德职业技术学院</option>
                                        
                                            <option value="2128" >郴州职业技术学院</option>
                                        
                                            <option value="2129" >衡阳财经工业职业技术学院</option>
                                        
                                            <option value="2130" >湖南安全技术职业学院</option>
                                        
                                            <option value="2131" >湖南财政经济学院</option>
                                        
                                            <option value="2132" >湖南大众传媒学院</option>
                                        
                                            <option value="2133" >湖南第一师范学院</option>
                                        
                                            <option value="2134" >湖南对外经济贸易职业学院</option>
                                        
                                            <option value="2135" >湖南工程职业技术学院</option>
                                        
                                            <option value="2136" >湖南工学院</option>
                                        
                                            <option value="2137" >湖南工业职业技术学院</option>
                                        
                                            <option value="2138" >湖南工艺美术职业学院</option>
                                        
                                            <option value="2139" >湖南警察学院</option>
                                        
                                            <option value="2140" >湖南广播电视大学</option>
                                        
                                            <option value="2141" >湖南化工职业技术学院</option>
                                        
                                            <option value="2142" >湖南环境生物职业技术学院</option>
                                        
                                            <option value="2143" >湖南机电职业技术学院</option>
                                        
                                            <option value="2144" >湖南建材高等专科学校</option>
                                        
                                            <option value="2145" >湖南高速铁路职业技术学院</option>
                                        
                                            <option value="2146" >湖南交通职业技术学院</option>
                                        
                                            <option value="2147" >湖南经济干部管理学院</option>
                                        
                                            <option value="2148" >湖南九嶷职业技术学院</option>
                                        
                                            <option value="2149" >湖南科技经贸职业学院</option>
                                        
                                            <option value="2150" >湖南科技职业学院</option>
                                        
                                            <option value="2151" >湖南理工职业技术学院</option>
                                        
                                            <option value="2152" >湖南娄底远东职业学校</option>
                                        
                                            <option value="2153" >湖南民族职业学院</option>
                                        
                                            <option value="2154" >湖南农业大学国际学院</option>
                                        
                                            <option value="2155" >湖南女子学院</option>
                                        
                                            <option value="2156" >湖南软件职业技术学院</option>
                                        
                                            <option value="2157" >湖南商务职业技术学院</option>
                                        
                                            <option value="2158" >湖南生物机电职业技术学院</option>
                                        
                                            <option value="2159" >湖南省水利水电职业技术学院</option>
                                        
                                            <option value="2160" >湖南石油化工职业技术学院</option>
                                        
                                            <option value="2161" >湖南税务高等专科学校</option>
                                        
                                            <option value="2162" >湖南司法警官职业技术学院</option>
                                        
                                            <option value="2163" >湖南体育职业学院</option>
                                        
                                            <option value="2164" >湖南铁道职业技术学院</option>
                                        
                                            <option value="2165" >湖南铁路科技职业技术学院</option>
                                        
                                            <option value="2166" >湖南同德职业学院</option>
                                        
                                            <option value="2167" >湖南网络工程职业学院</option>
                                        
                                            <option value="2168" >湖南现代物流职业技术学院</option>
                                        
                                            <option value="2169" >湖南信息科学职业学院</option>
                                        
                                            <option value="2170" >湖南信息职业技术学院</option>
                                        
                                            <option value="2171" >湖南行政学院</option>
                                        
                                            <option value="2172" >湖南冶金职业技术学院</option>
                                        
                                            <option value="2173" >湖南艺术职业学院</option>
                                        
                                            <option value="2174" >湖南中医药高等专科学校</option>
                                        
                                            <option value="2175" >怀化医学高等专科学校</option>
                                        
                                            <option value="2176" >怀化职业技术学院</option>
                                        
                                            <option value="2177" >娄底理工学院</option>
                                        
                                            <option value="2178" >娄底市卫生学校</option>
                                        
                                            <option value="2179" >娄底职业技术学院</option>
                                        
                                            <option value="2180" >邵阳医学高等专科学校</option>
                                        
                                            <option value="2181" >邵阳职业技术学院</option>
                                        
                                            <option value="2182" >湘潭职业技术学院</option>
                                        
                                            <option value="2183" >湘西民族职业技术学院</option>
                                        
                                            <option value="2184" >潇湘职业学院</option>
                                        
                                            <option value="2185" >益阳职业技术学院</option>
                                        
                                            <option value="2186" >永州职业技术学院</option>
                                        
                                            <option value="2187" >岳阳职业技术学院</option>
                                        
                                            <option value="2188" >张家界航空工业职业技术学院</option>
                                        
                                            <option value="2189" >株洲师范高等专科学校</option>
                                        
                                            <option value="2190" >株洲职业技术学院</option>
                                        
                                            <option value="2191" >湘潭大学兴湘学院</option>
                                        
                                            <option value="2192" >湖南工业大学科技学院</option>
                                        
                                            <option value="2193" >湖南科技大学潇湘学院</option>
                                        
                                            <option value="2194" >南华大学船山学院</option>
                                        
                                            <option value="2195" >湖南商学院北津学院</option>
                                        
                                            <option value="2196" >湖南师范大学树达学院</option>
                                        
                                            <option value="2197" >湖南农业大学东方科技学院</option>
                                        
                                            <option value="2198" >中南林业科技大学涉外学院</option>
                                        
                                            <option value="2199" >湖南文理学院芙蓉学院</option>
                                        
                                            <option value="2200" >湖南理工学院南湖学院</option>
                                        
                                            <option value="2201" >衡阳师范学院南岳学院</option>
                                        
                                            <option value="2202" >湖南工程学院应用技术学院</option>
                                        
                                            <option value="2203" >湖南中医药大学湘杏学院</option>
                                        
                                            <option value="2204" >吉首大学张家界学院</option>
                                        
                                            <option value="2205" >长沙理工大学城南学院</option>
                                        
                                            <option value="2206" >湖南都市职业学院</option>
                                        
                                            <option value="2207" >湖南电子科技职业学院</option>
                                        
                                            <option value="2208" >湖南外国语职业学院</option>
                                        
                                            <option value="2209" >湖南生物与机电工程职业技术学院</option>
                                        
                                            <option value="2210" >湖南科技工业职业技术学院</option>
                                        
                                            <option value="2211" >衡阳工业职工大学</option>
                                        
                                            <option value="2212" >湘西民族教师进修学院</option>
                                        
                                            <option value="2213" >湖南有色金属职工大学</option>
                                        
                                            <option value="2214" >湖南纺织职工大学</option>
                                        
                                            <option value="2215" >湖南金融技术职工大学</option>
                                        
                                            <option value="2216" >益阳教育学院</option>
                                        
                                            <option value="2217" >长沙工业职工大学</option>
                                        
                                            <option value="2218" >湖南兵器工业职工大学</option>
                                        
                                            <option value="2219" >长沙教育学院</option>
                                        
                                            <option value="2220" >衡阳有色冶金职工大学</option>
                                        
                                            <option value="2221" >株洲市职工大学</option>
                                        
                                            <option value="2222" >湖南工业科技职工大学</option>
                                        
                                            <option value="2223" >南方动力机械公司职工工学院</option>
                                        
                                            <option value="2224" >益阳医学高等专科学校</option>
                                        
                                            <option value="2225" >湖南师范大学法学院</option>
                                        
                                            <option value="2226" >湖南电气职业技术学院</option>
                                        
                                            <option value="2227" >武汉大学</option>
                                        
                                            <option value="2228" >华中科技大学</option>
                                        
                                            <option value="2229" >华中农业大学</option>
                                        
                                            <option value="2230" >武汉理工大学</option>
                                        
                                            <option value="2231" >中国地质大学（武汉）</option>
                                        
                                            <option value="2232" >中南财经政法大学</option>
                                        
                                            <option value="2233" >中南民族大学</option>
                                        
                                            <option value="2234" >华中师范大学</option>
                                        
                                            <option value="2235" >武汉轻工大学</option>
                                        
                                            <option value="2236" >武汉纺织大学</option>
                                        
                                            <option value="2237" >湖北中医药大学</option>
                                        
                                            <option value="2238" >湖北经济学院</option>
                                        
                                            <option value="2239" >湖北警官学院</option>
                                        
                                            <option value="2240" >武汉体育学院</option>
                                        
                                            <option value="2241" >湖北美术学院</option>
                                        
                                            <option value="2242" >武汉音乐学院</option>
                                        
                                            <option value="2243" >武汉生物工程学院</option>
                                        
                                            <option value="2244" >湖北工业大学</option>
                                        
                                            <option value="2245" >湖北大学</option>
                                        
                                            <option value="2246" >江汉大学</option>
                                        
                                            <option value="2247" >武汉工业大学</option>
                                        
                                            <option value="2248" >武汉科技大学</option>
                                        
                                            <option value="2249" >湖北美术学院继续教育学院</option>
                                        
                                            <option value="2250" >华中农业大学楚天学院</option>
                                        
                                            <option value="2251" >湖北科技职业学院</option>
                                        
                                            <option value="2252" >三峡旅游职业技术学院</option>
                                        
                                            <option value="2253" >武汉广播电视大学</option>
                                        
                                            <option value="2254" >长江大学</option>
                                        
                                            <option value="2255" >三峡大学</option>
                                        
                                            <option value="2256" >湖北汽车工业学院</option>
                                        
                                            <option value="2257" >湖北医药学院</option>
                                        
                                            <option value="2258" >湖北工程学院</option>
                                        
                                            <option value="2259" >湖北师范学院</option>
                                        
                                            <option value="2260" >湖北理工学院</option>
                                        
                                            <option value="2261" >黄冈师院</option>
                                        
                                            <option value="2262" >湖北民族学院</option>
                                        
                                            <option value="2263" >湖北文理学院</option>
                                        
                                            <option value="2264" >湖北科技学院</option>
                                        
                                            <option value="2265" >长江工程职业技术学院</option>
                                        
                                            <option value="2266" >长江职业学院</option>
                                        
                                            <option value="2267" >鄂东职业技术学院</option>
                                        
                                            <option value="2268" >鄂州大学</option>
                                        
                                            <option value="2269" >恩施职业技术学院</option>
                                        
                                            <option value="2270" >湖北财经高等专科学校</option>
                                        
                                            <option value="2271" >湖北财税职业学院</option>
                                        
                                            <option value="2272" >湖北城市建设职业技术学院</option>
                                        
                                            <option value="2273" >湖北工业大学商贸学院</option>
                                        
                                            <option value="2274" >湖北国土资源职业学院</option>
                                        
                                            <option value="2275" >湖北黄石机电职业技术学院</option>
                                        
                                            <option value="2276" >湖北交通职业技术学院</option>
                                        
                                            <option value="2277" >湖北第二师范学院</option>
                                        
                                            <option value="2278" >湖北经济管理干部学院</option>
                                        
                                            <option value="2279" >湖北开放职业学院</option>
                                        
                                            <option value="2280" >湖北民族学院科技学院</option>
                                        
                                            <option value="2281" >湖北轻工职业技术学院</option>
                                        
                                            <option value="2282" >湖北三峡职业技术学院</option>
                                        
                                            <option value="2283" >湖北生态工程职业技术学院</option>
                                        
                                            <option value="2284" >湖北生物科技职业学院</option>
                                        
                                            <option value="2285" >湖北省水利水电职业技术学院</option>
                                        
                                            <option value="2286" >湖北师范学院文理学院</option>
                                        
                                            <option value="2287" >湖北艺术职业学院</option>
                                        
                                            <option value="2288" >湖北职业技术学院</option>
                                        
                                            <option value="2289" >湖北中医药高等专科学校</option>
                                        
                                            <option value="2290" >黄冈科技职业学院</option>
                                        
                                            <option value="2291" >黄冈职业技术学院</option>
                                        
                                            <option value="2292" >江汉艺术职业学院</option>
                                        
                                            <option value="2293" >荆楚理工学院</option>
                                        
                                            <option value="2294" >荆州职业技术学院</option>
                                        
                                            <option value="2295" >荆州理工职业学院</option>
                                        
                                            <option value="2296" >沙洋师范高等专科学校</option>
                                        
                                            <option value="2297" >十堰职业技术学院</option>
                                        
                                            <option value="2298" >随州职业技术学院</option>
                                        
                                            <option value="2299" >武汉船舶职业技术学院</option>
                                        
                                            <option value="2300" >武汉电力职业技术学院</option>
                                        
                                            <option value="2301" >武汉工程职业技术学院</option>
                                        
                                            <option value="2302" >武汉工业职业技术学院</option>
                                        
                                            <option value="2303" >武汉航海职业技术学院</option>
                                        
                                            <option value="2304" >武汉交通职业学院</option>
                                        
                                            <option value="2305" >武汉警官职业学院</option>
                                        
                                            <option value="2306" >武汉科技职业学院</option>
                                        
                                            <option value="2307" >武汉理工大学华夏学院</option>
                                        
                                            <option value="2308" >武汉民政职业学院</option>
                                        
                                            <option value="2309" >武汉软件工程职业学院</option>
                                        
                                            <option value="2310" >武汉商贸学院</option>
                                        
                                            <option value="2311" >武汉商业服务学院</option>
                                        
                                            <option value="2312" >武汉时代职业学院</option>
                                        
                                            <option value="2313" >武汉铁路职业技术学院</option>
                                        
                                            <option value="2314" >武汉外语外事职业学院</option>
                                        
                                            <option value="2315" >武汉信息传播职业技术学院</option>
                                        
                                            <option value="2316" >武汉职业技术学院</option>
                                        
                                            <option value="2317" >仙桃职业学院</option>
                                        
                                            <option value="2318" >咸宁职业技术学院</option>
                                        
                                            <option value="2319" >襄樊职业技术学院</option>
                                        
                                            <option value="2320" >湖北工程学院新技术学院</option>
                                        
                                            <option value="2321" >郧阳师范高等专科学校</option>
                                        
                                            <option value="2322" >武汉长江工商学院</option>
                                        
                                            <option value="2323" >黄冈广播电视大学</option>
                                        
                                            <option value="2324" >华中科技大学文华学院</option>
                                        
                                            <option value="2325" >汉口学院</option>
                                        
                                            <option value="2326" >湖北大学知行学院</option>
                                        
                                            <option value="2327" >三峡大学科技学院</option>
                                        
                                            <option value="2328" >武昌理工学院</option>
                                        
                                            <option value="2329" >湖北工业大学工程技术学院</option>
                                        
                                            <option value="2330" >武汉工业学院工商学院</option>
                                        
                                            <option value="2331" >武汉工程大学邮电与信息工程学院</option>
                                        
                                            <option value="2332" >武汉科技学院外经贸学院</option>
                                        
                                            <option value="2333" >江汉大学文理学院</option>
                                        
                                            <option value="2334" >湖北汽车工业学院科技学院</option>
                                        
                                            <option value="2335" >湖北经济学院法商学院</option>
                                        
                                            <option value="2336" >武汉体育学院体育科技学院</option>
                                        
                                            <option value="2337" >湖北医药学院药护学院</option>
                                        
                                            <option value="2338" >湖北文理学院理工学院</option>
                                        
                                            <option value="2339" >中国地质大学江城学院</option>
                                        
                                            <option value="2340" >长江大学文理学院</option>
                                        
                                            <option value="2341" >长江大学工程技术学院</option>
                                        
                                            <option value="2342" >华中师范大学武汉传媒学院</option>
                                        
                                            <option value="2343" >武汉东湖学院</option>
                                        
                                            <option value="2344" >中南财经政法武汉学院</option>
                                        
                                            <option value="2345" >华中科技大学武昌分校</option>
                                        
                                            <option value="2346" >武汉工贸职业学院</option>
                                        
                                            <option value="2347" >三峡电力职业学院</option>
                                        
                                            <option value="2348" >湖北青年职业学院</option>
                                        
                                            <option value="2349" >武汉语言文化职业学院</option>
                                        
                                            <option value="2350" >黄石职业技术学院</option>
                                        
                                            <option value="2351" >海军工程大学</option>
                                        
                                            <option value="2352" >湖北广播电视大学</option>
                                        
                                            <option value="2353" >武汉科技大学城市学院</option>
                                        
                                            <option value="2354" >宜昌市商业学校</option>
                                        
                                            <option value="2355" >湖北澳新教育专修学院</option>
                                        
                                            <option value="2356" >武汉城市建设学院</option>
                                        
                                            <option value="2357" >湖北孝感职业技术学院</option>
                                        
                                            <option value="2358" >葛洲坝水电工程学院</option>
                                        
                                            <option value="2359" >武汉冶金管理干部学院</option>
                                        
                                            <option value="2360" >武汉城市职业学院</option>
                                        
                                            <option value="2361" >武汉大学珞珈学院</option>
                                        
                                            <option value="2362" >郑州大学</option>
                                        
                                            <option value="2363" >河南工业大学</option>
                                        
                                            <option value="2364" >河南农业大学</option>
                                        
                                            <option value="2365" >华北水利水电学院</option>
                                        
                                            <option value="2366" >郑州轻工业学院</option>
                                        
                                            <option value="2367" >郑州航空工业管理学院</option>
                                        
                                            <option value="2368" >黄河科技学院</option>
                                        
                                            <option value="2369" >中原工学院</option>
                                        
                                            <option value="2370" >河南中医学院</option>
                                        
                                            <option value="2371" >河南财经政法学院</option>
                                        
                                            <option value="2372" >郑州城市职业学院</option>
                                        
                                            <option value="2373" >新乡学院</option>
                                        
                                            <option value="2374" >开封文化艺术职业学院</option>
                                        
                                            <option value="2375" >长垣博大烹饪职业技术学院</option>
                                        
                                            <option value="2376" >河南理工大学高等职业学院</option>
                                        
                                            <option value="2377" >郑州成功财经学院</option>
                                        
                                            <option value="2378" >安阳职业技术学院</option>
                                        
                                            <option value="2379" >河南大学</option>
                                        
                                            <option value="2380" >河南科技大学</option>
                                        
                                            <option value="2381" >洛阳师范学院</option>
                                        
                                            <option value="2382" >安阳工学院</option>
                                        
                                            <option value="2383" >安阳师范学院</option>
                                        
                                            <option value="2384" >南阳理工学院</option>
                                        
                                            <option value="2385" >南阳师范学院</option>
                                        
                                            <option value="2386" >河南城建学院</option>
                                        
                                            <option value="2387" >平顶山学院</option>
                                        
                                            <option value="2388" >新乡医学院</option>
                                        
                                            <option value="2389" >河南科技学院</option>
                                        
                                            <option value="2390" >河南师范大学</option>
                                        
                                            <option value="2391" >信阳师范学院</option>
                                        
                                            <option value="2392" >商丘师范学院</option>
                                        
                                            <option value="2393" >周口师范学院</option>
                                        
                                            <option value="2394" >黄淮学院</option>
                                        
                                            <option value="2395" >许昌学院</option>
                                        
                                            <option value="2396" >河南理工学院</option>
                                        
                                            <option value="2397" >河南财政税务高等专科学校</option>
                                        
                                            <option value="2398" >河南工程学院</option>
                                        
                                            <option value="2399" >河南工业贸易职业学院</option>
                                        
                                            <option value="2400" >河南工业职业技术学院</option>
                                        
                                            <option value="2401" >河南警察学院</option>
                                        
                                            <option value="2402" >河南广播影视学院</option>
                                        
                                            <option value="2403" >河南机电高等专科学校</option>
                                        
                                            <option value="2404" >河南检察职业学院</option>
                                        
                                            <option value="2405" >河南交通职业技术学院</option>
                                        
                                            <option value="2406" >河南教育学院</option>
                                        
                                            <option value="2407" >河南经贸职业学院</option>
                                        
                                            <option value="2408" >河南农业职业学院</option>
                                        
                                            <option value="2409" >河南商业高等专科学校</option>
                                        
                                            <option value="2410" >河南省工商行政管理广播电视大学</option>
                                        
                                            <option value="2411" >河南司法警官职业学院</option>
                                        
                                            <option value="2412" >河南新华电脑学院</option>
                                        
                                            <option value="2413" >河南职业技术学院</option>
                                        
                                            <option value="2414" >河南质量工程职业学院</option>
                                        
                                            <option value="2415" >鹤壁职业技术学院</option>
                                        
                                            <option value="2416" >黄河水利职业技术学院</option>
                                        
                                            <option value="2417" >济源职业技术学院</option>
                                        
                                            <option value="2418" >焦作大学</option>
                                        
                                            <option value="2419" >焦作师范高等专科学校</option>
                                        
                                            <option value="2420" >开封大学</option>
                                        
                                            <option value="2421" >开封市电子科技专修学校</option>
                                        
                                            <option value="2422" >洛阳大学</option>
                                        
                                            <option value="2423" >洛阳理工学院</option>
                                        
                                            <option value="2424" >漯河医学高等专科学校</option>
                                        
                                            <option value="2425" >漯河职业技术学院</option>
                                        
                                            <option value="2426" >南阳医学高等专科学校</option>
                                        
                                            <option value="2427" >平顶山教育学院</option>
                                        
                                            <option value="2428" >平顶山工业职业技术学院</option>
                                        
                                            <option value="2429" >三门峡职业技术学院</option>
                                        
                                            <option value="2430" >商丘科技职业学院</option>
                                        
                                            <option value="2431" >商丘医学高等专科学校</option>
                                        
                                            <option value="2432" >商丘职业技术学院</option>
                                        
                                            <option value="2433" >嵩山少林武术职业学院</option>
                                        
                                            <option value="2434" >铁道警官高等专科学校</option>
                                        
                                            <option value="2435" >信阳农业高等专科学校</option>
                                        
                                            <option value="2436" >信阳职业技术学院</option>
                                        
                                            <option value="2437" >许昌职业技术学院</option>
                                        
                                            <option value="2438" >永城职业学院</option>
                                        
                                            <option value="2439" >郑州大学西亚斯国际学院</option>
                                        
                                            <option value="2440" >郑州电力高等专科学校</option>
                                        
                                            <option value="2441" >郑州电子信息职业技术学院</option>
                                        
                                            <option value="2442" >郑州工业安全职业学院</option>
                                        
                                            <option value="2443" >郑州华信学院</option>
                                        
                                            <option value="2444" >郑州交通学院</option>
                                        
                                            <option value="2445" >郑州经贸职业学院</option>
                                        
                                            <option value="2446" >郑州科技职业学院</option>
                                        
                                            <option value="2447" >郑州旅游职业学院</option>
                                        
                                            <option value="2448" >郑州牧业工程高等专科学校</option>
                                        
                                            <option value="2449" >郑州师范学院</option>
                                        
                                            <option value="2450" >郑州澍青医学高等专科学校</option>
                                        
                                            <option value="2451" >郑州铁路职业技术学院</option>
                                        
                                            <option value="2452" >郑州信息科技职业学院</option>
                                        
                                            <option value="2453" >郑州科技学院</option>
                                        
                                            <option value="2454" >中州大学</option>
                                        
                                            <option value="2455" >周口职业技术学院</option>
                                        
                                            <option value="2456" >郑州升达经贸管理学院</option>
                                        
                                            <option value="2457" >洛阳工业高等专科学校</option>
                                        
                                            <option value="2458" >河南职工医学院</option>
                                        
                                            <option value="2459" >河南科技学院新科学院</option>
                                        
                                            <option value="2460" >河南理工大学万方科技学院</option>
                                        
                                            <option value="2461" >中原工学院信息商务学院</option>
                                        
                                            <option value="2462" >安阳师范学院人文管理学院</option>
                                        
                                            <option value="2463" >商丘学院</option>
                                        
                                            <option value="2464" >河南财经学院成功学院</option>
                                        
                                            <option value="2465" >开封教育学院</option>
                                        
                                            <option value="2466" >河南卫生职工学院</option>
                                        
                                            <option value="2467" >河南建筑职业技术学院</option>
                                        
                                            <option value="2468" >河南大学民生学院</option>
                                        
                                            <option value="2469" >河南师范大学新联学院</option>
                                        
                                            <option value="2470" >新乡医学院三全学院</option>
                                        
                                            <option value="2471" >信阳师范学院华锐学院</option>
                                        
                                            <option value="2472" >郑州电力职业技术学院</option>
                                        
                                            <option value="2473" >周口科技职业学院</option>
                                        
                                            <option value="2474" >河南省广播电视大学</option>
                                        
                                            <option value="2475" >中国人民解放军外国语学院</option>
                                        
                                            <option value="2476" >清华IT河南校区</option>
                                        
                                            <option value="2477" >第一拖拉机制造厂拖拉机学院</option>
                                        
                                            <option value="2478" >郑州煤炭管理干部学院</option>
                                        
                                            <option value="2479" >河南工业大学化学工业职业学院</option>
                                        
                                            <option value="2480" >河南省轻工业职工大学</option>
                                        
                                            <option value="2481" >郑州交通职业学院</option>
                                        
                                            <option value="2482" >郑州牧业高等专科学校</option>
                                        
                                            <option value="2483" >郑州布瑞达理工职业学院</option>
                                        
                                            <option value="2484" >河南医科大学教育中心</option>
                                        
                                            <option value="2485" >郑州轻工业轻工职业学院</option>
                                        
                                            <option value="2486" >山东大学</option>
                                        
                                            <option value="2487" >中国海洋大学</option>
                                        
                                            <option value="2488" >济南大学</option>
                                        
                                            <option value="2489" >山东建筑大学</option>
                                        
                                            <option value="2490" >山东师范大学</option>
                                        
                                            <option value="2491" >山东财经大学</option>
                                        
                                            <option value="2492" >山东中医药大学</option>
                                        
                                            <option value="2493" >山东轻工业学院</option>
                                        
                                            <option value="2494" >山东交通学院</option>
                                        
                                            <option value="2495" >山东警察学院</option>
                                        
                                            <option value="2496" >山东体育学院</option>
                                        
                                            <option value="2497" >山东艺术学院</option>
                                        
                                            <option value="2498" >山东工艺美术学院</option>
                                        
                                            <option value="2499" >山东海事职业学院</option>
                                        
                                            <option value="2500" >曲阜师范大学</option>
                                        
                                            <option value="2501" >北京电影学院现代创意媒体学院</option>
                                        
                                            <option value="2502" >烟台大学</option>
                                        
                                            <option value="2503" >鲁东大学</option>
                                        
                                            <option value="2504" >烟台南山学院</option>
                                        
                                            <option value="2505" >山东工商学院</option>
                                        
                                            <option value="2506" >青岛大学</option>
                                        
                                            <option value="2507" >山东科技大学</option>
                                        
                                            <option value="2508" >青岛科技大学</option>
                                        
                                            <option value="2509" >青岛理工大学</option>
                                        
                                            <option value="2510" >青岛农业大学</option>
                                        
                                            <option value="2511" >滨海学院</option>
                                        
                                            <option value="2512" >中国石油大学（华东）</option>
                                        
                                            <option value="2513" >聊城大学</option>
                                        
                                            <option value="2514" >山东理工大学</option>
                                        
                                            <option value="2515" >潍坊医学院</option>
                                        
                                            <option value="2516" >潍坊学院</option>
                                        
                                            <option value="2517" >泰山医学院</option>
                                        
                                            <option value="2518" >山东财政学院</option>
                                        
                                            <option value="2519" >泰山学院</option>
                                        
                                            <option value="2520" >山东农业大学</option>
                                        
                                            <option value="2521" >滨州医学院</option>
                                        
                                            <option value="2522" >滨州学院</option>
                                        
                                            <option value="2523" >济宁医学院</option>
                                        
                                            <option value="2524" >临沂大学</option>
                                        
                                            <option value="2525" >德州学院</option>
                                        
                                            <option value="2526" >枣庄学院</option>
                                        
                                            <option value="2527" >菏泽学院</option>
                                        
                                            <option value="2528" >滨州职业学院</option>
                                        
                                            <option value="2529" >德州教育学院</option>
                                        
                                            <option value="2530" >德州科技职业学院</option>
                                        
                                            <option value="2531" >东营职业学院</option>
                                        
                                            <option value="2532" >哈尔滨工业大学(威海)</option>
                                        
                                            <option value="2533" >菏泽医学专科学校</option>
                                        
                                            <option value="2534" >济南工程职业技术学院</option>
                                        
                                            <option value="2535" >山东职业学院</option>
                                        
                                            <option value="2536" >济南职业学院</option>
                                        
                                            <option value="2537" >济宁学院</option>
                                        
                                            <option value="2538" >济宁职业技术学院</option>
                                        
                                            <option value="2539" >莱芜职业技术学院</option>
                                        
                                            <option value="2540" >聊城职业技术学院</option>
                                        
                                            <option value="2541" >青岛飞洋职业技术学院</option>
                                        
                                            <option value="2542" >青岛港湾职业技术学院</option>
                                        
                                            <option value="2543" >青岛恒星职业技术学院</option>
                                        
                                            <option value="2544" >青岛黄海职业学院</option>
                                        
                                            <option value="2545" >青岛求实职业技术学院</option>
                                        
                                            <option value="2546" >青岛远洋船员学院</option>
                                        
                                            <option value="2547" >青岛职业技术学院</option>
                                        
                                            <option value="2548" >曲阜远东职业技术学院</option>
                                        
                                            <option value="2549" >日照职业技术学院</option>
                                        
                                            <option value="2550" >山东大王职业学院</option>
                                        
                                            <option value="2551" >山东大学威海分校</option>
                                        
                                            <option value="2552" >山东电力高等专科学校</option>
                                        
                                            <option value="2553" >山东电子职业技术学院</option>
                                        
                                            <option value="2554" >山东服装职业学院</option>
                                        
                                            <option value="2555" >山东工业职业学院</option>
                                        
                                            <option value="2556" >山东华宇职业技术学院</option>
                                        
                                            <option value="2557" >山东化工职业学院</option>
                                        
                                            <option value="2558" >山东交通职业学院</option>
                                        
                                            <option value="2559" >山东经贸职业学院</option>
                                        
                                            <option value="2560" >山东凯文科技职业学院</option>
                                        
                                            <option value="2561" >山东科技职业学院</option>
                                        
                                            <option value="2562" >山东劳动职业技术学院</option>
                                        
                                            <option value="2563" >山东力明科技职业学院</option>
                                        
                                            <option value="2564" >山东旅游职业学院</option>
                                        
                                            <option value="2565" >山东铝业职业学院</option>
                                        
                                            <option value="2566" >山东商业职业技术学院</option>
                                        
                                            <option value="2567" >山东胜利职业学院</option>
                                        
                                            <option value="2568" >山东省青岛酒店管理学院</option>
                                        
                                            <option value="2569" >山东水利职业技术学院</option>
                                        
                                            <option value="2570" >山东省潍坊艺术学校</option>
                                        
                                            <option value="2571" >山东圣翰财贸职业学院</option>
                                        
                                            <option value="2572" >山东水利职业学院</option>
                                        
                                            <option value="2573" >山东水利专科学校</option>
                                        
                                            <option value="2574" >山东丝绸纺织职业学院</option>
                                        
                                            <option value="2575" >山东外国语职业学院</option>
                                        
                                            <option value="2576" >山东外贸职业学院山</option>
                                        
                                            <option value="2577" >东外事翻译学院威海分校</option>
                                        
                                            <option value="2578" >山东外事翻译职业学院</option>
                                        
                                            <option value="2579" >山东万杰医学院</option>
                                        
                                            <option value="2580" >山东威海财经专修学院</option>
                                        
                                            <option value="2581" >山东威海外国语进修学院</option>
                                        
                                            <option value="2582" >山东现代职业学院</option>
                                        
                                            <option value="2583" >山东协和职业技术学院</option>
                                        
                                            <option value="2584" >山东信息职业技术学院</option>
                                        
                                            <option value="2585" >山东行政学院(山东经济管理干部学院)</option>
                                        
                                            <option value="2586" >山东杏林科技职业学院</option>
                                        
                                            <option value="2587" >山东畜牧兽医职业学院</option>
                                        
                                            <option value="2588" >山东药品食品职业学院</option>
                                        
                                            <option value="2589" >山东医学高等专科学校</option>
                                        
                                            <option value="2590" >山东英才学院</option>
                                        
                                            <option value="2591" >山东政法学院</option>
                                        
                                            <option value="2592" >山东中医药高等专科学校</option>
                                        
                                            <option value="2593" >泰山职业技术学院</option>
                                        
                                            <option value="2594" >万杰科技学院</option>
                                        
                                            <option value="2595" >威海市广播电视大学</option>
                                        
                                            <option value="2596" >威海市交通学校</option>
                                        
                                            <option value="2597" >威海职业(技术)学院</option>
                                        
                                            <option value="2598" >威海中加国际工商学院</option>
                                        
                                            <option value="2599" >潍坊工商职业学院</option>
                                        
                                            <option value="2600" >潍坊工程职业学院</option>
                                        
                                            <option value="2601" >潍坊科技学院</option>
                                        
                                            <option value="2602" >潍坊职业学院</option>
                                        
                                            <option value="2603" >文登师范学院</option>
                                        
                                            <option value="2604" >烟台职业学院</option>
                                        
                                            <option value="2605" >枣庄科技职业学院</option>
                                        
                                            <option value="2606" >中国石油大学(华东)东营校区</option>
                                        
                                            <option value="2607" >淄博广播电视大学</option>
                                        
                                            <option value="2608" >淄博恒星外国语学院</option>
                                        
                                            <option value="2609" >淄博科技职业学院</option>
                                        
                                            <option value="2610" >淄博师范高等专科学校</option>
                                        
                                            <option value="2611" >淄博职业学院</option>
                                        
                                            <option value="2612" >齐鲁师范学院</option>
                                        
                                            <option value="2613" >山东技师学院</option>
                                        
                                            <option value="2614" >日照广播电视大学</option>
                                        
                                            <option value="2615" >山东城市建设职业学院</option>
                                        
                                            <option value="2616" >烟台工程职业技术学院</option>
                                        
                                            <option value="2617" >山东商务职业学院</option>
                                        
                                            <option value="2618" >烟台汽车工程职业学院</option>
                                        
                                            <option value="2619" >山东省农业管理干部学院</option>
                                        
                                            <option value="2620" >山东青年政治学院</option>
                                        
                                            <option value="2621" >山东省工会管理干部学院</option>
                                        
                                            <option value="2622" >山东广播电视大学</option>
                                        
                                            <option value="2623" >德州职业技术学院</option>
                                        
                                            <option value="2624" >中国石油大学胜利学院</option>
                                        
                                            <option value="2625" >烟台大学文经学院</option>
                                        
                                            <option value="2626" >青岛理工大学琴岛学院</option>
                                        
                                            <option value="2627" >山东科技大学泰山科技学院</option>
                                        
                                            <option value="2628" >山东财经大学燕山学院</option>
                                        
                                            <option value="2629" >青岛工学院</option>
                                        
                                            <option value="2630" >青岛农业大学海都学院</option>
                                        
                                            <option value="2631" >曲阜师范大学杏坛学院</option>
                                        
                                            <option value="2632" >山东财经大学东方学院</option>
                                        
                                            <option value="2633" >山东师范大学历山学院</option>
                                        
                                            <option value="2634" >聊城大学东昌学院</option>
                                        
                                            <option value="2635" >济南大学泉城学院</option>
                                        
                                            <option value="2636" >中国农业大学（烟台校区）</option>
                                        
                                            <option value="2637" >日照师范学校</option>
                                        
                                            <option value="2638" >山东艺术设计学院</option>
                                        
                                            <option value="2639" >滨州技术学院</option>
                                        
                                            <option value="2640" >山东冶金技术学院</option>
                                        
                                            <option value="2641" >山东省济宁市技术学院</option>
                                        
                                            <option value="2642" >济南广播电视大学</option>
                                        
                                            <option value="2643" >山东省聊城教育学院</option>
                                        
                                            <option value="2644" >山东财政职工大学</option>
                                        
                                            <option value="2645" >青岛市广播电视大学</option>
                                        
                                            <option value="2646" >青岛理工大学（临沂）</option>
                                        
                                            <option value="2647" >山东兵器工业职工大学</option>
                                        
                                            <option value="2648" >新汶矿务局职工大学</option>
                                        
                                            <option value="2649" >山东工贸职业学院</option>
                                        
                                            <option value="2650" >山东新华学院</option>
                                        
                                            <option value="2651" >山东省医学科学院</option>
                                        
                                            <option value="2652" >山东化工技术学院</option>
                                        
                                            <option value="2653" >山东海天软件工程学院</option>
                                        
                                            <option value="2654" >青岛军政人文大学信息工程管理学院</option>
                                        
                                            <option value="2655" >山东省第二技术学院</option>
                                        
                                            <option value="2656" >临沂职业学院</option>
                                        
                                            <option value="2657" >青岛北港学院</option>
                                        
                                            <option value="2658" >山东司法警官职业学院</option>
                                        
                                            <option value="2659" >山东文化产业职业学院</option>
                                        
                                            <option value="2660" >菏泽家政职业学院</option>
                                        
                                            <option value="2661" >山东理工职业学院</option>
                                        
                                            <option value="2662" >威海工业技术学校(原二职)</option>
                                        
                                            <option value="2663" >山东传媒学院</option>
                                        
                                            <option value="2664" >营口电视大学</option>
                                        
                                            <option value="2665" >山东传媒职业学院</option>
                                        
                                            <option value="2666" >山东省益都卫生学校</option>
                                        
                                            <option value="2667" >山东烟台建文学院</option>
                                        
                                            <option value="2668" >山东省潍坊卫生学校</option>
                                        
                                            <option value="2669" >寿光科技学院</option>
                                        
                                            <option value="2670" >山东省广播电视大学</option>
                                        
                                            <option value="2671" >烟台城乡建设学校</option>
                                        
                                            <option value="2672" >青岛市电子信息技术学校</option>
                                        
                                            <option value="2673" >山东医药技师学院</option>
                                        
                                            <option value="2674" >济南协和职业学院</option>
                                        
                                            <option value="2675" >山东黄金技术学院</option>
                                        
                                            <option value="2676" >山东交通学院海运学院</option>
                                        
                                            <option value="2677" >山东工业技师学院</option>
                                        
                                            <option value="2678" >山东女子学院</option>
                                        
                                            <option value="2679" >重庆大学</option>
                                        
                                            <option value="2680" >西南大学</option>
                                        
                                            <option value="2681" >重庆师范大学</option>
                                        
                                            <option value="2682" >西南政法大学</option>
                                        
                                            <option value="2683" >重庆交通大学</option>
                                        
                                            <option value="2684" >重庆邮电大学</option>
                                        
                                            <option value="2685" >重庆医科大学</option>
                                        
                                            <option value="2686" >重庆科技学院</option>
                                        
                                            <option value="2687" >重庆理工大学</option>
                                        
                                            <option value="2688" >长江师范学院</option>
                                        
                                            <option value="2689" >四川外国语学院</option>
                                        
                                            <option value="2690" >四川美术学院</option>
                                        
                                            <option value="2691" >重庆三峡学院</option>
                                        
                                            <option value="2692" >重庆文理学院</option>
                                        
                                            <option value="2693" >重庆化工职业学院</option>
                                        
                                            <option value="2694" >后勤工程学院</option>
                                        
                                            <option value="2695" >重庆能源职业学院</option>
                                        
                                            <option value="2696" >重庆商务职业学院</option>
                                        
                                            <option value="2697" >重庆旅游职业学院</option>
                                        
                                            <option value="2698" >重庆五一高级技师学院</option>
                                        
                                            <option value="2699" >重庆通信学院</option>
                                        
                                            <option value="2700" >重庆轻工职业学院</option>
                                        
                                            <option value="2701" >重庆经贸职业学院</option>
                                        
                                            <option value="2702" >重庆公共运输职业学院</option>
                                        
                                            <option value="2703" >三峡师范学校</option>
                                        
                                            <option value="2704" >重庆艺术工程职业学院</option>
                                        
                                            <option value="2705" >重庆安全技术职业学院</option>
                                        
                                            <option value="2706" >中国人民解放军第三军医大学</option>
                                        
                                            <option value="2707" >重庆电信职业学院</option>
                                        
                                            <option value="2708" >重庆房地产职业学院</option>
                                        
                                            <option value="2709" >重庆城市职业学院</option>
                                        
                                            <option value="2710" >重庆电力高等专科学校</option>
                                        
                                            <option value="2711" >重庆电子工程职业学院</option>
                                        
                                            <option value="2712" >重庆航天职业技术学院</option>
                                        
                                            <option value="2713" >重庆工程职业技术学院</option>
                                        
                                            <option value="2714" >重庆工商职业学院</option>
                                        
                                            <option value="2715" >重庆工业职业技术学院</option>
                                        
                                            <option value="2716" >重庆传媒职业学院</option>
                                        
                                            <option value="2717" >重庆海联职业技术学院</option>
                                        
                                            <option value="2718" >重庆机电职业技术学院</option>
                                        
                                            <option value="2719" >重庆警察学院</option>
                                        
                                            <option value="2720" >重庆民生职业技术学院</option>
                                        
                                            <option value="2721" >重庆三峡医药高等专科学校</option>
                                        
                                            <option value="2722" >重庆三峡职业学院</option>
                                        
                                            <option value="2723" >重庆水利电力职业技术学院</option>
                                        
                                            <option value="2724" >重庆信息技术职业学院</option>
                                        
                                            <option value="2725" >重庆医药高等专科学校</option>
                                        
                                            <option value="2726" >重庆正大软件职业技术学院</option>
                                        
                                            <option value="2727" >重庆职业技术学院</option>
                                        
                                            <option value="2728" >重庆教育学院</option>
                                        
                                            <option value="2729" >重庆应用外国语专修学院</option>
                                        
                                            <option value="2730" >重庆大学城市科技学院</option>
                                        
                                            <option value="2731" >西南大学育才学院</option>
                                        
                                            <option value="2732" >四川外语学院重庆南方翻译学院</option>
                                        
                                            <option value="2733" >重庆师范大学涉外商贸学院</option>
                                        
                                            <option value="2734" >重庆工商大学融智学院</option>
                                        
                                            <option value="2735" >重庆工商大学派斯学院</option>
                                        
                                            <option value="2736" >重庆邮电大学移通学院</option>
                                        
                                            <option value="2737" >重庆工贸职业技术学院</option>
                                        
                                            <option value="2738" >重庆青年职业技术学院</option>
                                        
                                            <option value="2739" >重庆城市管理职业学院</option>
                                        
                                            <option value="2740" >重庆财经职业学院</option>
                                        
                                            <option value="2741" >重庆科创职业学院</option>
                                        
                                            <option value="2742" >重庆建筑工程职业学院</option>
                                        
                                            <option value="2743" >重庆五一技师学院</option>
                                        
                                            <option value="2744" >重庆通信学院</option>
                                        
                                            <option value="2745" >西南大学应用技术学院</option>
                                        
                                            <option value="2746" >重庆交通职业学院</option>
                                        
                                            <option value="2747" >重庆电讯职业学院</option>
                                        
                                            <option value="2748" >厦门大学</option>
                                        
                                            <option value="2749" >集美大学</option>
                                        
                                            <option value="2750" >厦门理工学院</option>
                                        
                                            <option value="2751" >泉州轻工职业学院</option>
                                        
                                            <option value="2752" >泉州师范学院软件学院</option>
                                        
                                            <option value="2753" >泉州泰山航海职业学院</option>
                                        
                                            <option value="2754" >宁德师范学院</option>
                                        
                                            <option value="2755" >福州大学</option>
                                        
                                            <option value="2756" >福建师范大学</option>
                                        
                                            <option value="2757" >福建农林大学</option>
                                        
                                            <option value="2758" >福建医科大学</option>
                                        
                                            <option value="2759" >福建工程学院</option>
                                        
                                            <option value="2760" >福建中医药大学</option>
                                        
                                            <option value="2761" >闽江学院</option>
                                        
                                            <option value="2762" >华侨大学</option>
                                        
                                            <option value="2763" >仰恩大学</option>
                                        
                                            <option value="2764" >泉州师范学院</option>
                                        
                                            <option value="2765" >漳州师范</option>
                                        
                                            <option value="2766" >莆田学院</option>
                                        
                                            <option value="2767" >三明学院</option>
                                        
                                            <option value="2768" >龙岩学院</option>
                                        
                                            <option value="2769" >厦门大学嘉庚学院</option>
                                        
                                            <option value="2770" >集美大学诚毅学院</option>
                                        
                                            <option value="2771" >福州大学阳光学院</option>
                                        
                                            <option value="2772" >福州大学至诚学院</option>
                                        
                                            <option value="2773" >福建师范大学协和学院</option>
                                        
                                            <option value="2774" >福建师范大学闽南科技学院</option>
                                        
                                            <option value="2775" >福建农林大学东方学院</option>
                                        
                                            <option value="2776" >福建农林大学金山学院</option>
                                        
                                            <option value="2777" >福建电力职业技术学院</option>
                                        
                                            <option value="2778" >福建对外经济贸易职业技术学院</option>
                                        
                                            <option value="2779" >福建警察学院</option>
                                        
                                            <option value="2780" >福建广播电视大学</option>
                                        
                                            <option value="2781" >福建华南女子职业学院</option>
                                        
                                            <option value="2782" >福建船政交通职业学院</option>
                                        
                                            <option value="2783" >福建教育学院</option>
                                        
                                            <option value="2784" >福建警官职业学院</option>
                                        
                                            <option value="2785" >福建林业职业技术学院</option>
                                        
                                            <option value="2786" >福建农业职业技术学院</option>
                                        
                                            <option value="2787" >福建商业高等专科学校</option>
                                        
                                            <option value="2788" >福建生物工程职业技术学院</option>
                                        
                                            <option value="2789" >福建水利电力职业技术学院</option>
                                        
                                            <option value="2790" >福建卫生职业技术学院</option>
                                        
                                            <option value="2791" >福建信息职业技术学院</option>
                                        
                                            <option value="2792" >福建中医学院五洲科技学院</option>
                                        
                                            <option value="2793" >福州海峡职业技术学院</option>
                                        
                                            <option value="2794" >福州科技职业技术学院</option>
                                        
                                            <option value="2795" >福州黎明职业技术学院</option>
                                        
                                            <option value="2796" >福州软件职业技术学院</option>
                                        
                                            <option value="2797" >福州英华职业学院</option>
                                        
                                            <option value="2798" >福州职业技术学院</option>
                                        
                                            <option value="2799" >黎明职业大学</option>
                                        
                                            <option value="2800" >湄洲湾职业技术学院</option>
                                        
                                            <option value="2801" >闽北职业技术学院</option>
                                        
                                            <option value="2802" >闽西职业技术学院</option>
                                        
                                            <option value="2803" >武夷学院</option>
                                        
                                            <option value="2804" >泉州纺织服装职业学院</option>
                                        
                                            <option value="2805" >闽南理工学院</option>
                                        
                                            <option value="2806" >泉州华光摄影艺术职业学院</option>
                                        
                                            <option value="2807" >泉州经贸职业技术学院</option>
                                        
                                            <option value="2808" >泉州信息职业技术学院</option>
                                        
                                            <option value="2809" >泉州医学高等专科学校</option>
                                        
                                            <option value="2810" >泉州理工学院</option>
                                        
                                            <option value="2811" >三明职业技术学院</option>
                                        
                                            <option value="2812" >厦门海洋职业技术学院</option>
                                        
                                            <option value="2813" >厦门华天涉外职业技术学院</option>
                                        
                                            <option value="2814" >厦门华厦职业学院</option>
                                        
                                            <option value="2815" >厦门南洋学院</option>
                                        
                                            <option value="2816" >厦门兴才职业技术学院</option>
                                        
                                            <option value="2817" >厦门演艺职业学院</option>
                                        
                                            <option value="2818" >漳州职业技术学院</option>
                                        
                                            <option value="2819" >福建政法管理干部学院</option>
                                        
                                            <option value="2820" >厦门城市职业学院</option>
                                        
                                            <option value="2821" >漳州卫生职业学院</option>
                                        
                                            <option value="2822" >江夏学院</option>
                                        
                                            <option value="2823" >福州教育学院</option>
                                        
                                            <option value="2824" >厦门市广播电视大学</option>
                                        
                                            <option value="2825" >福建财会管理干部学院</option>
                                        
                                            <option value="2826" >福建经济管理干部学院</option>
                                        
                                            <option value="2827" >福建省漳州业余大学</option>
                                        
                                            <option value="2828" >龙岩技师学院</option>
                                        
                                            <option value="2829" >德化陶瓷职业技术学院</option>
                                        
                                            <option value="2830" >厦门东海学院</option>
                                        
                                            <option value="2831" >泉州儿童发展职业学院</option>
                                        
                                            <option value="2832" >厦门科技学院</option>
                                        
                                            <option value="2833" >福建儿童发展职业学院</option>
                                        
                                            <option value="2834" >厦门软件职业技术学院</option>
                                        
                                            <option value="2835" >福建艺术职业学校</option>
                                        
                                            <option value="2836" >漳州城市职业学院</option>
                                        
                                            <option value="2837" >漳州天福茶职业技术学院</option>
                                        
                                            <option value="2838" >福州外语外贸学院</option>
                                        
                                            <option value="2839" >福建省艺术职业学院</option>
                                        
                                            <option value="2840" >厦门医学高等专科学校</option>
                                        
                                            <option value="2841" >厦门安防科技学院</option>
                                        
                                            <option value="2842" >漳州吉马职业印刷技术学院</option>
                                        
                                            <option value="2843" >福建体育职业技术学院</option>
                                        
                                            <option value="2844" >厦门安防科技职业学院</option>
                                        
                                            <option value="2845" >厦门技师学院</option>
                                        
                                            <option value="2846" >华侨大学厦门工学院</option>
                                        
                                            <option value="2847" >武夷山职业学院</option>
                                        
                                            <option value="2848" >江西财经大学</option>
                                        
                                            <option value="2849" >南昌大学</option>
                                        
                                            <option value="2850" >华东交通大学</option>
                                        
                                            <option value="2851" >南昌航空大学</option>
                                        
                                            <option value="2852" >南昌工程学院</option>
                                        
                                            <option value="2853" >南昌理工学院</option>
                                        
                                            <option value="2854" >江西中医学院</option>
                                        
                                            <option value="2855" >江西科技师范大学</option>
                                        
                                            <option value="2856" >江西科技大学</option>
                                        
                                            <option value="2857" >江西农业大学</option>
                                        
                                            <option value="2858" >江西师范大学</option>
                                        
                                            <option value="2859" >江西太阳能科技学院</option>
                                        
                                            <option value="2860" >江西医学院上饶分院</option>
                                        
                                            <option value="2861" >江西科技学院</option>
                                        
                                            <option value="2862" >东华理工大学</option>
                                        
                                            <option value="2863" >景德镇陶瓷学院</option>
                                        
                                            <option value="2864" >赣南医学院</option>
                                        
                                            <option value="2865" >赣南师范学院</option>
                                        
                                            <option value="2866" >江西理工大学</option>
                                        
                                            <option value="2867" >上饶师范学院</option>
                                        
                                            <option value="2868" >井冈山大学</option>
                                        
                                            <option value="2869" >宜春学院</option>
                                        
                                            <option value="2870" >九江学院</option>
                                        
                                            <option value="2871" >抚州职业技术学院</option>
                                        
                                            <option value="2872" >赣南教育学院</option>
                                        
                                            <option value="2873" >赣南教育学院</option>
                                        
                                            <option value="2874" >赣西科技职业学院</option>
                                        
                                            <option value="2875" >江西财经职业学院</option>
                                        
                                            <option value="2876" >江西城市职业学院</option>
                                        
                                            <option value="2877" >江西大宇学院</option>
                                        
                                            <option value="2878" >江西电力职业技术学院</option>
                                        
                                            <option value="2879" >江西服装学院</option>
                                        
                                            <option value="2880" >南昌工学院</option>
                                        
                                            <option value="2881" >江西工程职业学院</option>
                                        
                                            <option value="2882" >江西工业工程职业技术学院</option>
                                        
                                            <option value="2883" >江西工业贸易职业技术学院</option>
                                        
                                            <option value="2884" >江西工业职业技术学院</option>
                                        
                                            <option value="2885" >江西警察学院</option>
                                        
                                            <option value="2886" >江西航空职业技术学院</option>
                                        
                                            <option value="2887" >江西护理职业技术学院</option>
                                        
                                            <option value="2888" >江西环境工程职业学院</option>
                                        
                                            <option value="2889" >江西机电职业技术学院</option>
                                        
                                            <option value="2890" >江西建设职业技术学院</option>
                                        
                                            <option value="2891" >江西交通职业技术学院</option>
                                        
                                            <option value="2892" >江西教育学院</option>
                                        
                                            <option value="2893" >江西经济管理干部学院</option>
                                        
                                            <option value="2894" >江西经济管理职业学院</option>
                                        
                                            <option value="2895" >江西科技职业学院</option>
                                        
                                            <option value="2896" >江西旅游商贸职业学院</option>
                                        
                                            <option value="2897" >江西南昌教育学院</option>
                                        
                                            <option value="2898" >江西农业工程职业学院</option>
                                        
                                            <option value="2899" >江西青年职业学院</option>
                                        
                                            <option value="2900" >江西轻工职业技术学院</option>
                                        
                                            <option value="2901" >江西生物科技职业学院</option>
                                        
                                            <option value="2902" >江西省广播电视大学</option>
                                        
                                            <option value="2903" >江西司法警官职业学院</option>
                                        
                                            <option value="2904" >江西陶瓷工艺美术职业学院</option>
                                        
                                            <option value="2905" >江西外语外贸职业学院</option>
                                        
                                            <option value="2906" >江西先锋软件职业技术学院</option>
                                        
                                            <option value="2907" >江西现代职业技术学院</option>
                                        
                                            <option value="2908" >江西信息应用职业技术学院</option>
                                        
                                            <option value="2909" >江西行政管理干部学院</option>
                                        
                                            <option value="2910" >江西艺术职业学院</option>
                                        
                                            <option value="2911" >江西应用技术职业学院</option>
                                        
                                            <option value="2912" >江西渝州科技职业学院</option>
                                        
                                            <option value="2913" >江西制造职业技术学院</option>
                                        
                                            <option value="2914" >江西中医药高等专科学校</option>
                                        
                                            <option value="2915" >景德镇高等专科学校</option>
                                        
                                            <option value="2916" >九江职业大学</option>
                                        
                                            <option value="2917" >九江职业技术学院</option>
                                        
                                            <option value="2918" >南昌钢铁职工大学</option>
                                        
                                            <option value="2919" >南昌师范高等专科学校</option>
                                        
                                            <option value="2920" >南昌市业余大学</option>
                                        
                                            <option value="2921" >南昌市职工科技大学</option>
                                        
                                            <option value="2922" >萍乡学院</option>
                                        
                                            <option value="2923" >上饶职业技术学院</option>
                                        
                                            <option value="2924" >新余钢铁有限责任公司职工大学</option>
                                        
                                            <option value="2925" >新余学院</option>
                                        
                                            <option value="2926" >宜春职业技术学院</option>
                                        
                                            <option value="2927" >鹰潭职业技术学院</option>
                                        
                                            <option value="2928" >江西应用工程职业学院</option>
                                        
                                            <option value="2929" >江西农业大学南昌商学院</option>
                                        
                                            <option value="2930" >江西师范大学科学技术学院</option>
                                        
                                            <option value="2931" >华东交通大学理工学院</option>
                                        
                                            <option value="2932" >江西理工大学应用科学学院</option>
                                        
                                            <option value="2933" >东华理工大学长江学院</option>
                                        
                                            <option value="2934" >南昌航空大学科技学院</option>
                                        
                                            <option value="2935" >江西中医学院科技学院</option>
                                        
                                            <option value="2936" >江西财经大学现代经济管理学院</option>
                                        
                                            <option value="2937" >赣南师范学院科技学院</option>
                                        
                                            <option value="2938" >赣南师范学院科技学院</option>
                                        
                                            <option value="2939" >江西科技师范学院理工学院</option>
                                        
                                            <option value="2940" >南昌大学共青学院</option>
                                        
                                            <option value="2941" >南昌大学科学技术学院</option>
                                        
                                            <option value="2942" >江西泰豪动漫职业学院</option>
                                        
                                            <option value="2943" >江西枫林涉外经贸职业学院</option>
                                        
                                            <option value="2944" >江西中山职业技术学院</option>
                                        
                                            <option value="2945" >江西艺术设计学院</option>
                                        
                                            <option value="2946" >江西师大鹰潭学院</option>
                                        
                                            <option value="2947" >广西大学</option>
                                        
                                            <option value="2948" >广西医科大学</option>
                                        
                                            <option value="2949" >广西民族大学</option>
                                        
                                            <option value="2950" >广西中医药大学</option>
                                        
                                            <option value="2951" >广西师范学院</option>
                                        
                                            <option value="2952" >广西财经学院</option>
                                        
                                            <option value="2953" >广西艺术学院</option>
                                        
                                            <option value="2954" >广西外国语学院</option>
                                        
                                            <option value="2955" >广西经济职业学院</option>
                                        
                                            <option value="2956" >桂林电子科技大学</option>
                                        
                                            <option value="2957" >广西师范大学</option>
                                        
                                            <option value="2958" >桂林理工大学</option>
                                        
                                            <option value="2959" >桂林医学院</option>
                                        
                                            <option value="2960" >广西科技大学</option>
                                        
                                            <option value="2961" >右江民族医学院</option>
                                        
                                            <option value="2962" >百色学院</option>
                                        
                                            <option value="2963" >河池学院</option>
                                        
                                            <option value="2964" >玉林师范学院</option>
                                        
                                            <option value="2965" >钦州学院</option>
                                        
                                            <option value="2966" >贺州学院</option>
                                        
                                            <option value="2967" >梧州学院</option>
                                        
                                            <option value="2968" >广西大学行健文理学院</option>
                                        
                                            <option value="2969" >广西师范大学漓江学院</option>
                                        
                                            <option value="2970" >桂林电子科技大学信息科技学院</option>
                                        
                                            <option value="2971" >桂林工学院博文管理学院</option>
                                        
                                            <option value="2972" >广西工学院鹿山学院</option>
                                        
                                            <option value="2973" >广西师范学院师园学院</option>
                                        
                                            <option value="2974" >广西民族大学相思湖学院</option>
                                        
                                            <option value="2975" >广西中医学院赛恩斯新医药学院</option>
                                        
                                            <option value="2976" >北海宏源足球职业学院</option>
                                        
                                            <option value="2977" >北海艺术设计职业学院</option>
                                        
                                            <option value="2978" >北海职业学院</option>
                                        
                                            <option value="2979" >广西城市职业学院</option>
                                        
                                            <option value="2980" >广西电力职业技术学院</option>
                                        
                                            <option value="2981" >广西东方外语职业学院</option>
                                        
                                            <option value="2982" >广西工商职业技术学院</option>
                                        
                                            <option value="2983" >广西工业职业技术学院</option>
                                        
                                            <option value="2984" >广西国际商务职业技术学院</option>
                                        
                                            <option value="2985" >广西机电职业技术学院</option>
                                        
                                            <option value="2986" >广西建设职业技术学院</option>
                                        
                                            <option value="2987" >广西交通职业技术学院</option>
                                        
                                            <option value="2988" >广西经济管理干部学院</option>
                                        
                                            <option value="2989" >广西经贸职业技术学院</option>
                                        
                                            <option value="2990" >广西警管高等专科学校</option>
                                        
                                            <option value="2991" >广西农业职业技术学院</option>
                                        
                                            <option value="2992" >广西轻工高级技工学校</option>
                                        
                                            <option value="2993" >广西生态工程职业技术学院</option>
                                        
                                            <option value="2994" >广西水利电力职业技术学院</option>
                                        
                                            <option value="2995" >广西体育高等专科学校</option>
                                        
                                            <option value="2996" >广西演艺职业学院</option>
                                        
                                            <option value="2997" >广西英华国际职业学院</option>
                                        
                                            <option value="2998" >广西邕江大学</option>
                                        
                                            <option value="2999" >广西幼儿师范学校</option>
                                        
                                            <option value="3000" >广西职业技术学院</option>
                                        
                                            <option value="3001" >贵港职业学院</option>
                                        
                                            <option value="3002" >桂林航天工业学院</option>
                                        
                                            <option value="3003" >桂林旅游高等专科学校</option>
                                        
                                            <option value="3004" >桂林山水职业学院</option>
                                        
                                            <option value="3005" >桂林师范高等专科学校</option>
                                        
                                            <option value="3006" >河池职业学院</option>
                                        
                                            <option value="3007" >柳州师范高等专科学校</option>
                                        
                                            <option value="3008" >柳州医学高等专科学校</option>
                                        
                                            <option value="3009" >柳州铁道职业技术学院</option>
                                        
                                            <option value="3010" >柳州职业技术学院</option>
                                        
                                            <option value="3011" >广西民族师范学院</option>
                                        
                                            <option value="3012" >南宁职业技术学院</option>
                                        
                                            <option value="3013" >南宁地区教育学院</option>
                                        
                                            <option value="3014" >北京航空航天大学北海学院</option>
                                        
                                            <option value="3015" >桂林工学院南宁分院</option>
                                        
                                            <option value="3016" >百色职业学院</option>
                                        
                                            <option value="3017" >广西教育学院</option>
                                        
                                            <option value="3018" >梧州职业学院</option>
                                        
                                            <option value="3019" >广西卫生管理干部学院</option>
                                        
                                            <option value="3020" >广西政法管理干部学院</option>
                                        
                                            <option value="3021" >柳州城市职业技术学院</option>
                                        
                                            <option value="3022" >华南理工大学</option>
                                        
                                            <option value="3023" >中山大学</option>
                                        
                                            <option value="3024" >暨南大学</option>
                                        
                                            <option value="3025" >华南师范大学</option>
                                        
                                            <option value="3026" >广东工业大学</option>
                                        
                                            <option value="3027" >华南农业大学</option>
                                        
                                            <option value="3028" >广州大学</option>
                                        
                                            <option value="3029" >广东外语外贸大学</option>
                                        
                                            <option value="3030" >广州中医药大学</option>
                                        
                                            <option value="3031" >南方医科大学</option>
                                        
                                            <option value="3032" >南方科技大学</option>
                                        
                                            <option value="3033" >仲恺农业工程学院</option>
                                        
                                            <option value="3034" >广州医学院</option>
                                        
                                            <option value="3035" >广东药学院</option>
                                        
                                            <option value="3036" >广东金融学院</option>
                                        
                                            <option value="3037" >广东财经大学</option>
                                        
                                            <option value="3038" >广东警官学院</option>
                                        
                                            <option value="3039" >广州体育学院</option>
                                        
                                            <option value="3040" >广州美术学院</option>
                                        
                                            <option value="3041" >星海音乐学院</option>
                                        
                                            <option value="3042" >广东技术师范学院</option>
                                        
                                            <option value="3043" >广东培正学院</option>
                                        
                                            <option value="3044" >广东白云学院</option>
                                        
                                            <option value="3045" >清华大学深圳研究生院</option>
                                        
                                            <option value="3046" >东莞职业技术学院</option>
                                        
                                            <option value="3047" >广东环境保护工程职业学院</option>
                                        
                                            <option value="3048" >广东省机械技师学院</option>
                                        
                                            <option value="3049" >哈尔滨工业大学深圳研究生院</option>
                                        
                                            <option value="3050" >广东省轻工业高级技师学院</option>
                                        
                                            <option value="3051" >深圳大学</option>
                                        
                                            <option value="3052" >汕头大学</option>
                                        
                                            <option value="3053" >五邑大学</option>
                                        
                                            <option value="3054" >肇庆学院</option>
                                        
                                            <option value="3055" >广东石油化工学院</option>
                                        
                                            <option value="3056" >东莞理工学院</option>
                                        
                                            <option value="3057" >广东医学院</option>
                                        
                                            <option value="3058" >湛江师范学院</option>
                                        
                                            <option value="3059" >广东海洋大学</option>
                                        
                                            <option value="3060" >韶关学院</option>
                                        
                                            <option value="3061" >韩山师范学院</option>
                                        
                                            <option value="3062" >嘉应学院</option>
                                        
                                            <option value="3063" >惠州学院</option>
                                        
                                            <option value="3064" >佛山科技学院</option>
                                        
                                            <option value="3065" >中山大学南方学院</option>
                                        
                                            <option value="3066" >广东外语外贸大学南国商学院</option>
                                        
                                            <option value="3067" >华南理工大学广州汽车学院</option>
                                        
                                            <option value="3068" >北京理工大学珠海学院</option>
                                        
                                            <option value="3069" >北京师范大学珠海分校</option>
                                        
                                            <option value="3070" >电子科技大学中山学院</option>
                                        
                                            <option value="3071" >东莞理工学院城市学院</option>
                                        
                                            <option value="3072" >广东科技学院</option>
                                        
                                            <option value="3073" >番禺职业技术学院</option>
                                        
                                            <option value="3074" >佛山职业技术学院</option>
                                        
                                            <option value="3075" >广东财经职业学院</option>
                                        
                                            <option value="3076" >广东潮汕职业技术学院</option>
                                        
                                            <option value="3077" >广东纺织职业技术学院</option>
                                        
                                            <option value="3078" >广东工程职业技术学院</option>
                                        
                                            <option value="3079" >广东工贸职业技术学院</option>
                                        
                                            <option value="3080" >广东工业大学华立学院</option>
                                        
                                            <option value="3081" >广东海洋大学寸金学院</option>
                                        
                                            <option value="3082" >广东海洋大学海滨学院</option>
                                        
                                            <option value="3083" >广东机电职业技术学院</option>
                                        
                                            <option value="3084" >广东建华职业学院</option>
                                        
                                            <option value="3085" >广东建设职业技术学院</option>
                                        
                                            <option value="3086" >广东交通职业技术学院</option>
                                        
                                            <option value="3087" >广东第二师范学院</option>
                                        
                                            <option value="3088" >广东科学技术职业学院</option>
                                        
                                            <option value="3089" >广东理工职业学院</option>
                                        
                                            <option value="3090" >广东岭南职业技术学院</option>
                                        
                                            <option value="3091" >广东农工商职业技术学院</option>
                                        
                                            <option value="3092" >广东女子职业技术学院</option>
                                        
                                            <option value="3093" >广东轻工职业技术学院</option>
                                        
                                            <option value="3094" >广东省新闻出版技师学院</option>
                                        
                                            <option value="3095" >广东水利电力职业技术学院</option>
                                        
                                            <option value="3096" >广东司法警官职业学院</option>
                                        
                                            <option value="3097" >广东松山职业技术学院</option>
                                        
                                            <option value="3098" >广东体育职业技术学院</option>
                                        
                                            <option value="3099" >广东外语外贸大学公开学院</option>
                                        
                                            <option value="3100" >广东外语艺术职业学院</option>
                                        
                                            <option value="3101" >广东文艺职业学院</option>
                                        
                                            <option value="3102" >广东新安职业技术学院</option>
                                        
                                            <option value="3103" >广东行政职业学院</option>
                                        
                                            <option value="3104" >广东亚视演艺职业学院</option>
                                        
                                            <option value="3105" >广东邮电职业技术学院</option>
                                        
                                            <option value="3106" >广州城市职业学院</option>
                                        
                                            <option value="3107" >广州大学华软软件学院</option>
                                        
                                            <option value="3108" >广州大学市政技术学院</option>
                                        
                                            <option value="3109" >广州大学松田学院</option>
                                        
                                            <option value="3110" >广州工程技术职业学院</option>
                                        
                                            <option value="3111" >广州工商职业技术学院</option>
                                        
                                            <option value="3112" >广州航海高等专科学校</option>
                                        
                                            <option value="3113" >广州华立科技职业学院</option>
                                        
                                            <option value="3114" >广州华南商贸职业学院</option>
                                        
                                            <option value="3115" >广州康大职业技术学院</option>
                                        
                                            <option value="3116" >广州科技贸易职业学院</option>
                                        
                                            <option value="3117" >广州科技职业技术学院</option>
                                        
                                            <option value="3118" >广州民航职业技术学院</option>
                                        
                                            <option value="3119" >广州南洋理工职业学院</option>
                                        
                                            <option value="3120" >广州涉外经济职业技术学院</option>
                                        
                                            <option value="3121" >广州体育职业技术学院</option>
                                        
                                            <option value="3122" >广州铁路职业技术学院</option>
                                        
                                            <option value="3123" >广州现代信息工程职业技术学院</option>
                                        
                                            <option value="3124" >河源职业技术学院</option>
                                        
                                            <option value="3125" >华澳国际会计学院</option>
                                        
                                            <option value="3126" >华南农业大学珠江学院</option>
                                        
                                            <option value="3127" >华南师范大学增城学院</option>
                                        
                                            <option value="3128" >惠州经济职业技术学院</option>
                                        
                                            <option value="3129" >吉林大学珠海学院</option>
                                        
                                            <option value="3130" >江门职业技术学院</option>
                                        
                                            <option value="3131" >揭阳职业技术学院</option>
                                        
                                            <option value="3132" >罗定职业技术学院</option>
                                        
                                            <option value="3133" >茂名职业技术学院</option>
                                        
                                            <option value="3134" >南华工商学院</option>
                                        
                                            <option value="3135" >南海东软信息技术学院</option>
                                        
                                            <option value="3136" >清远职业技术学院</option>
                                        
                                            <option value="3137" >汕头职业技术学院</option>
                                        
                                            <option value="3138" >汕尾职业技术学院</option>
                                        
                                            <option value="3139" >深圳信息职业技术学院</option>
                                        
                                            <option value="3140" >深圳振西科技学院</option>
                                        
                                            <option value="3141" >深圳职业技术学院</option>
                                        
                                            <option value="3142" >顺德职业技术学院</option>
                                        
                                            <option value="3143" >私立华联学院</option>
                                        
                                            <option value="3144" >阳江职业技术学院</option>
                                        
                                            <option value="3145" >湛江技师学院</option>
                                        
                                            <option value="3146" >湛师基础教育学院</option>
                                        
                                            <option value="3147" >肇庆工商职业技术学院</option>
                                        
                                            <option value="3148" >肇庆科技职业技术学院</option>
                                        
                                            <option value="3149" >肇庆医学高等专科学校</option>
                                        
                                            <option value="3150" >中山火炬职业技术学院</option>
                                        
                                            <option value="3151" >珠海城市职业技术学院</option>
                                        
                                            <option value="3152" >珠海艺术职业学院</option>
                                        
                                            <option value="3153" >遵义医学院珠海校区</option>
                                        
                                            <option value="3154" >广东技术师范学院天河分校</option>
                                        
                                            <option value="3155" >广东科学技术职业学院国防工大</option>
                                        
                                            <option value="3156" >茂名广播电视大学</option>
                                        
                                            <option value="3157" >广东石油化工职业技术学校</option>
                                        
                                            <option value="3158" >中山大学新华学院</option>
                                        
                                            <option value="3159" >广东商学院华商学院</option>
                                        
                                            <option value="3160" >南开大学深圳金融工程学院</option>
                                        
                                            <option value="3161" >北京师范大学－香港浸会大学联合国际学院</option>
                                        
                                            <option value="3162" >广州金桥管理干部学院</option>
                                        
                                            <option value="3163" >华南师范大学南海校区</option>
                                        
                                            <option value="3164" >暨南大学深圳旅游学院</option>
                                        
                                            <option value="3165" >暨南大学珠海学院</option>
                                        
                                            <option value="3166" >潮汕职业技术学院</option>
                                        
                                            <option value="3167" >广东科贸职业学院</option>
                                        
                                            <option value="3168" >中山职业技术学院</option>
                                        
                                            <option value="3169" >广东省外语艺术职业学院</option>
                                        
                                            <option value="3170" >广东食品药品职业学院</option>
                                        
                                            <option value="3171" >广州城建职业学院</option>
                                        
                                            <option value="3172" >湛江现代科技职业学院</option>
                                        
                                            <option value="3173" >广州松田职业学院</option>
                                        
                                            <option value="3174" >广州珠江职业技术学院</option>
                                        
                                            <option value="3175" >广东新华教育学院</option>
                                        
                                            <option value="3176" >广东省广播电视大学</option>
                                        
                                            <option value="3177" >广东社会科学大学</option>
                                        
                                            <option value="3178" >广东青年管理干部学院</option>
                                        
                                            <option value="3179" >深圳市广播电视大学</option>
                                        
                                            <option value="3180" >广州市广播电视大学</option>
                                        
                                            <option value="3181" >韶关市职工大学</option>
                                        
                                            <option value="3182" >汕头市业余大学</option>
                                        
                                            <option value="3183" >广东省国防工业职工大学</option>
                                        
                                            <option value="3184" >南海成人学院</option>
                                        
                                            <option value="3185" >广东省电子商务技师学院</option>
                                        
                                            <option value="3186" >深圳信息学院</option>
                                        
                                            <option value="3187" >江门市广播电视大学</option>
                                        
                                            <option value="3188" >北京大学深圳研究生院</option>
                                        
                                            <option value="3189" >江门艺华旅游职业学院</option>
                                        
                                            <option value="3190" >汕头工艺美术学校</option>
                                        
                                            <option value="3191" >重庆工商大学</option>
                                        
                                            <option value="3193" >兰州理工大学</option>
                                        
                                    </select>
                                </div>
                            </div>
                            <div class="form-row mar_bot30 clearfix">
                                <label class="form-label wid356 "><span class="reddot"></span>专  业</label>
                                <div class="form-input-warp">
                                    <input type="text" class="input-style input-size input-radius wid310" placeholder="请填写专业名称">
                                </div>
                            </div>
                            <div class="form-row mar_bot30 clearfix">
                                <label class="form-label wid356 "><span class="reddot"></span>学  历</label>
                                <div class="form-input-warp">
                                    <span class="select-box input-radius wid182">
                                        <select class="select" id="diploma_id" name="diploma_id"  datatype="*" nullmsg="请选择学历！" >
                                            <option value="3">大专以下</option>
                                            <option value="4">大专</option>
                                            <option value="5">本科</option>
                                            <option value="6">硕士</option>
                                            <option value="7">博士</option>
                                        </select>
                                    </span>
                                </div>
                            </div>
                            <div class="form-row clearfix">
                                <label class="form-label wid356 "><span class="reddot"></span>毕业年份</label>
                                <div class="form-input-warp">
                                    <span class="select-box input-radius wid182">
                                        <select class="select" id="edu-year2" name="date2" data-pre="" datatype="*" nullmsg="">
                                                <option value="1946">1946</option>
                                                <option value="1947">1947</option>
                                                <option value="1948">1948</option>
                                                <option value="1949">1949</option>
                                                <option value="1950">1950</option>
                                                <option value="1951">1951</option>
                                                <option value="1952">1952</option>
                                                <option value="1953">1953</option>
                                                <option value="1954">1954</option>
                                                <option value="1955">1955</option>
                                                <option value="1956">1956</option>
                                                <option value="1957">1957</option>
                                                <option value="1958">1958</option>
                                                <option value="1959">1959</option>
                                                <option value="1960">1960</option>
                                                <option value="1961">1961</option>
                                                <option value="1962">1962</option>
                                                <option value="1963">1963</option>
                                                <option value="1964">1964</option>
                                                <option value="1965">1965</option>
                                                <option value="1966">1966</option>
                                                <option value="1967">1967</option>
                                                <option value="1968">1968</option>
                                                <option value="1969">1969</option>
                                                <option value="1970">1970</option>
                                                <option value="1971">1971</option>
                                                <option value="1972">1972</option>
                                                <option value="1973">1973</option>
                                                <option value="1974">1974</option>
                                                <option value="1975">1975</option>
                                                <option value="1976">1976</option>
                                                <option value="1977">1977</option>
                                                <option value="1978">1978</option>
                                                <option value="1979">1979</option>
                                                <option value="1980">1980</option>
                                                <option value="1981">1981</option>
                                                <option value="1982">1982</option>
                                                <option value="1983">1983</option>
                                                <option value="1984">1984</option>
                                                <option value="1985">1985</option>
                                                <option value="1986">1986</option>
                                                <option value="1987">1987</option>
                                                <option value="1988">1988</option>
                                                <option value="1989">1989</option>
                                                <option value="1990">1990</option>
                                                <option value="1991">1991</option>
                                                <option value="1992">1992</option>
                                                <option value="1993">1993</option>
                                                <option value="1994">1994</option>
                                                <option value="1995">1995</option>
                                                <option value="1996">1996</option>
                                                <option value="1997">1997</option>
                                                <option value="1998">1998</option>
                                                <option value="1999">1999</option>
                                                <option value="2000">2000</option>
                                                <option value="2001">2001</option>
                                                <option value="2002">2002</option>
                                                <option value="2003">2003</option>
                                                <option value="2004">2004</option>
                                                <option value="2005">2005</option>
                                                <option value="2006">2006</option>
                                                <option value="2007">2007</option>
                                                <option value="2008">2008</option>
                                                <option value="2009">2009</option>
                                                <option value="2010">2010</option>
                                                <option value="2011">2011</option>
                                                <option value="2012">2012</option>
                                                <option value="2013">2013</option>
                                                <option value="2014" selected="selected">2014</option>
                                                <option value="2015">2015</option>
                                                <option value="2016">2016</option>
                                                <option value="2017">2017</option>
                                                <option value="2018">2018</option>
                                                <option value="2019">2019</option>
                                                <option value="2020">2020</option>
                                        </select>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="pad_left380"><a href="javascript:;" class="addExp" onclick="addEdu()">添加教育经历</a></div>
                </div>
            </div>
        </div>
        <!-- 下一步 -->
        <div class="next-step ac pad-35">
            <div><a href="javascript:;"  class="next-button btn red-btn width400 radius8">最后一步，一句话向大家介绍我的特长</a></div>
            <div class="mar_top20"><a href="javascript:;" class="save-button">返回上一步</a></div>
        </div>
    </div>
    <!--底部-->
    <div class="footer">
        <div class="footer-topLink">
            <div class="footer-topLink-in w">
                <a href="javascript:;">关于裁客</a><a href="javascript:;">加入裁客</a><a href="javascript:;">用户协议</a><a
                    href="javascript:;">免责声明</a><a href="javascript:;">帮助中心</a><a href="javascript:;">网站地图</a><a
                    href="javascript:;">版权声明</a>
            </div>
        </div>
        <div class="footercon w">
            <div class="footerlist clearfix">
                <div class="footerlist-center clearfix">
                    <a href="https://www.baidu.com">
                        <div class="code-item-warp row">
                            <div class="code-item out-warp">
                                <div class="code-item-in">
                                    <div class="code-item-top weibo"></div>
                                    <div class="code-item-bottom">官方微博</div>
                                </div>
                            </div>
                            <div class="code-item in-warp">
                                <div class="code-item-in">
                                    <div class="code-item-top weibo-code">
                                        <div class="in-code"></div>
                                    </div>
                                    <div class="code-item-bottom">官方微博</div>
                                </div>
                            </div>
                        </div>
                    </a>
                    <div class="code-item-warp row">
                        <div class="code-item out-warp">
                            <div class="code-item-in">
                                <div class="code-item-top service-number "></div>
                                <div class="code-item-bottom">裁客服务号</div>
                            </div>
                        </div>
                        <div class="code-item in-warp">
                            <div class="code-item-in">
                                <div class="code-item-top service-number-code">
                                    <div class="in-code"></div>
                                </div>
                                <div class="code-item-bottom">裁客服务号</div>
                            </div>
                        </div>
                    </div>
                    <div class="code-item-warp row">
                        <div class="code-item out-warp">
                            <div class="code-item-in">
                                <div class="code-item-top ck-public"></div>
                                <div class="code-item-bottom">裁客公众号</div>
                            </div>
                        </div>
                        <div class="code-item in-warp">
                            <div class="code-item-in">
                                <div class="code-item-top ck-public-code">
                                    <div class="in-code"></div>
                                </div>
                                <div class="code-item-bottom">裁客公众号</div>
                            </div>
                        </div>
                    </div>
                    <div class="code-item-warp row">
                        <div class="code-item out-warp">
                            <div class="code-item-in">
                                <div class="code-item-top ck-mobile"></div>
                                <div class="code-item-bottom">官方移动端</div>
                            </div>
                        </div>
                        <div class="code-item in-warp">
                            <div class="code-item-in">
                                <div class="code-item-top ck-mobile-code">
                                    <div class="in-code"></div>
                                </div>
                                <div class="code-item-bottom">官方移动端</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copyright">
            <p class="w">
                Copyright © 2014-2018 裁客
                版权所有&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;北京模度科技有限公司旗下产品&nbsp;京ICP备11017824号-7&nbsp;京ICP证130164号&nbsp;京公网安备&nbsp;11010502034683号
            </p>
        </div>
    </div>
    <!-- 添加使用 -->
    <div id="dataCollege" style="display: none;">
            <option value="2" >清华大学</option>
                                        
            <option value="3" >北京大学</option>
        
            <option value="4" >中国人民大学</option>
        
            <option value="5" >北京航空航天大学</option>
        
            <option value="6" >北京邮电大学</option>
        
            <option value="7" >北京师范大学</option>
        
            <option value="8" >中国传媒大学</option>
        
            <option value="9" >北京语言大学</option>
        
            <option value="10" >北京科技大学</option>
        
            <option value="11" >中国农业大学</option>
        
            <option value="12" >北京理工大学</option>
        
            <option value="13" >北京林业大学</option>
        
            <option value="14" >北京交通大学</option>
        
            <option value="15" >中国矿业大学（北京）</option>
        
            <option value="16" >北京信息科技大学</option>
        
            <option value="17" >北京工业大学</option>
        
            <option value="18" >北京化工大学</option>
        
            <option value="19" >中国政法大学</option>
        
            <option value="20" >对外经贸大学</option>
        
            <option value="21" >中央民族大学</option>
        
            <option value="22" >中国地质大学（北京）</option>
        
            <option value="23" >中科院</option>
        
            <option value="24" >北京中医药大学</option>
        
            <option value="25" >首都经济贸易大学</option>
        
            <option value="26" >中央财经大学</option>
        
            <option value="27" >北方工业大学</option>
        
            <option value="28" >中国石油大学（北京）</option>
        
            <option value="29" >外交学院</option>
        
            <option value="30" >首都师范大学</option>
        
            <option value="31" >中央戏剧学院</option>
        
            <option value="32" >中国青年政治学院</option>
        
            <option value="33" >北京外国语大学</option>
        
            <option value="34" >华北电力大学（北京）</option>
        
            <option value="35" >中国人民公安大学</option>
        
            <option value="36" >北京协和医学院</option>
        
            <option value="37" >北京体育大学</option>
        
            <option value="38" >北京工商大学</option>
        
            <option value="39" >北京联合大学</option>
        
            <option value="40" >首都医科大学</option>
        
            <option value="41" >国际关系学院</option>
        
            <option value="42" >中央美术学院</option>
        
            <option value="43" >北京电子科技学院</option>
        
            <option value="44" >中国劳动关系学院</option>
        
            <option value="45" >中华女子学院</option>
        
            <option value="46" >北京建筑工程学院</option>
        
            <option value="47" >北京印刷学院</option>
        
            <option value="48" >北京石油化工学院</option>
        
            <option value="49" >首钢工学院</option>
        
            <option value="50" >北京农学院</option>
        
            <option value="51" >首都体育学院</option>
        
            <option value="52" >北京第二外国语学院</option>
        
            <option value="53" >北京物资学院</option>
        
            <option value="54" >北京警察学院</option>
        
            <option value="55" >中央音乐学院</option>
        
            <option value="56" >中国戏曲学院</option>
        
            <option value="57" >北京舞蹈学院</option>
        
            <option value="58" >北京城市学院</option>
        
            <option value="59" >北京电影学院</option>
        
            <option value="60" >北京服装学院</option>
        
            <option value="61" >北京工商大学嘉华学院</option>
        
            <option value="62" >首都师范大学科德学院</option>
        
            <option value="63" >北京工业大学耿丹学院</option>
        
            <option value="64" >北京化工大学北方学院</option>
        
            <option value="65" >北京政法职业学院</option>
        
            <option value="66" >北京信息职业技术学院</option>
        
            <option value="67" >北京联合大学广告学院</option>
        
            <option value="68" >北京邮电大学世纪学院</option>
        
            <option value="69" >北京大学医学部</option>
        
            <option value="70" >北京现代职业技术学院</option>
        
            <option value="71" >北京现代音乐研修学院</option>
        
            <option value="72" >北京戏曲艺术职业学院</option>
        
            <option value="73" >北京锡华国际经贸职业学院</option>
        
            <option value="74" >北京盛基艺术学校</option>
        
            <option value="75" >北京培黎职业学院</option>
        
            <option value="76" >北京农业职业学院</option>
        
            <option value="77" >北京科技职业学院</option>
        
            <option value="78" >北京科技经营管理学院</option>
        
            <option value="79" >北京经贸职业学院</option>
        
            <option value="80" >北京经济技术职业学院</option>
        
            <option value="81" >北京京北职业技术学院</option>
        
            <option value="82" >北京交通职业技术学院</option>
        
            <option value="83" >北京吉利大学</option>
        
            <option value="84" >北京汇佳职业学院</option>
        
            <option value="85" >北京工业职业技术学院</option>
        
            <option value="86" >北京工商管理专修学院</option>
        
            <option value="87" >北京电子科技职业学院</option>
        
            <option value="88" >北京财贸职业学院</option>
        
            <option value="89" >北京北大方正软件技术学院</option>
        
            <option value="90" >北大资源美术学院</option>
        
            <option value="91" >北京人文大学</option>
        
            <option value="92" >北京高等秘书学院</option>
        
            <option value="93" >北京应用技术大学</option>
        
            <option value="94" >中国防卫科技学院</option>
        
            <option value="95" >中国音乐学院</option>
        
            <option value="96" >中国信息大学</option>
        
            <option value="97" >北京青年政治学院</option>
        
            <option value="98" >北京财经专修学院</option>
        
            <option value="99" >北京经济管理职业学院</option>
        
            <option value="100" >北京美国英语语言学院</option>
        
            <option value="101" >中国管理软件学院</option>
        
            <option value="102" >财政部财政科学研究所</option>
        
            <option value="103" >北大资源学院</option>
        
            <option value="104" >现代管理大学</option>
        
            <option value="105" >北京民族大学</option>
        
            <option value="106" >北京市劳动保障职业学院</option>
        
            <option value="107" >北京市建设职工大学</option>
        
            <option value="108" >北京市房地产职工大学</option>
        
            <option value="109" >北京市汽车工业总公司职工大学</option>
        
            <option value="110" >北京市西城经济科学大学</option>
        
            <option value="111" >北京市丰台区职工大学</option>
        
            <option value="112" >北京广播电视大学</option>
        
            <option value="113" >北京教育学院</option>
        
            <option value="114" >北京市东城区职工业余大学</option>
        
            <option value="115" >北京市总工会职工大学</option>
        
            <option value="116" >北京市海淀区职工大学</option>
        
            <option value="117" >北京市崇文区职工大学</option>
        
            <option value="118" >北京宣武红旗业余大学</option>
        
            <option value="119" >北京市石景山区业余大学</option>
        
            <option value="120" >北京市朝阳区职工大学</option>
        
            <option value="121" >北京市机械工业局职工大学</option>
        
            <option value="122" >北京医药集团职工大学</option>
        
            <option value="123" >北京劳动保障职业学院</option>
        
            <option value="124" >北京社会管理职业学院</option>
        
            <option value="125" >北京演艺专修学院</option>
        
            <option value="126" >北京兴华大学</option>
        
            <option value="127" >北京新园明职业学院</option>
        
            <option value="128" >中央党校研究生院</option>
        
            <option value="129" >中国社科院</option>
        
            <option value="130" >北京旅游专修学院</option>
        
            <option value="131" >东方文化艺术学院</option>
        
            <option value="132" >首都联合职工大学</option>
        
            <option value="133" >北京影视研修学院</option>
        
            <option value="134" >国家法官学院</option>
        
            <option value="135" >北京建设大学</option>
        
            <option value="136" >北京金融学院</option>
        
            <option value="137" >北京黄埔大学</option>
        
            <option value="138" >中瑞酒店管理学院</option>
        
            <option value="139" >中国建筑设计研究院</option>
        
            <option value="140" >北京文理研修学院</option>
        
            <option value="141" >北京当代艺术学院</option>
        
            <option value="142" >北京大学国际法学院</option>
        
            <option value="143" >北京交通运输职业学院</option>
        
            <option value="144" >中国艺术研究院</option>
        
            <option value="145" >北京工业大学通州分校</option>
        
            <option value="146" >北京八维研修学院</option>
        
            <option value="147" >网络销售大学</option>
        
            <option value="148" >朝阳二外</option>
        
            <option value="149" >中北国际演艺学校</option>
        
            <option value="150" >复旦大学</option>
        
            <option value="151" >上海交通大学</option>
        
            <option value="152" >同济大学</option>
        
            <option value="153" >华东师范大学</option>
        
            <option value="154" >上海财经大学</option>
        
            <option value="155" >华东理工大学</option>
        
            <option value="156" >上海商学院</option>
        
            <option value="157" >东华大学</option>
        
            <option value="158" >上海理工大学</option>
        
            <option value="159" >上海大学</option>
        
            <option value="160" >上海外国语大学</option>
        
            <option value="161" >上海海事大学</option>
        
            <option value="162" >上海工程科技大学</option>
        
            <option value="163" >上海海洋大学</option>
        
            <option value="164" >上海中医药大学</option>
        
            <option value="165" >上海师范大学</option>
        
            <option value="166" >上海建桥学院</option>
        
            <option value="167" >上海政法学院</option>
        
            <option value="168" >上海电机学院</option>
        
            <option value="169" >上海第二工业大学</option>
        
            <option value="170" >上海应用技术学院</option>
        
            <option value="171" >上海电力学院</option>
        
            <option value="172" >上海对外贸易学院</option>
        
            <option value="173" >上海金融学院</option>
        
            <option value="174" >上海立信会计学院</option>
        
            <option value="175" >上海体育学院</option>
        
            <option value="176" >上海音乐学院</option>
        
            <option value="177" >上海戏剧学院</option>
        
            <option value="178" >上海杉达学院</option>
        
            <option value="179" >华东政法大学</option>
        
            <option value="180" >上海外国语大学贤达经济人文学院</option>
        
            <option value="181" >同济大学同科学院</option>
        
            <option value="182" >上海师范大学天华学院</option>
        
            <option value="183" >上海东方文化职业学院</option>
        
            <option value="184" >上海工商学院</option>
        
            <option value="185" >复旦大学上海视觉艺术学院</option>
        
            <option value="186" >复旦大学上海医学院</option>
        
            <option value="187" >复旦大学太平洋金融学院</option>
        
            <option value="188" >上海邦德职业技术学院</option>
        
            <option value="189" >上海诚信学院</option>
        
            <option value="190" >上海城市管理职业技术学院</option>
        
            <option value="191" >上海出版印刷高等专科学校</option>
        
            <option value="192" >上海电影艺术职业学院</option>
        
            <option value="193" >上海电子信息职业技术学院</option>
        
            <option value="194" >上海东海职业技术学院</option>
        
            <option value="195" >上海工会管理职业学院</option>
        
            <option value="196" >上海工商外国语学院</option>
        
            <option value="197" >上海工艺美术职业学院</option>
        
            <option value="198" >上海公安高等专科学校</option>
        
            <option value="199" >上海海关学院</option>
        
            <option value="200" >上海海事职业技术学院</option>
        
            <option value="201" >上海济光职业技术学院</option>
        
            <option value="202" >上海建峰职业技术学院</option>
        
            <option value="203" >上海交通职业技术学院</option>
        
            <option value="204" >上海立达职业技术学院</option>
        
            <option value="205" >上海旅游高等专科学校</option>
        
            <option value="206" >上海民远职业技术学院</option>
        
            <option value="207" >上海农林职业技术学院</option>
        
            <option value="208" >上海欧华职业技术学院</option>
        
            <option value="209" >上海思博职业技术学院</option>
        
            <option value="210" >上海托普信息技术学院</option>
        
            <option value="211" >上海新侨职业技术学院</option>
        
            <option value="212" >上海行健职业学院</option>
        
            <option value="213" >上海医疗器械高等专科学校</option>
        
            <option value="214" >上海医药高等专科学校</option>
        
            <option value="215" >上海震旦职业学院</option>
        
            <option value="216" >上海中华职业技术学院</option>
        
            <option value="217" >上海中侨职业技术学院</option>
        
            <option value="218" >上海纺织工业职工大学</option>
        
            <option value="219" >上海体育职业学院</option>
        
            <option value="220" >上海医药职工大学</option>
        
            <option value="222" >上海职工医学院</option>
        
            <option value="223" >上海职工体育运动技术学院</option>
        
            <option value="224" >华东理工大学网络教育学院</option>
        
            <option value="225" >上海市经济管理干部学院</option>
        
            <option value="226" >上海社会科学院</option>
        
            <option value="227" >上海大学艺术研究院</option>
        
            <option value="228" >中国科学院上海生命科学研究院</option>
        
            <option value="229" >上海电机学院</option>
        
            <option value="230" >上海电力学院</option>
        
            <option value="231" >上海市工程技术大学</option>
        
            <option value="232" >上海广播电视大学</option>
        
            <option value="233" >上海市工商外国语学院</option>
        
            <option value="234" >上海生物制品研究所</option>
        
            <option value="235" >华东师范大学</option>
        
            <option value="236" >上海科学技术学院</option>
        
            <option value="237" >上海思博职业技术学校</option>
        
            <option value="238" >上海市工会管理学院</option>
        
            <option value="239" >上海行政学院</option>
        
            <option value="240" >上海科学职业技术学院</option>
        
            <option value="241" >上海科技学院</option>
        
            <option value="242" >衫达大学</option>
        
            <option value="243" >拉萨尔国际设计学院</option>
        
            <option value="244" >上海工程技术大学</option>
        
            <option value="246" >上海青年管理干部学院</option>
        
            <option value="247" >上海鸿文职业技术学院</option>
        
            <option value="248" >上海大学巴士汽车学院</option>
        
            <option value="249" >哈尔滨工业大学</option>
        
            <option value="250" >哈尔滨工程大学</option>
        
            <option value="251" >东北林业大学</option>
        
            <option value="252" >东北农业大学</option>
        
            <option value="253" >哈尔滨医科大学</option>
        
            <option value="254" >黑龙江中医药大学</option>
        
            <option value="255" >黑龙江工程学院</option>
        
            <option value="256" >黑龙江科技大学</option>
        
            <option value="257" >哈尔滨学院</option>
        
            <option value="258" >哈尔滨体育学院</option>
        
            <option value="259" >黑龙江东方学院</option>
        
            <option value="260" >黑龙江大学</option>
        
            <option value="261" >哈尔滨商业大学</option>
        
            <option value="262" >哈尔滨师范大学</option>
        
            <option value="263" >哈尔滨理工大学</option>
        
            <option value="264" >佳木斯大学</option>
        
            <option value="265" >齐齐哈尔大学</option>
        
            <option value="266" >齐齐哈尔医学院</option>
        
            <option value="267" >黑龙江八一农垦大学</option>
        
            <option value="268" >东北石油大学</option>
        
            <option value="269" >大庆师范学院</option>
        
            <option value="270" >牡丹江医学院</option>
        
            <option value="271" >牡丹江师范学院</option>
        
            <option value="272" >绥化学院</option>
        
            <option value="273" >黑河学院</option>
        
            <option value="274" >大庆医学高等专科学校</option>
        
            <option value="275" >大庆职业学院</option>
        
            <option value="276" >大兴安岭职业学院</option>
        
            <option value="277" >哈尔滨电力职业技术学院</option>
        
            <option value="278" >哈尔滨华夏计算机职业技术学院</option>
        
            <option value="279" >哈尔滨金融学院</option>
        
            <option value="280" >哈尔滨铁道职业技术学院</option>
        
            <option value="281" >哈尔滨现代公共关系职业学院</option>
        
            <option value="282" >哈尔滨职业技术学院</option>
        
            <option value="283" >鹤岗师范高等专科学校</option>
        
            <option value="284" >黑龙江北开职业技术学院</option>
        
            <option value="285" >黑龙江工商职业技术学</option>
        
            <option value="286" >黑龙江建筑职业技术学院</option>
        
            <option value="287" >黑龙江林业职业技术学院</option>
        
            <option value="288" >黑龙江旅游职业技术学院</option>
        
            <option value="289" >黑龙江煤炭职业技术学院</option>
        
            <option value="290" >黑龙江民族职业学院</option>
        
            <option value="291" >黑龙江农垦职业学院</option>
        
            <option value="292" >黑龙江农业工程职业学院</option>
        
            <option value="293" >黑龙江农业经济职业学院</option>
        
            <option value="294" >黑龙江农业职业技术学院</option>
        
            <option value="295" >黑龙江三江美术职业学院</option>
        
            <option value="296" >黑龙江商业职业学院</option>
        
            <option value="297" >黑龙江生态工程职业学院</option>
        
            <option value="298" >黑龙江生物科技职业学院</option>
        
            <option value="299" >黑龙江信息技术职业学院</option>
        
            <option value="300" >黑龙江艺术职业学院</option>
        
            <option value="301" >鸡西大学</option>
        
            <option value="302" >牡丹江大学</option>
        
            <option value="303" >七台河职业学院</option>
        
            <option value="304" >齐齐哈尔高等师范专科学校</option>
        
            <option value="305" >齐齐哈尔职业学院</option>
        
            <option value="306" >伊春职业学院</option>
        
            <option value="307" >哈尔滨师范大学阿城学院</option>
        
            <option value="308" >黑龙江省政法管理干部学院</option>
        
            <option value="309" >黑龙江交通职业技术学院</option>
        
            <option value="310" >哈尔滨应用职业技术学院</option>
        
            <option value="311" >黑龙江省教育学院</option>
        
            <option value="312" >哈尔滨理工大学远东学院</option>
        
            <option value="313" >哈尔滨师范大学呼兰学院</option>
        
            <option value="314" >哈尔滨师范大学恒星学院</option>
        
            <option value="315" >哈尔滨商业大学德强商务学院</option>
        
            <option value="316" >大庆石油学院华瑞学院</option>
        
            <option value="317" >东北农业大学成栋学院</option>
        
            <option value="318" >黑龙江大学剑桥学院</option>
        
            <option value="319" >哈尔滨商业大学广厦学院</option>
        
            <option value="320" >哈尔滨工业大学华德应用技术学</option>
        
            <option value="321" >鹤岗矿务局职工大学</option>
        
            <option value="322" >哈尔滨市职工医学院</option>
        
            <option value="323" >佳木斯教育学院</option>
        
            <option value="324" >黑龙江幼儿师范高等专科学校</option>
        
            <option value="325" >哈尔滨外国语学院</option>
        
            <option value="326" >哈尔滨科学技术职业学院</option>
        
            <option value="327" >黑龙江粮食职业学院</option>
        
            <option value="328" >佳木斯职业学院</option>
        
            <option value="329" >黑龙江广播电视大学</option>
        
            <option value="330" >哈尔滨广播电视大学</option>
        
            <option value="331" >黑龙江大鹏传媒学院</option>
        
            <option value="332" >鸡西市北方外国语学院</option>
        
            <option value="333" >牡丹江市精英计算机学院</option>
        
            <option value="334" >黑龙江省工商职业技术学院</option>
        
            <option value="335" >齐齐哈尔林业学校'</option>
        
            <option value="336" >黑龙江生态职业学院</option>
        
            <option value="337" >哈尔滨阳光计算机专修学校</option>
        
            <option value="338" >齐齐哈尔市卫生学校</option>
        
            <option value="339" >伟建工学院</option>
        
            <option value="340" >诚实外语学院（肇庆分院）</option>
        
            <option value="341" >黑龙江省畜牧职业学院</option>
        
            <option value="342" >哈尔滨德强商务学院</option>
        
            <option value="343" >黑龙江现代艺术学</option>
        
            <option value="344" >黑龙江省对外贸易学校</option>
        
            <option value="345" >哈尔滨市幼儿师范学校</option>
        
            <option value="346" >黑龙江省社会科学院研究生部</option>
        
            <option value="347" >哈尔滨理工大学荣成学院</option>
        
            <option value="348" >吉林大学</option>
        
            <option value="349" >东北师范大学</option>
        
            <option value="350" >长春大学</option>
        
            <option value="351" >吉林农业大学</option>
        
            <option value="352" >长春中医药大学</option>
        
            <option value="353" >东北电力大学</option>
        
            <option value="354" >吉林化工学院</option>
        
            <option value="355" >吉林建工学院</option>
        
            <option value="356" >长春工程学院</option>
        
            <option value="357" >长春师范学院</option>
        
            <option value="358" >吉林工程技术师范学院</option>
        
            <option value="359" >吉林华桥外国语学院</option>
        
            <option value="360" >吉林财经大学</option>
        
            <option value="361" >吉林体育学院</option>
        
            <option value="362" >吉林艺术学院</option>
        
            <option value="363" >长春工业大学</option>
        
            <option value="364" >长春理工大学</option>
        
            <option value="365" >延边大学</option>
        
            <option value="366" >北华大学</option>
        
            <option value="367" >吉林农业科技学院</option>
        
            <option value="368" >吉林医药学院</option>
        
            <option value="369" >吉林师范大学</option>
        
            <option value="370" >白城师范学院</option>
        
            <option value="371" >通化师范学院</option>
        
            <option value="372" >白城医学高等专科学校</option>
        
            <option value="373" >长春东方职业学院</option>
        
            <option value="374" >长春金融高等专科学校</option>
        
            <option value="375" >长春汽车工业高等专科学校</option>
        
            <option value="376" >长春信息技术职业学院</option>
        
            <option value="377" >长春医学高等专科学校</option>
        
            <option value="378" >长春职业技术学院</option>
        
            <option value="379" >东北师范大学人文学院</option>
        
            <option value="380" >吉林工商学院—财经校区</option>
        
            <option value="381" >吉林大学—莱姆顿学院</option>
        
            <option value="382" >吉林电子信息职业技术学院</option>
        
            <option value="383" >吉林对外经贸职业学院</option>
        
            <option value="384" >吉林工业职业技术学院</option>
        
            <option value="385" >吉林公安高等专科学校</option>
        
            <option value="386" >吉林交通职业技术学院</option>
        
            <option value="387" >吉林工商学院—工程校区</option>
        
            <option value="388" >吉林农业工程职业技术学院</option>
        
            <option value="389" >吉林工商学院—商贸校区</option>
        
            <option value="390" >吉林司法警官职业学院</option>
        
            <option value="391" >辽源职业技术学院</option>
        
            <option value="392" >四平职业大学</option>
        
            <option value="393" >松原职业技术学院</option>
        
            <option value="394" >吉林省教育学院</option>
        
            <option value="395" >吉林经济管理干部学院</option>
        
            <option value="396" >长春大学光华学院</option>
        
            <option value="397" >长春大学旅游学院</option>
        
            <option value="398" >长春工业大学人文信息学</option>
        
            <option value="399" >吉林动画学院</option>
        
            <option value="400" >长春理工大学光电信息学院</option>
        
            <option value="401" >长春税务学院信息经济学院</option>
        
            <option value="402" >吉林农业大学发展学院</option>
        
            <option value="403" >吉林师范大学博达学院</option>
        
            <option value="404" >吉林铁道职业技术学院</option>
        
            <option value="405" >白城职业技术学院</option>
        
            <option value="406" >吉林建筑工程学院建筑装饰学院</option>
        
            <option value="407" >吉林建筑工程学院城建学院</option>
        
            <option value="408" >通化市职工大学</option>
        
            <option value="409" >通化钢铁公司职工大学</option>
        
            <option value="410" >吉林省经济管理干部学院</option>
        
            <option value="411" >吉林广播电视大学</option>
        
            <option value="412" >长春教育学院</option>
        
            <option value="413" >梨树农村成人高等专科学校</option>
        
            <option value="414" >延边黎明农民大学</option>
        
            <option value="415" >吉林职工医科大学</option>
        
            <option value="416" >吉林省行政管理干部学院</option>
        
            <option value="417" >吉林化学工业公司职工大学</option>
        
            <option value="418" >延边职工大学</option>
        
            <option value="419" >长春职工医科大学</option>
        
            <option value="420" >长春市直属机关业余大学</option>
        
            <option value="421" >长春市建筑职工业余大学</option>
        
            <option value="422" >长春职工大学</option>
        
            <option value="423" >长春广播电视大学</option>
        
            <option value="424" >长白山职业技术学院</option>
        
            <option value="425" >长春邮电学院</option>
        
            <option value="426" >吉林职业师范学院</option>
        
            <option value="427" >长春博文职业学院</option>
        
            <option value="428" >长春汽车高等专科学校</option>
        
            <option value="429" >吉林北华管理学院</option>
        
            <option value="430" >长春高等汽车专科学校</option>
        
            <option value="431" >长春市培林外国语职业学校</option>
        
            <option value="432" >长春幼儿师范学校</option>
        
            <option value="433" >长春艺术学校</option>
        
            <option value="434" >吉林警察学院</option>
        
            <option value="435" >大连理工大学</option>
        
            <option value="436" >东北大学</option>
        
            <option value="437" >辽宁大学</option>
        
            <option value="438" >大连海事大学</option>
        
            <option value="439" >东北财经大学</option>
        
            <option value="440" >大连大学</option>
        
            <option value="441" >大连交通大学</option>
        
            <option value="442" >大连医科大学</option>
        
            <option value="443" >辽宁师范大学</option>
        
            <option value="444" >大连民族学院</option>
        
            <option value="445" >大连工业大学</option>
        
            <option value="446" >大连海洋大学</option>
        
            <option value="447" >大连外国语学院</option>
        
            <option value="448" >辽宁对外经贸学院</option>
        
            <option value="449" >沈阳大学</option>
        
            <option value="450" >沈阳理工大学</option>
        
            <option value="451" >沈阳工业大学</option>
        
            <option value="452" >沈阳建筑大学</option>
        
            <option value="453" >沈阳农业大学</option>
        
            <option value="454" >辽宁中医药大学</option>
        
            <option value="455" >沈阳药科大学</option>
        
            <option value="456" >沈阳师范大学</option>
        
            <option value="457" >中国刑警学院</option>
        
            <option value="458" >沈阳化工大学</option>
        
            <option value="459" >沈阳航空航天大学</option>
        
            <option value="460" >沈阳工程学院</option>
        
            <option value="461" >沈阳医学院</option>
        
            <option value="462" >沈阳体育学院</option>
        
            <option value="463" >鲁迅美术学院</option>
        
            <option value="464" >沈阳音乐学院</option>
        
            <option value="465" >中国医科大学</option>
        
            <option value="466" >辽宁工程技术大学</option>
        
            <option value="467" >辽宁石化大学</option>
        
            <option value="468" >辽宁科技大学</option>
        
            <option value="469" >鞍山师范学院</option>
        
            <option value="470" >渤海大学</option>
        
            <option value="471" >辽宁工业大学</option>
        
            <option value="472" >辽宁医学院</option>
        
            <option value="473" >辽宁科技学院</option>
        
            <option value="474" >辽东学院</option>
        
            <option value="475" >鞍山市高等职业专科学校</option>
        
            <option value="476" >渤海船舶职业学院</option>
        
            <option value="477" >渤海大学文理学院</option>
        
            <option value="478" >朝阳师范高等专科学校</option>
        
            <option value="479" >大连东软信息学院</option>
        
            <option value="480" >大连翻译职业技术学院</option>
        
            <option value="481" >大连枫叶职业技术学院</option>
        
            <option value="482" >大连软件职业学院</option>
        
            <option value="483" >大连商务职业学院</option>
        
            <option value="484" >大连艺术职业学院</option>
        
            <option value="485" >大连职业技术学院</option>
        
            <option value="486" >抚顺师范高等专科学校</option>
        
            <option value="487" >抚顺职业技术学院</option>
        
            <option value="488" >阜新高等专科学校</option>
        
            <option value="489" >锦州商务职业学院</option>
        
            <option value="490" >锦州师范高等专科学校</option>
        
            <option value="491" >辽宁广播电视大学</option>
        
            <option value="492" >辽宁广告职业学院</option>
        
            <option value="493" >辽宁机电职业技术学院</option>
        
            <option value="494" >辽宁交通高等专科学校</option>
        
            <option value="495" >沈阳大学师范学院</option>
        
            <option value="496" >辽宁金融职业学院</option>
        
            <option value="497" >辽宁经济职业技术学院</option>
        
            <option value="498" >辽宁警官高等专科学校</option>
        
            <option value="499" >辽宁科技大学</option>
        
            <option value="500" >辽宁林业职业技术学院</option>
        
            <option value="501" >辽宁美术职业学院</option>
        
            <option value="502" >辽宁农业职业技术学院</option>
        
            <option value="503" >辽宁商贸职业学院</option>
        
            <option value="504" >辽宁石化职业技术学</option>
        
            <option value="505" >大连广播电视大学</option>
        
            <option value="506" >辽宁体育运动职业技术学院</option>
        
            <option value="507" >辽宁信息职业技术学院</option>
        
            <option value="508" >辽阳职业技术学院</option>
        
            <option value="509" >盘锦职业技术学院</option>
        
            <option value="510" >沈阳航空职业技术学院</option>
        
            <option value="511" >沈阳职业技术学院</option>
        
            <option value="512" >辽宁职业学院</option>
        
            <option value="513" >铁岭师范高等专科学校</option>
        
            <option value="514" >营口职业技术学院</option>
        
            <option value="515" >沈阳广播电视大学</option>
        
            <option value="516" >辽河石油职业技术学院</option>
        
            <option value="517" >沈阳航空工业学院北方科技学院</option>
        
            <option value="518" >沈阳理工大学应用技术学院</option>
        
            <option value="519" >大连工业大学艺术与信息工程学院</option>
        
            <option value="520" >大连交通大学信息工程学院</option>
        
            <option value="521" >沈阳建筑大学城市建设学院</option>
        
            <option value="522" >辽宁科技大学信息技术学院</option>
        
            <option value="523" >辽宁石油化工大学顺华能源学院</option>
        
            <option value="524" >沈阳化工学院科亚学院</option>
        
            <option value="525" >沈阳农业大学科学技术学院</option>
        
            <option value="526" >中国医科大学临床医药学院</option>
        
            <option value="527" >大连医科大学中山学院</option>
        
            <option value="528" >辽宁医学院医疗学院</option>
        
            <option value="529" >辽宁中医药大学杏林学院</option>
        
            <option value="530" >沈阳医学院何氏视觉科学学院</option>
        
            <option value="531" >辽宁师范大学海华学院</option>
        
            <option value="532" >东北财经大学津桥商学院</option>
        
            <option value="533" >沈阳师范大学渤海学</option>
        
            <option value="534" >大连理工大学城市学院</option>
        
            <option value="535" >沈阳大学科技工程学院</option>
        
            <option value="536" >辽宁装备制造职业技术学院</option>
        
            <option value="537" >辽宁文化艺术职工大学</option>
        
            <option value="538" >辽宁公安司法管理干部学院</option>
        
            <option value="539" >沈阳工业大学工程学院</option>
        
            <option value="540" >海军职工大学</option>
        
            <option value="541" >阜新矿务局职工大学</option>
        
            <option value="542" >沈阳机械工业职工大学</option>
        
            <option value="543" >阜新煤炭职工医学专科学校</option>
        
            <option value="544" >辽宁财贸职工大学</option>
        
            <option value="545" >大连市教育学院</option>
        
            <option value="546" >朝阳职工工学院</option>
        
            <option value="547" >鞍山钢铁集团公司职工大学</option>
        
            <option value="548" >抚顺石油化工公司职工大学</option>
        
            <option value="549" >辽宁兵器工业职工大学</option>
        
            <option value="550" >本溪钢铁公司职工工学院</option>
        
            <option value="551" >大连工人大学</option>
        
            <option value="552" >大连职工大学</option>
        
            <option value="553" >抚顺矿务局职工工学院</option>
        
            <option value="554" >辽宁地质工程职业学院</option>
        
            <option value="555" >辽宁中医药大学</option>
        
            <option value="556" >辽宁建筑职业技术学院</option>
        
            <option value="557" >沈阳国际科学技术专修学院</option>
        
            <option value="558" >辽宁商务职业学院</option>
        
            <option value="559" >辽宁财贸学院</option>
        
            <option value="560" >大连市工人大学</option>
        
            <option value="561" >辽宁广告设计学院</option>
        
            <option value="562" >沈阳工业大学（辽阳校区）</option>
        
            <option value="563" >辽宁省交通高等专科学校</option>
        
            <option value="564" >辽宁省城市建设职业技术学院</option>
        
            <option value="565" >辽宁对外经贸学院</option>
        
            <option value="566" >大连艺术学院</option>
        
            <option value="567" >辽宁税务高等专科学校</option>
        
            <option value="568" >抚顺高等专科学校'</option>
        
            <option value="569" >吉林大学工商管理学院</option>
        
            <option value="570" >辽宁省高等专科学校</option>
        
            <option value="571" >辽宁财政高等专科学校</option>
        
            <option value="572" >大连航运职业技术学院</option>
        
            <option value="573" >辽宁东方中医学院</option>
        
            <option value="574" >沈阳师范渤海学院</option>
        
            <option value="575" >辽宁公安司法干部管理学院</option>
        
            <option value="576" >中国人民解放军大连医学高等专科学校</option>
        
            <option value="577" >东北大学东软信息学院</option>
        
            <option value="578" >大连装备制造职业技术学院</option>
        
            <option value="579" >沈阳建筑大学</option>
        
            <option value="580" >大连东方外国语学院</option>
        
            <option value="581" >锦州医学院畜牧兽医学院</option>
        
            <option value="582" >辽宁铁道职业技术学院</option>
        
            <option value="583" >沈阳音乐学院附属大连音乐舞蹈学校</option>
        
            <option value="584" >南开大学</option>
        
            <option value="585" >天津大学</option>
        
            <option value="586" >河北工业大学</option>
        
            <option value="587" >天津师范大学</option>
        
            <option value="588" >天津工业大学</option>
        
            <option value="589" >天津科技大学</option>
        
            <option value="590" >天津理工大学</option>
        
            <option value="591" >天津医科大学</option>
        
            <option value="592" >天津中医药大学</option>
        
            <option value="593" >天津财经大学</option>
        
            <option value="594" >中国民航大学</option>
        
            <option value="595" >天津城市建设学院</option>
        
            <option value="596" >天津农学院</option>
        
            <option value="597" >天津工程师范大学</option>
        
            <option value="598" >天津外国语大学</option>
        
            <option value="599" >天津商业大学</option>
        
            <option value="600" >天津体育学院</option>
        
            <option value="601" >天津音乐学院</option>
        
            <option value="602" >天津美术学院</option>
        
            <option value="603" >民办天狮职业技术学院</option>
        
            <option value="604" >天津滨海职业技术学院</option>
        
            <option value="605" >天津渤海职业技术学院</option>
        
            <option value="606" >天津城市建设管理职业技术学院</option>
        
            <option value="607" >天津城市职业学院</option>
        
            <option value="608" >天津电子信息职业技术学院</option>
        
            <option value="609" >天津对外经济贸易职业学院</option>
        
            <option value="610" >天津工程职业技术学院</option>
        
            <option value="611" >天津工商职业技术学院</option>
        
            <option value="612" >天津工业职业技术学院</option>
        
            <option value="613" >天津工艺美术职业学院</option>
        
            <option value="614" >天津公安警官职业学院</option>
        
            <option value="615" >天津海运职业学院</option>
        
            <option value="616" >天津机电职业技术学院</option>
        
            <option value="617" >天津交通职业学院</option>
        
            <option value="618" >天津开发区职业技术学院</option>
        
            <option value="619" >天津青年职业学院</option>
        
            <option value="620" >天津轻工职业技术学院</option>
        
            <option value="621" >天津生物工程职业技术学院</option>
        
            <option value="622" >天津石油职业技术学院</option>
        
            <option value="623" >天津铁道职业技术学院</option>
        
            <option value="624" >天津现代职业技术学院</option>
        
            <option value="625" >天津冶金职业技术学院</option>
        
            <option value="626" >天津医学高等专科学校</option>
        
            <option value="627" >天津艺术职业学院</option>
        
            <option value="628" >天津职业大学</option>
        
            <option value="629" >天津中德职业技术学院</option>
        
            <option value="630" >天津市工会管理干部学院</option>
        
            <option value="631" >天津外国语学院滨海外事学院</option>
        
            <option value="632" >天津体育学院运动与文化艺术学院</option>
        
            <option value="633" >天津商学院宝德学院</option>
        
            <option value="634" >天津医科大学临床医学院</option>
        
            <option value="635" >北京科技大学天津学院</option>
        
            <option value="636" >天津师范大学津沽学院</option>
        
            <option value="637" >天津理工大学中环信息学院</option>
        
            <option value="638" >天津大学仁爱学院</option>
        
            <option value="639" >天津财经大学珠江学院</option>
        
            <option value="640" >南开大学滨海学院</option>
        
            <option value="641" >天津市职工经济技术大学</option>
        
            <option value="642" >天津市房地产局职工大学</option>
        
            <option value="643" >天津市政法管理干部学院</option>
        
            <option value="644" >天津市财贸管理干部学院</option>
        
            <option value="645" >天津市广播电视大学</option>
        
            <option value="646" >天津市管理干部学院</option>
        
            <option value="647" >天津市渤海化工职工学院</option>
        
            <option value="648" >天津市南开区职工大学</option>
        
            <option value="649" >天津市红桥区职工大学</option>
        
            <option value="650" >天津市建筑工程职工大学</option>
        
            <option value="651" >天津市河东区职工大学</option>
        
            <option value="652" >天津市河西区职工大学</option>
        
            <option value="653" >天津市和平区新华职工大学</option>
        
            <option value="654" >天津物资管理干部学院</option>
        
            <option value="655" >天津市海军工程大学</option>
        
            <option value="656" >中国旅游干部管理学院</option>
        
            <option value="657" >天津海运职业学校</option>
        
            <option value="658" >天津市国土资源和房屋职业学院</option>
        
            <option value="659" >天津轻工职业学院</option>
        
            <option value="660" >斯波泰克高级技工学院</option>
        
            <option value="661" >天津广播影视职业学院</option>
        
            <option value="662" >天津职业技术师范大学</option>
        
            <option value="663" >中国科学技术大学</option>
        
            <option value="664" >安徽大学</option>
        
            <option value="665" >合肥工业大学</option>
        
            <option value="666" >安徽医科大学</option>
        
            <option value="667" >安徽建筑工业学院</option>
        
            <option value="668" >安徽中医学院</option>
        
            <option value="669" >合肥学院</option>
        
            <option value="670" >安徽农业大学</option>
        
            <option value="671" >安徽工业大学</option>
        
            <option value="672" >安徽科技学院</option>
        
            <option value="673" >皖南医学院</option>
        
            <option value="674" >安徽师范大学</option>
        
            <option value="675" >安徽工程大学</option>
        
            <option value="676" >蚌埠医学院</option>
        
            <option value="677" >安徽财经大学</option>
        
            <option value="678" >阜阳师范学院</option>
        
            <option value="679" >淮南师范学院</option>
        
            <option value="680" >安徽理工大学</option>
        
            <option value="681" >淮北师范大学</option>
        
            <option value="682" >安庆师范学院</option>
        
            <option value="683" >铜陵学院</option>
        
            <option value="684" >皖西学院</option>
        
            <option value="685" >巢湖学院</option>
        
            <option value="686" >滁州学院</option>
        
            <option value="687" >宿州学院</option>
        
            <option value="688" >黄山学院</option>
        
            <option value="689" >新华学院</option>
        
            <option value="690" >蚌埠学院</option>
        
            <option value="691" >安徽财贸职业学院</option>
        
            <option value="692" >安徽城市管理职业学院</option>
        
            <option value="693" >安徽电气工程职业技术学院</option>
        
            <option value="694" >安徽电子信息职业技术学院</option>
        
            <option value="695" >安徽工贸职业技术学院</option>
        
            <option value="696" >安徽工商职业学院</option>
        
            <option value="697" >安徽工业经济职业技术学院</option>
        
            <option value="698" >安徽公安职业学院</option>
        
            <option value="699" >安徽广播影视职业技术学院</option>
        
            <option value="700" >安徽国防科技职业学院</option>
        
            <option value="701" >安徽国际商务职业学院</option>
        
            <option value="702" >安徽机电职业技术学院</option>
        
            <option value="703" >安徽交通职业技术学院</option>
        
            <option value="704" >安徽教育学院</option>
        
            <option value="705" >安徽经济管理学院</option>
        
            <option value="706" >安徽警官职业学院</option>
        
            <option value="707" >安徽林业职业技术学院</option>
        
            <option value="708" >安徽明星科技职业学院</option>
        
            <option value="709" >安徽商贸职业技术学院</option>
        
            <option value="710" >安徽审计职业学院</option>
        
            <option value="711" >安徽省三联职业技术学院</option>
        
            <option value="712" >安徽水利水电职业技术学院</option>
        
            <option value="713" >安徽体育运动职业技术学院</option>
        
            <option value="714" >安徽文达信息技术职业学院</option>
        
            <option value="715" >安徽新闻出版职业技术学院</option>
        
            <option value="716" >安徽冶金科技职业学院</option>
        
            <option value="717" >安徽医学高等专科学校</option>
        
            <option value="718" >安徽艺术职业学院</option>
        
            <option value="719" >安徽邮电职业技术学院</option>
        
            <option value="720" >安徽职业技术学院</option>
        
            <option value="721" >安徽中澳科技职业学院</option>
        
            <option value="722" >安徽中医药高等专科学校</option>
        
            <option value="723" >安庆职业技术学院</option>
        
            <option value="724" >蚌埠高等专科学校</option>
        
            <option value="725" >蚌埠职业教育专修学院</option>
        
            <option value="726" >亳州师范高等专科学校</option>
        
            <option value="727" >亳州职业技术学院</option>
        
            <option value="728" >巢湖职业技术学院</option>
        
            <option value="729" >池州学院</option>
        
            <option value="730" >池州职业技术学院</option>
        
            <option value="731" >滁州职业技术学院</option>
        
            <option value="732" >阜阳科技职业学院</option>
        
            <option value="733" >阜阳职业技术学院'</option>
        
            <option value="734" >合肥市万博科技职业学院</option>
        
            <option value="735" >合肥通用职业技术学院</option>
        
            <option value="736" >淮北职业技术学院</option>
        
            <option value="737" >淮南联合大学</option>
        
            <option value="738" >淮南职业技术学院</option>
        
            <option value="739" >六安职业技术学院</option>
        
            <option value="740" >马鞍山师范高等专科学校</option>
        
            <option value="741" >安徽外国语职业技术学院</option>
        
            <option value="742" >合肥经济技术职业学院</option>
        
            <option value="743" >宿州职业技术学院</option>
        
            <option value="744" >铜陵职业技术学院</option>
        
            <option value="745" >芜湖信息技术职业学院</option>
        
            <option value="746" >芜湖职业技术学院</option>
        
            <option value="747" >宣城职业技术学院</option>
        
            <option value="748" >安徽师范大学皖江学院</option>
        
            <option value="749" >合肥师范学院</option>
        
            <option value="750" >凤阳师范高等专科学校</option>
        
            <option value="751" >安庆医药高等专科学校</option>
        
            <option value="752" >安徽工业职业技术学院</option>
        
            <option value="753" >合肥幼儿师范高等专科学校</option>
        
            <option value="754" >蚌埠经济技术职业学院</option>
        
            <option value="755" >合肥财经职业学院</option>
        
            <option value="756" >徽商职业学院</option>
        
            <option value="757" >民办安徽旅游职业学院</option>
        
            <option value="758" >宿县地区教育学院</option>
        
            <option value="759" >淮南市职工大学</option>
        
            <option value="760" >合肥职工科技大学</option>
        
            <option value="761" >合肥市职工大学</option>
        
            <option value="762" >安徽省广播电视大学</option>
        
            <option value="763" >安徽绿海商务职业学院</option>
        
            <option value="764" >河海大学文天学院</option>
        
            <option value="765" >安徽涉外经济职业学院</option>
        
            <option value="766" >皖南农学院</option>
        
            <option value="767" >安徽蚌埠汽车管理学院</option>
        
            <option value="768" >阜阳师范学院</option>
        
            <option value="769" >安庆师范学院</option>
        
            <option value="770" >安徽新华电脑专修学院</option>
        
            <option value="771" >蚌埠坦克学院</option>
        
            <option value="772" >安徽合肥机电技师学院</option>
        
            <option value="773" >安徽技术师范学院</option>
        
            <option value="774" >宿州市联合大学</option>
        
            <option value="775" >安徽经济管理干部学院</option>
        
            <option value="776" >安徽工商职业技术学院</option>
        
            <option value="777" >南京大学</option>
        
            <option value="778" >河海大学</option>
        
            <option value="779" >南京师范大学</option>
        
            <option value="780" >南京理工大学</option>
        
            <option value="781" >东南大学</option>
        
            <option value="782" >南京航空航天大学</option>
        
            <option value="783" >南京财经大学</option>
        
            <option value="784" >南京医科大学</option>
        
            <option value="785" >南京工业大学</option>
        
            <option value="786" >南京农业大学</option>
        
            <option value="787" >南京林业大学</option>
        
            <option value="788" >南京邮电大学</option>
        
            <option value="789" >南京信息工程大学</option>
        
            <option value="790" >南京中医药大学</option>
        
            <option value="791" >南京工程学院</option>
        
            <option value="792" >金陵科技学院</option>
        
            <option value="793" >南京晓庄学院</option>
        
            <option value="794" >南京审计学院</option>
        
            <option value="795" >江苏警官学院</option>
        
            <option value="796" >南京体育学院</option>
        
            <option value="797" >南京艺术学院</option>
        
            <option value="798" >三江学院</option>
        
            <option value="799" >中国药科大学</option>
        
            <option value="800" >苏州大学</option>
        
            <option value="801" >江南大学</option>
        
            <option value="802" >无锡高等师范学校</option>
        
            <option value="803" >南京工程高等职业学校</option>
        
            <option value="804" >南京政治学院</option>
        
            <option value="805" >江苏技术师范学院</option>
        
            <option value="806" >淮安广播电视大学</option>
        
            <option value="807" >徐州经贸高等职业学校</option>
        
            <option value="808" >江苏师范大学</option>
        
            <option value="809" >徐州师范大学连云港校区</option>
        
            <option value="810" >江苏科技大学张家港校区</option>
        
            <option value="811" >江苏建筑职业技术学院</option>
        
            <option value="812" >无锡旅游商贸高等职业技术学校</option>
        
            <option value="813" >无锡技师学院</option>
        
            <option value="814" >江苏京华科教专修学院</option>
        
            <option value="815" >盐城高等师范学校</option>
        
            <option value="816" >苏州教育学院</option>
        
            <option value="817" >徐州医学院</option>
        
            <option value="818" >中国矿业大学</option>
        
            <option value="819" >扬州大学</option>
        
            <option value="820" >江苏大学</option>
        
            <option value="821" >江苏科技大学</option>
        
            <option value="822" >南通大学</option>
        
            <option value="823" >常州大学</option>
        
            <option value="824" >常州工学院</option>
        
            <option value="825" >江苏技术师范学院</option>
        
            <option value="826" >淮阴工学院</option>
        
            <option value="827" >淮阴师范学院</option>
        
            <option value="828" >淮海工学院</option>
        
            <option value="829" >盐城工学院</option>
        
            <option value="830" >盐城师范学院</option>
        
            <option value="831" >常熟理工学院</option>
        
            <option value="832" >常州纺织服装职业技术学院</option>
        
            <option value="833" >常州工程职业技术学院</option>
        
            <option value="834" >常州机电职业技术学院</option>
        
            <option value="835" >常州轻工职业技术学院</option>
        
            <option value="836" >常州信息职业技术学院</option>
        
            <option value="837" >硅湖职业技术学院</option>
        
            <option value="838" >河海大学常州校区</option>
        
            <option value="839" >淮安信息职业技术学院</option>
        
            <option value="840" >建东职业技术学院</option>
        
            <option value="841" >健雄职业技术学院</option>
        
            <option value="842" >江海职业技术学院</option>
        
            <option value="843" >江南影视艺术职业学院</option>
        
            <option value="844" >江苏财经职业技术学院</option>
        
            <option value="845" >江苏海事职业技术学院</option>
        
            <option value="846" >江苏经贸职业技术学院</option>
        
            <option value="847" >江苏联合职业技术学院</option>
        
            <option value="848" >江苏农林职业技术学院</option>
        
            <option value="849" >江苏食品职业技术学院</option>
        
            <option value="850" >江苏信息职业技术学院</option>
        
            <option value="851" >江苏畜牧兽医职业技术学院</option>
        
            <option value="852" >江阴职业技术学院</option>
        
            <option value="853" >金肯职业技术学院</option>
        
            <option value="854" >金山职业技术学院</option>
        
            <option value="855" >九州职业技术学院</option>
        
            <option value="856" >昆山登云科技职业学院</option>
        
            <option value="857" >连云港师范高等专科学校</option>
        
            <option value="858" >连云港职业技术学院</option>
        
            <option value="859" >民办明达职业技术学院</option>
        
            <option value="860" >南京动力高等专科学校</option>
        
            <option value="861" >南京工业职业技术学院</option>
        
            <option value="862" >南京化工职业技术学院</option>
        
            <option value="863" >南京交通职业技术学院</option>
        
            <option value="864" >南京人口管理干部学院</option>
        
            <option value="865" >南京森林警察学院</option>
        
            <option value="866" >南京视觉艺术职业学院</option>
        
            <option value="867" >南京特殊教育职业技术学院</option>
        
            <option value="868" >南京铁道职业技术学院</option>
        
            <option value="869" >南京信息职业技术学院</option>
        
            <option value="870" >南通纺织职业技术学院</option>
        
            <option value="871" >南通航运职业技术学院</option>
        
            <option value="872" >南通农业职业技术学院</option>
        
            <option value="873" >南通职业大学</option>
        
            <option value="874" >培尔职业技术学院</option>
        
            <option value="875" >沙洲职业工学院</option>
        
            <option value="876" >苏州港大思培科技职业学院</option>
        
            <option value="877" >苏州工业园区职业技术学院</option>
        
            <option value="878" >苏州工业职业技术学院</option>
        
            <option value="879" >苏州工艺美术职业技术学院</option>
        
            <option value="880" >苏州经贸职业技术学院</option>
        
            <option value="881" >苏州科技大学</option>
        
            <option value="882" >苏州农业职业技术学院</option>
        
            <option value="883" >苏州托普信息职业技术学院</option>
        
            <option value="884" >苏州职业大学</option>
        
            <option value="885" >宿迁学院</option>
        
            <option value="886" >泰州师范高等专科学校</option>
        
            <option value="887" >泰州职业技术学院</option>
        
            <option value="888" >无锡城市职业技术学院</option>
        
            <option value="889" >无锡工艺职业技术学院</option>
        
            <option value="890" >无锡科技职业学院</option>
        
            <option value="891" >无锡南洋职业技术学院</option>
        
            <option value="892" >无锡轻工大学</option>
        
            <option value="893" >无锡商业职业技术学院</option>
        
            <option value="894" >无锡职业技术学院</option>
        
            <option value="895" >徐州工业职业技术学院</option>
        
            <option value="896" >徐州广播电视大学</option>
        
            <option value="897" >江苏建筑学院</option>
        
            <option value="898" >徐州教育学院</option>
        
            <option value="899" >徐州工程学院</option>
        
            <option value="900" >炎黄职业技术学院</option>
        
            <option value="901" >盐城纺织职业技术学院</option>
        
            <option value="902" >扬州工业职业技术学院</option>
        
            <option value="903" >扬州环境资源管理学院</option>
        
            <option value="904" >扬州环境资源职业技术学院</option>
        
            <option value="905" >扬州教育学院</option>
        
            <option value="906" >扬州职业大学</option>
        
            <option value="907" >应天职业技术学院</option>
        
            <option value="908" >镇江市高等专科学校</option>
        
            <option value="909" >正德职业技术学院</option>
        
            <option value="910" >中国传媒大学南广学院</option>
        
            <option value="911" >钟山职业技术学院</option>
        
            <option value="912" >紫琅职业技术学院</option>
        
            <option value="913" >江苏广播电视大学</option>
        
            <option value="914" >江苏教育学院</option>
        
            <option value="915" >徐州师范高等专科学校</option>
        
            <option value="916" >江苏省省级机关管理干部学院</option>
        
            <option value="917" >江苏职工医科大学</option>
        
            <option value="918" >苏州卫生职业技术学院</option>
        
            <option value="919" >盐城卫生职业技术学院</option>
        
            <option value="920" >金陵旅馆管理干部学院</option>
        
            <option value="921" >南京市广播电视大学</option>
        
            <option value="922" >南京机电职业技术学院</option>
        
            <option value="923" >江苏城市职业学院</option>
        
            <option value="924" >苏州高博软件技术职业学院</option>
        
            <option value="925" >南京旅游职业学院</option>
        
            <option value="926" >空军第一职工大学</option>
        
            <option value="927" >江苏省青年管理干部学院</option>
        
            <option value="928" >江苏省广播电视大学</option>
        
            <option value="929" >南京金陵旅馆管理干部学院</option>
        
            <option value="930" >南通市工人业余大学</option>
        
            <option value="931" >常州市职工大学</option>
        
            <option value="932" >南京市职工大学</option>
        
            <option value="933" >南京联合职工大学</option>
        
            <option value="934" >江苏电力职工大学</option>
        
            <option value="935" >宿迁职业技术学院</option>
        
            <option value="936" >南京工程兵工程学校</option>
        
            <option value="937" >南京理工大学泰州科技学院</option>
        
            <option value="938" >东南大学成贤学院</option>
        
            <option value="939" >南京理工大学紫金学院</option>
        
            <option value="940" >南京航空航天大学金城学院</option>
        
            <option value="941" >南京财经大学红山学院</option>
        
            <option value="942" >南京师范大学泰州学院</option>
        
            <option value="943" >南京审计学院金审学院</option>
        
            <option value="944" >南通大学杏林学院</option>
        
            <option value="945" >江苏工业学院怀德学院</option>
        
            <option value="946" >江苏科技大学南徐学院</option>
        
            <option value="947" >南京邮电大学通达学院</option>
        
            <option value="948" >徐州师范大学科文学院</option>
        
            <option value="949" >扬州大学广陵学院</option>
        
            <option value="950" >江苏大学京江学院</option>
        
            <option value="951" >苏州科技学院天平学院</option>
        
            <option value="952" >苏州大学应用技术学院</option>
        
            <option value="953" >苏州大学文正学院</option>
        
            <option value="954" >南京信息工程大学滨江学院</option>
        
            <option value="955" >南京中医药大学翰林学院</option>
        
            <option value="956" >南京师范大学中北学院</option>
        
            <option value="957" >南京工业大学浦江学院</option>
        
            <option value="958" >江南大学太湖学院</option>
        
            <option value="959" >南通体臣卫生学校</option>
        
            <option value="960" >南通市广播电视大学</option>
        
            <option value="961" >江苏省南通商贸高等职业学校</option>
        
            <option value="962" >南通高等师范学校</option>
        
            <option value="963" >如皋高等师范学校</option>
        
            <option value="964" >南通市中等专业学校</option>
        
            <option value="965" >太湖创意职业技术学院</option>
        
            <option value="966" >西交利物浦大学</option>
        
            <option value="967" >南京中天专修学院</option>
        
            <option value="968" >江苏苏州广播电视大学</option>
        
            <option value="969" >南京金陵科技专修学院</option>
        
            <option value="970" >江苏科技经贸专修学院</option>
        
            <option value="971" >江苏省无锡交通高等职业技术学校</option>
        
            <option value="972" >南京新华电脑专修学院</option>
        
            <option value="973" >河海大学继续教育学院</option>
        
            <option value="974" >江苏城镇建设学校</option>
        
            <option value="975" >南京航天管理干部学院</option>
        
            <option value="976" >中国人民大学国际学院</option>
        
            <option value="977" >徐州幼儿高等师范学校</option>
        
            <option value="978" >江苏技术师范东方学院</option>
        
            <option value="979" >南京高等职业技术学校</option>
        
            <option value="980" >江苏省司法警官高等职业学校</option>
        
            <option value="981" >苏州大学宿迁学院</option>
        
            <option value="982" >徐州医学院华方学院</option>
        
            <option value="983" >中国矿业大学徐海学院</option>
        
            <option value="984" >苏州信息职业技术学院</option>
        
            <option value="985" >江苏东南科技专修学院</option>
        
            <option value="986" >盐城生物工程高等职业技术学院</option>
        
            <option value="987" >江苏电大通州学院</option>
        
            <option value="988" >南京大学金陵学院</option>
        
            <option value="989" >运河高等师范学校</option>
        
            <option value="990" >南京东方文理研修学院</option>
        
            <option value="991" >徐州财经高等职业技术学校</option>
        
            <option value="992" >浙江大学</option>
        
            <option value="993" >浙江理工大学</option>
        
            <option value="994" >浙江工业大学</option>
        
            <option value="995" >杭州电子科技大学</option>
        
            <option value="996" >浙江中医药大学</option>
        
            <option value="997" >浙江工商大学</option>
        
            <option value="998" >中国计量学院</option>
        
            <option value="999" >浙江科技学院</option>
        
            <option value="1000" >浙江农林大学</option>
        
            <option value="1001" >杭州师范大学</option>
        
            <option value="1002" >浙江传媒学院</option>
        
            <option value="1003" >浙江财经大学</option>
        
            <option value="1004" >中国美术学院</option>
        
            <option value="1005" >浙江树人大学</option>
        
            <option value="1006" >浙江农业商贸职业学院</option>
        
            <option value="1007" >浙江三联专修学院</option>
        
            <option value="1008" >浙江三联专修学院</option>
        
            <option value="1009" >杭州之江专修学院</option>
        
            <option value="1010" >上海杉达学院嘉善光彪学院</option>
        
            <option value="1011" >浙江吉利技师学院</option>
        
            <option value="1012" >浙江宇翔外国语专修学院</option>
        
            <option value="1013" >宁波大学</option>
        
            <option value="1014" >宁波工程学院</option>
        
            <option value="1015" >浙江万里学院</option>
        
            <option value="1016" >宁波诺丁汉大学</option>
        
            <option value="1017" >嘉兴学院</option>
        
            <option value="1018" >浙江海洋大学</option>
        
            <option value="1019" >温州大学</option>
        
            <option value="1020" >温州医学院</option>
        
            <option value="1021" >湖州师范学院</option>
        
            <option value="1022" >台州学院</option>
        
            <option value="1023" >绍兴文理学院</option>
        
            <option value="1024" >浙江丽水学院</option>
        
            <option value="1025" >浙江师范大学</option>
        
            <option value="1026" >长征职业技术学院</option>
        
            <option value="1027" >公安海警学院</option>
        
            <option value="1028" >杭州万向职业技术学院</option>
        
            <option value="1029" >杭州职业技术学院</option>
        
            <option value="1030" >湖州职业技术学院</option>
        
            <option value="1031" >嘉兴职业技术学院</option>
        
            <option value="1032" >金华职业技术学院</option>
        
            <option value="1033" >浙江科技学院求是学院</option>
        
            <option value="1034" >丽水职业技术学院</option>
        
            <option value="1035" >宁波城市职业技术学院</option>
        
            <option value="1036" >宁波大红鹰学院</option>
        
            <option value="1037" >宁波大学科技学院</option>
        
            <option value="1038" >宁波天一职业技术学院</option>
        
            <option value="1039" >宁波职业技术学院</option>
        
            <option value="1040" >衢州职业技术学院</option>
        
            <option value="1041" >绍兴职业技术学院</option>
        
            <option value="1042" >浙江越秀外国语学院</option>
        
            <option value="1043" >台州职业技术学院</option>
        
            <option value="1044" >温州职业技术学院</option>
        
            <option value="1045" >义乌工商职业技术学院</option>
        
            <option value="1046" >浙江大学城市学院</option>
        
            <option value="1047" >浙江大学宁波理工学院</option>
        
            <option value="1048" >浙江东方职业技术学院</option>
        
            <option value="1049" >浙江纺织服装职业技术学院</option>
        
            <option value="1050" >浙江工贸职业技术学院</option>
        
            <option value="1051" >浙江工商职业技术学院</option>
        
            <option value="1052" >浙江工业职业技术学院</option>
        
            <option value="1053" >浙江警察学院</option>
        
            <option value="1054" >浙江广厦建设职业技术学院</option>
        
            <option value="1055" >浙江机电职业技术学院</option>
        
            <option value="1056" >浙江建设职业技术学院</option>
        
            <option value="1057" >浙江交通职业技术学院</option>
        
            <option value="1058" >浙江外国语学院</option>
        
            <option value="1059" >浙江金融职业学院</option>
        
            <option value="1060" >浙江经济职业技术学院</option>
        
            <option value="1061" >浙江经贸职业技术学院</option>
        
            <option value="1062" >浙江警官职业学院</option>
        
            <option value="1063" >浙江旅游职业学院</option>
        
            <option value="1064" >浙江商业职业技术学院</option>
        
            <option value="1065" >浙江水利水电专科学校</option>
        
            <option value="1066" >浙江医学高等专科学校</option>
        
            <option value="1067" >浙江医药高等专科学校</option>
        
            <option value="1068" >浙江艺术职业学院</option>
        
            <option value="1069" >浙江育英职业技术学院</option>
        
            <option value="1070" >浙江电力职业技术学院</option>
        
            <option value="1071" >嘉兴南洋职业技术学院</option>
        
            <option value="1072" >浙江国际海运职业技术学校</option>
        
            <option value="1073" >衢州学院</option>
        
            <option value="1074" >浙江国际海运职业技术学院</option>
        
            <option value="1075" >温州市工人业余大学</option>
        
            <option value="1076" >宁波市广播电视大学</option>
        
            <option value="1077" >浙江嘉兴教育学院</option>
        
            <option value="1078" >浙江经济管理职工大学</option>
        
            <option value="1079" >浙江省广播电视大学</option>
        
            <option value="1080" >金华教育学院</option>
        
            <option value="1081" >宁波教育学院</option>
        
            <option value="1082" >杭州成人科技大学</option>
        
            <option value="1083" >杭州市工人业余大学</option>
        
            <option value="1084" >浙江省省级机关职工业余大学</option>
        
            <option value="1085" >浙江同济科技职业学院</option>
        
            <option value="1086" >浙江邮电职业技术学院</option>
        
            <option value="1087" >浙江体育职业技术学院</option>
        
            <option value="1088" >台州科技职业学院</option>
        
            <option value="1089" >温州科技职业学院</option>
        
            <option value="1090" >浙江理工大学成教学院北景园分院</option>
        
            <option value="1091" >同济大学浙江学院</option>
        
            <option value="1092" >浙江横店影视职业学院</option>
        
            <option value="1093" >杭州科技职业技术学院</option>
        
            <option value="1094" >浙江汽车职业技术学院</option>
        
            <option value="1095" >中国美术学院艺术设计职业技术学院</option>
        
            <option value="1096" >金华广播电视大学</option>
        
            <option value="1097" >杭州老和山职业技术学院</option>
        
            <option value="1098" >杭州师范大学钱江学院</option>
        
            <option value="1099" >浙江新世纪经贸专修学院</option>
        
            <option value="1100" >杭州人文专修学院</option>
        
            <option value="1101" >上海财经大学浙江学院</option>
        
            <option value="1102" >浙江师范大学行知学院</option>
        
            <option value="1103" >浙江理工大学科技与艺术学院</option>
        
            <option value="1104" >浙江工业大学之江学院</option>
        
            <option value="1105" >杭州江南专修学院</option>
        
            <option value="1106" >江南专修学院</option>
        
            <option value="1107" >西藏大学</option>
        
            <option value="1108" >西藏藏医学院</option>
        
            <option value="1109" >西藏民族学院</option>
        
            <option value="1110" >拉萨师范高等专科学校</option>
        
            <option value="1111" >西藏警官高等专科学校</option>
        
            <option value="1112" >西藏职业技术学院</option>
        
            <option value="1113" >西藏民院</option>
        
            <option value="1114" >香港大学</option>
        
            <option value="1115" >香港中文大学</option>
        
            <option value="1116" >香港科技大学</option>
        
            <option value="1117" >香港理工大学</option>
        
            <option value="1118" >香港城市大学</option>
        
            <option value="1119" >香港浸会大学</option>
        
            <option value="1120" >香港岭南大学</option>
        
            <option value="1121" >香港国际工商管理学院</option>
        
            <option value="1122" >香港珠海学院</option>
        
            <option value="1123" >香港教育学院</option>
        
            <option value="1124" >香港树仁大学</option>
        
            <option value="1125" >香港演艺学院</option>
        
            <option value="1126" >澳门大学</option>
        
            <option value="1127" >澳门理工学院</option>
        
            <option value="1128" >澳门科技大学</option>
        
            <option value="1129" >澳门旅游学院</option>
        
            <option value="1130" >澳门镜湖护理学院</option>
        
            <option value="1131" >澳门城市大学</option>
        
            <option value="1132" >天主教辅仁大学</option>
        
            <option value="1133" >长庚大学</option>
        
            <option value="1134" >私立义守大学</option>
        
            <option value="1135" >东海大学</option>
        
            <option value="1136" >国立台湾大学</option>
        
            <option value="1137" >国立中正大学</option>
        
            <option value="1138" >国立台湾艺术大学</option>
        
            <option value="1139" >国立清华大学</option>
        
            <option value="1140" >国立中山大学</option>
        
            <option value="1141" >国立政治大学</option>
        
            <option value="1142" >国立成功大学</option>
        
            <option value="1143" >国立中央大学</option>
        
            <option value="1144" >国立阳明大学</option>
        
            <option value="1145" >国立东华大学</option>
        
            <option value="1146" >国立中兴大学</option>
        
            <option value="1147" >国立台湾师范大学</option>
        
            <option value="1148" >国立台湾海洋大学</option>
        
            <option value="1149" >国立高雄大学</option>
        
            <option value="1150" >国立嘉义大学</option>
        
            <option value="1151" >国立台湾科技大学</option>
        
            <option value="1152" >国立空中大学</option>
        
            <option value="1153" >国立台北大学</option>
        
            <option value="1154" >国立高雄师范大学</option>
        
            <option value="1155" >国立联合大学</option>
        
            <option value="1156" >国立暨南国际大学</option>
        
            <option value="1157" >国立屏东科技大学</option>
        
            <option value="1158" >国立彰化师范大学</option>
        
            <option value="1159" >国立台北科技大学</option>
        
            <option value="1160" >国立台东大学</option>
        
            <option value="1161" >国立宜蓝大学</option>
        
            <option value="1162" >国立台北艺术大学</option>
        
            <option value="1163" >国立云林科技大学</option>
        
            <option value="1164" >国立台南大学</option>
        
            <option value="1165" >国立虎尾科技大学</option>
        
            <option value="1166" >国立花莲教育大学</option>
        
            <option value="1167" >国立高雄第一科技大学</option>
        
            <option value="1168" >国立屏东教育大学</option>
        
            <option value="1169" >国立新竹教育大学</option>
        
            <option value="1170" >国立澎湖科技大学</option>
        
            <option value="1171" >建国科技大学</option>
        
            <option value="1172" >国立台南艺术大学</option>
        
            <option value="1173" >国立高雄应用科技大学</option>
        
            <option value="1174" >国立高雄海洋科技大学</option>
        
            <option value="1175" >国立勤益科技大学</option>
        
            <option value="1176" >东吴大学</option>
        
            <option value="1177" >国立交通大学</option>
        
            <option value="1178" >逢甲大学</option>
        
            <option value="1179" >高雄医学大学</option>
        
            <option value="1180" >淡江大学</option>
        
            <option value="1181" >辅仁大学</option>
        
            <option value="1182" >台湾静宜大学</option>
        
            <option value="1183" >中国文化大学</option>
        
            <option value="1184" >育达科技大学</option>
        
            <option value="1185" >世新大学</option>
        
            <option value="1186" >铭传大学</option>
        
            <option value="1187" >国立台北教育大学</option>
        
            <option value="1188" >台湾亚洲大学</option>
        
            <option value="1189" >中原大学</option>
        
            <option value="1190" >台湾实践大学</option>
        
            <option value="1191" >景文科技大学</option>
        
            <option value="1192" >台湾东海大学</option>
        
            <option value="1193" >清云科技大学</option>
        
            <option value="1194" >台湾健行科技大学</option>
        
            <option value="1195" >朝阳科技大学</option>
        
            <option value="1196" >台湾元智大学</option>
        
            <option value="1197" >元培科技大学</option>
        
            <option value="1198" >私立中国医药大学</option>
        
            <option value="1199" >台湾明志科技大学</option>
        
            <option value="1200" >岭东科技大学</option>
        
            <option value="1201" >玄奘大学</option>
        
            <option value="1202" >圣约翰科技大学</option>
        
            <option value="1203" >文藻外语学院</option>
        
            <option value="1204" >大同大学</option>
        
            <option value="1205" >台湾昆山科技大学</option>
        
            <option value="1206" >海南大学</option>
        
            <option value="1207" >海南医学院</option>
        
            <option value="1208" >海南师范大学</option>
        
            <option value="1209" >华南热带农业大学</option>
        
            <option value="1210" >琼州大学</option>
        
            <option value="1211" >海口经济学院</option>
        
            <option value="1212" >海南经贸职业技术学院</option>
        
            <option value="1213" >海南软件职业技术学院</option>
        
            <option value="1214" >海南外国语职业学院</option>
        
            <option value="1215" >海南工商职业学院</option>
        
            <option value="1216" >海南政法职业学院</option>
        
            <option value="1217" >海南职业技术学院</option>
        
            <option value="1218" >琼台师范高等专科学校</option>
        
            <option value="1219" >三亚航空旅游职业学院</option>
        
            <option value="1220" >三亚卓达旅游职业学院</option>
        
            <option value="1221" >海南大学三亚学院</option>
        
            <option value="1222" >三亚城市职业学院</option>
        
            <option value="1223" >海南科技职业学院</option>
        
            <option value="1224" >三亚理工职业学院</option>
        
            <option value="1225" >青海大学</option>
        
            <option value="1226" >青海师范大学</option>
        
            <option value="1227" >青海民族大学</option>
        
            <option value="1228" >青海民族师范高等专科学校</option>
        
            <option value="1229" >青海财经职业学院</option>
        
            <option value="1230" >青海畜牧兽医职业技术学院</option>
        
            <option value="1231" >青海建筑职业技术学院</option>
        
            <option value="1232" >青海师范高等专科学校</option>
        
            <option value="1233" >青海警官职业学院</option>
        
            <option value="1234" >青海交通职业技术学院</option>
        
            <option value="1235" >青海卫生职业技术学院</option>
        
            <option value="1236" >新疆大学</option>
        
            <option value="1237" >新疆农业大学</option>
        
            <option value="1238" >新疆医科大学</option>
        
            <option value="1239" >新疆师范大学</option>
        
            <option value="1240" >新疆财经大学</option>
        
            <option value="1241" >新疆艺术学院</option>
        
            <option value="1242" >伊犁师范奎屯校区</option>
        
            <option value="1243" >石河子大学</option>
        
            <option value="1244" >塔里木大学</option>
        
            <option value="1245" >喀什师范学院</option>
        
            <option value="1246" >伊犁师范学院</option>
        
            <option value="1247" >昌吉学院</option>
        
            <option value="1248" >阿克苏职业技术学院</option>
        
            <option value="1249" >巴音郭楞职业技术学院</option>
        
            <option value="1250" >昌吉职业技术学院</option>
        
            <option value="1251" >和田师范专科学校</option>
        
            <option value="1252" >克拉玛依职业技术学院</option>
        
            <option value="1253" >乌鲁木齐职业大学</option>
        
            <option value="1254" >新疆兵团警官高等专科学校</option>
        
            <option value="1255" >新疆工业高等专科学校</option>
        
            <option value="1256" >新疆机电职业技术学院</option>
        
            <option value="1257" >新疆建设职业技术学院</option>
        
            <option value="1258" >新疆交通职业技术学院</option>
        
            <option value="1259" >新疆警官高等专科学校</option>
        
            <option value="1260" >新疆能源职业技术学院</option>
        
            <option value="1261" >新疆农业职业技术学院</option>
        
            <option value="1262" >新疆轻工职业技术学院</option>
        
            <option value="1263" >新疆石河子职业技术学院</option>
        
            <option value="1264" >新疆天山职业技术学院</option>
        
            <option value="1265" >新疆维吾尔医学专科学校</option>
        
            <option value="1266" >新疆现代职业技术学院</option>
        
            <option value="1267" >伊犁职业技术学院</option>
        
            <option value="1268" >新疆科信学院</option>
        
            <option value="1269" >新疆职业大学</option>
        
            <option value="1270" >新疆石油学院</option>
        
            <option value="1271" >新疆大学科学技术学院</option>
        
            <option value="1272" >新疆农业大学科学技术学院</option>
        
            <option value="1273" >新疆财经大学商务学院</option>
        
            <option value="1274" >新疆医科大学厚博学院</option>
        
            <option value="1275" >石河子大学科技学院</option>
        
            <option value="1276" >新疆教育学院</option>
        
            <option value="1277" >新疆政法学院</option>
        
            <option value="1278" >新疆广播电视大学</option>
        
            <option value="1279" >宁夏大学</option>
        
            <option value="1280" >北方民族大学</option>
        
            <option value="1281" >宁夏医科大学</option>
        
            <option value="1282" >宁夏理工大学</option>
        
            <option value="1283" >吴忠职业技术学院</option>
        
            <option value="1284" >宁夏职业技术学院</option>
        
            <option value="1285" >宁夏财经职业技术学院</option>
        
            <option value="1286" >宁夏司法警官职业学院</option>
        
            <option value="1287" >宁夏师范学院</option>
        
            <option value="1288" >宁夏工业职业学院</option>
        
            <option value="1289" >宁夏工商职业技术学院</option>
        
            <option value="1290" >宁夏建设职业技术学院</option>
        
            <option value="1291" >银川科技职业学院（银川大学）</option>
        
            <option value="1292" >宁夏大学新华学院</option>
        
            <option value="1293" >中国矿业大学银川学院</option>
        
            <option value="1294" >内蒙古大学</option>
        
            <option value="1295" >内蒙古工业大学</option>
        
            <option value="1296" >内蒙古农业大学</option>
        
            <option value="1297" >内蒙古师范大学</option>
        
            <option value="1298" >内蒙古医科大学</option>
        
            <option value="1299" >内蒙古财经大学</option>
        
            <option value="1300" >中央党校函授学院内蒙古分院</option>
        
            <option value="1301" >中共内蒙古自治区委员会党校</option>
        
            <option value="1302" >内蒙古自治区行政学院</option>
        
            <option value="1303" >内蒙古大学创业学院</option>
        
            <option value="1304" >内蒙古科技大学包头医学院</option>
        
            <option value="1305" >内蒙古师范大学鸿德学院</option>
        
            <option value="1306" >内蒙古科技大学</option>
        
            <option value="1307" >内蒙古民族大学</option>
        
            <option value="1308" >赤峰学院</option>
        
            <option value="1309" >呼伦贝尔学院</option>
        
            <option value="1310" >包头钢铁职业技术学院</option>
        
            <option value="1311" >包头轻工职业技术学院</option>
        
            <option value="1312" >包头职业技术学院</option>
        
            <option value="1313" >河套大学</option>
        
            <option value="1314" >呼和浩特职业学院</option>
        
            <option value="1315" >科尔沁艺术职业学院</option>
        
            <option value="1316" >内蒙古财税职业学院</option>
        
            <option value="1317" >内蒙古电子信息职业技术学院</option>
        
            <option value="1318" >内蒙古青城大学</option>
        
            <option value="1319" >内蒙古化工职业学院</option>
        
            <option value="1320" >内蒙古机电职业技术学院</option>
        
            <option value="1321" >内蒙古建筑职业技术学院</option>
        
            <option value="1322" >内蒙古交通职业技术学院</option>
        
            <option value="1323" >呼和浩特民族学院</option>
        
            <option value="1324" >内蒙古商贸职业学院</option>
        
            <option value="1325" >内蒙古体育职业学院</option>
        
            <option value="1326" >通辽职业学院</option>
        
            <option value="1327" >乌海职业技术学院</option>
        
            <option value="1328" >乌兰察布职业学院</option>
        
            <option value="1329" >锡林郭勒职业学院</option>
        
            <option value="1330" >兴安职业技术学院</option>
        
            <option value="1331" >内蒙古警察职业学院</option>
        
            <option value="1332" >内蒙古北方职业技术学院</option>
        
            <option value="1333" >内蒙古丰州学院</option>
        
            <option value="1334" >内蒙古经贸外语职业学院</option>
        
            <option value="1335" >内蒙古科技职业学院</option>
        
            <option value="1336" >赤峰职业技术学院</option>
        
            <option value="1337" >包头铁道职业技术学院</option>
        
            <option value="1338" >内蒙古广播电视大学直属学院</option>
        
            <option value="1339" >集宁师范学院</option>
        
            <option value="1340" >内蒙古财经学院</option>
        
            <option value="1341" >包头师范学院</option>
        
            <option value="1342" >内蒙古科技大学包头师范学院</option>
        
            <option value="1343" >内蒙古医药专修学院</option>
        
            <option value="1344" >鄂尔多斯职业学院</option>
        
            <option value="1345" >乌兰察布医学高等专科学校</option>
        
            <option value="1346" >复旦大学</option>
        
            <option value="1347" >上海交通大学</option>
        
            <option value="1348" >同济大学</option>
        
            <option value="1349" >华东师范大学</option>
        
            <option value="1350" >上海财经大学</option>
        
            <option value="1351" >华东理工大学</option>
        
            <option value="1352" >上海商学院</option>
        
            <option value="1353" >东华大学</option>
        
            <option value="1354" >上海理工大学</option>
        
            <option value="1355" >上海大学</option>
        
            <option value="1356" >上海外国语大学</option>
        
            <option value="1357" >上海海事大学</option>
        
            <option value="1358" >上海工程技术大学</option>
        
            <option value="1359" >上海海洋大学</option>
        
            <option value="1360" >上海中医药大学</option>
        
            <option value="1361" >上海师范大学</option>
        
            <option value="1362" >建桥学院</option>
        
            <option value="1363" >上海政法学院</option>
        
            <option value="1364" >上海电机学院</option>
        
            <option value="1365" >上海第二工业大学</option>
        
            <option value="1366" >上海应用技术学院</option>
        
            <option value="1367" >上海电力学院</option>
        
            <option value="1368" >上海对外贸易学院</option>
        
            <option value="1369" >上海金融学院</option>
        
            <option value="1370" >上海立信会计学院</option>
        
            <option value="1371" >上海体育学院</option>
        
            <option value="1372" >上海音乐学院</option>
        
            <option value="1373" >上海戏剧学院</option>
        
            <option value="1374" >杉达学院</option>
        
            <option value="1375" >华东政法大学</option>
        
            <option value="1376" >上海师范大学青年学院</option>
        
            <option value="1377" >中法艾菲服装设计师学院</option>
        
            <option value="1378" >上海市计算技术研究所</option>
        
            <option value="1379" >上海国家会计学院</option>
        
            <option value="1380" >上海外国语大学贤达经济人文学院</option>
        
            <option value="1381" >同济大学同科学院</option>
        
            <option value="1382" >上海师范大学天华学院</option>
        
            <option value="1383" >上海东方文化职业学院</option>
        
            <option value="1384" >上海工商学院</option>
        
            <option value="1385" >上海高级金融学院</option>
        
            <option value="1386" >复旦大学上海视觉艺术学院</option>
        
            <option value="1387" >复旦大学上海医学院</option>
        
            <option value="1388" >复旦大学太平洋金融学院</option>
        
            <option value="1389" >上海邦德职业技术学院</option>
        
            <option value="1390" >上海诚信学院</option>
        
            <option value="1391" >上海城市管理职业技术学院</option>
        
            <option value="1392" >上海出版印刷高等专科学校</option>
        
            <option value="1393" >上海电影艺术职业学院</option>
        
            <option value="1394" >上海电子信息职业技术学院</option>
        
            <option value="1395" >上海东海职业技术学院</option>
        
            <option value="1396" >上海工会管理职业学院</option>
        
            <option value="1397" >上海工商外国语学院</option>
        
            <option value="1398" >上海工艺美术职业学院</option>
        
            <option value="1399" >上海公安高等专科学校</option>
        
            <option value="1400" >上海海关学院</option>
        
            <option value="1401" >上海海事职业技术学院</option>
        
            <option value="1402" >上海济光职业技术学院</option>
        
            <option value="1403" >上海建峰职业技术学院</option>
        
            <option value="1404" >上海交通职业技术学院</option>
        
            <option value="1405" >上海科学技术职业学院</option>
        
            <option value="1406" >上海立达职业技术学院</option>
        
            <option value="1407" >上海旅游高等专科学校</option>
        
            <option value="1408" >上海民远职业技术学院</option>
        
            <option value="1409" >上海农林职业技术学院</option>
        
            <option value="1410" >上海欧华职业技术学院</option>
        
            <option value="1411" >上海思博职业技术学院</option>
        
            <option value="1412" >上海兴韦信息技术职业学院</option>
        
            <option value="1413" >上海新侨职业技术学院</option>
        
            <option value="1414" >上海行健职业学院</option>
        
            <option value="1415" >上海医疗器械高等专科学校</option>
        
            <option value="1416" >上海医药高等专科学校</option>
        
            <option value="1417" >上海震旦职业学院</option>
        
            <option value="1418" >上海中华职业技术学院</option>
        
            <option value="1419" >上海中侨职业技术学院</option>
        
            <option value="1420" >上海纺织工业职工大学</option>
        
            <option value="1421" >上海体育职业学院</option>
        
            <option value="1422" >上海医药职工大学</option>
        
            <option value="1423" >上海市广播电视大学</option>
        
            <option value="1424" >上海健康职业技术学院</option>
        
            <option value="1425" >上海职工体育运动技术学院</option>
        
            <option value="1426" >华东理工大学网络教育学院</option>
        
            <option value="1427" >上海市经济管理干部学院</option>
        
            <option value="1428" >上海社会科学院</option>
        
            <option value="1429" >上海大学艺术研究院</option>
        
            <option value="1430" >中国科学院上海生命科学研究院</option>
        
            <option value="1431" >上海生物制品研究所</option>
        
            <option value="1432" >上海行政学院</option>
        
            <option value="1433" >上海科技学院</option>
        
            <option value="1434" >拉萨尔国际设计学院</option>
        
            <option value="1435" >上海青年管理干部学院</option>
        
            <option value="1436" >上海鸿文职业技术学院</option>
        
            <option value="1437" >上海大学巴士汽车学院</option>
        
            <option value="1438" >河北大学</option>
        
            <option value="1439" >河北农业大学</option>
        
            <option value="1440" >中央司法警官学院</option>
        
            <option value="1441" >石家庄铁道大学</option>
        
            <option value="1442" >石家庄经济学院</option>
        
            <option value="1443" >河北京安学院</option>
        
            <option value="1444" >泊头职业学院</option>
        
            <option value="1445" >河北财经学院</option>
        
            <option value="1446" >石家庄幼儿师范高等专科学校</option>
        
            <option value="1447" >河北联合大学迁安学院</option>
        
            <option value="1448" >廊坊燕京职业技术学院</option>
        
            <option value="1449" >邢台广播电视大学</option>
        
            <option value="1450" >河北师范大学</option>
        
            <option value="1451" >河北科技大学</option>
        
            <option value="1452" >河北医科大学</option>
        
            <option value="1453" >河北经贸大学</option>
        
            <option value="1454" >河北体育学院</option>
        
            <option value="1455" >石家庄学院</option>
        
            <option value="1456" >燕山大学</option>
        
            <option value="1457" >河北科技师范学院</option>
        
            <option value="1458" >河北联合大学</option>
        
            <option value="1459" >华北煤炭医学院</option>
        
            <option value="1460" >唐山学院</option>
        
            <option value="1461" >唐山师范学院</option>
        
            <option value="1462" >北华航天工业学院</option>
        
            <option value="1463" >廊坊师范学院</option>
        
            <option value="1464" >防灾科技学院</option>
        
            <option value="1465" >华北科技学院</option>
        
            <option value="1466" >河北建筑工程学院</option>
        
            <option value="1467" >河北北方学院</option>
        
            <option value="1468" >承德医学院</option>
        
            <option value="1469" >邢台学院</option>
        
            <option value="1470" >河北工程大学</option>
        
            <option value="1471" >邯郸学院</option>
        
            <option value="1472" >衡水学院</option>
        
            <option value="1473" >保定电力职业技术学院</option>
        
            <option value="1474" >河北科技学院</option>
        
            <option value="1475" >河北金融学院</option>
        
            <option value="1476" >保定学院</option>
        
            <option value="1477" >保定职业技术学院</option>
        
            <option value="1478" >渤海石油职业学院</option>
        
            <option value="1479" >沧州师范学院</option>
        
            <option value="1480" >沧州医学高等专科学校</option>
        
            <option value="1481" >沧州职业技术学院</option>
        
            <option value="1482" >河北旅游职业学院</option>
        
            <option value="1483" >河北民族师范学院</option>
        
            <option value="1484" >承德石油高等专科学校</option>
        
            <option value="1485" >东北大学秦皇岛校区</option>
        
            <option value="1486" >邯郸职业技术学院</option>
        
            <option value="1487" >河北大学医学部</option>
        
            <option value="1488" >河北工程技术高等专科学校</option>
        
            <option value="1489" >河北工业职业技术学院</option>
        
            <option value="1490" >河北公安警察职业学院</option>
        
            <option value="1491" >河北化工医药职业技术学院</option>
        
            <option value="1492" >河北机电职业技术学院</option>
        
            <option value="1493" >河北建材职业技术学院</option>
        
            <option value="1494" >河北交通职业技术学院</option>
        
            <option value="1495" >河北京都高尔夫职业学院</option>
        
            <option value="1496" >河北女子职业技术学院</option>
        
            <option value="1497" >河北农业大学海洋学院</option>
        
            <option value="1498" >河北软件职业技术学院</option>
        
            <option value="1499" >河北省艺术职业学院</option>
        
            <option value="1500" >河北石油职业技术学院</option>
        
            <option value="1501" >河北司法警官职业学院</option>
        
            <option value="1502" >河北通信职业技术学院</option>
        
            <option value="1503" >河北远东职业技术学院</option>
        
            <option value="1504" >河北政法管理干部学院</option>
        
            <option value="1505" >河北职业技术学院</option>
        
            <option value="1506" >衡水职业技术学院</option>
        
            <option value="1507" >华北电力大学（保定）</option>
        
            <option value="1508" >廊坊大学城北大方正软件学院</option>
        
            <option value="1509" >廊坊东方大学城北京澳际联邦英语学校</option>
        
            <option value="1510" >廊坊东方大学城北京财经学院</option>
        
            <option value="1511" >廊坊东方大学城北京传媒学院</option>
        
            <option value="1512" >廊坊东方大学城北京经济技术职业学院</option>
        
            <option value="1513" >廊坊东方大学城北京经贸职业学院航空服务学院</option>
        
            <option value="1514" >廊坊东方大学城北京联合大学</option>
        
            <option value="1515" >廊坊东方大学城河北体育学院</option>
        
            <option value="1516" >廊坊东方大学城廊坊职业技术学院</option>
        
            <option value="1517" >秦皇岛教育学院</option>
        
            <option value="1518" >河北外国语职业学院</option>
        
            <option value="1519" >秦皇岛职业技术学院</option>
        
            <option value="1520" >河北美术学院</option>
        
            <option value="1521" >石家庄法商职业学院</option>
        
            <option value="1522" >石家庄工商职业学院</option>
        
            <option value="1523" >石家庄计算机职业学院</option>
        
            <option value="1524" >石家庄科技信息职业学院</option>
        
            <option value="1525" >石家庄理工职业学院</option>
        
            <option value="1526" >石家庄铁路职业技术学院</option>
        
            <option value="1527" >石家庄外国语职业学院</option>
        
            <option value="1528" >石家庄财经职业学院</option>
        
            <option value="1529" >石家庄外语翻译职业学院</option>
        
            <option value="1530" >石家庄信息工程职业学院</option>
        
            <option value="1531" >石家庄医学高等专科学校</option>
        
            <option value="1532" >河北传媒学院</option>
        
            <option value="1533" >石家庄邮电职业技术学院</option>
        
            <option value="1534" >石家庄职业技术学院</option>
        
            <option value="1535" >唐山工业职业技术学院</option>
        
            <option value="1536" >唐山广播电视大学</option>
        
            <option value="1537" >唐山科技职业技术学院</option>
        
            <option value="1538" >唐山职业技术学院</option>
        
            <option value="1539" >邢台医学高等专科学校</option>
        
            <option value="1540" >邢台职业技术学院</option>
        
            <option value="1541" >张家口职业技术学院</option>
        
            <option value="1542" >中国地质大学长城学院</option>
        
            <option value="1543" >中国环境管理干部学院</option>
        
            <option value="1544" >中国民航管理干部学院</option>
        
            <option value="1545" >张家口教育学院</option>
        
            <option value="1546" >河北能源职业技术学院</option>
        
            <option value="1547" >承德卫生学校</option>
        
            <option value="1548" >邯郸中原外国语职业学院</option>
        
            <option value="1549" >河北师范大学汇华学院</option>
        
            <option value="1550" >河北联合大学冀唐学院</option>
        
            <option value="1551" >河北医科大学临床学院</option>
        
            <option value="1552" >河北农业大学现代科技学院</option>
        
            <option value="1553" >石家庄铁道学院四方学院</option>
        
            <option value="1554" >燕山大学里仁学院</option>
        
            <option value="1555" >河北工程大学科信学院</option>
        
            <option value="1556" >河北联合大学轻工学院</option>
        
            <option value="1557" >河北大学工商学院</option>
        
            <option value="1558" >河北经贸大学经济管理学院</option>
        
            <option value="1559" >廊坊职业技术学院</option>
        
            <option value="1560" >石家庄外事职业学院</option>
        
            <option value="1561" >河北政法职业学院</option>
        
            <option value="1562" >冀中职业学院</option>
        
            <option value="1563" >石家庄科技工程职业学院</option>
        
            <option value="1564" >河北劳动关系职业学院</option>
        
            <option value="1565" >河北行政学院</option>
        
            <option value="1566" >赣州东方学校</option>
        
            <option value="1567" >北京中医药大学东方学院</option>
        
            <option value="1568" >承德燕北职业技术专修学院</option>
        
            <option value="1569" >河北工业大学廊坊分院</option>
        
            <option value="1570" >石家庄铁路工程技术学院</option>
        
            <option value="1571" >石家庄经济学院华信学院</option>
        
            <option value="1572" >中国轻工业干部管理学院</option>
        
            <option value="1573" >河北宣化通信士官学校</option>
        
            <option value="1574" >承德民族职业技术学院</option>
        
            <option value="1575" >河北省保定市财贸学校</option>
        
            <option value="1576" >宣化科技职业学院</option>
        
            <option value="1577" >河北青年管理干部学院</option>
        
            <option value="1578" >北京交通大学海滨学院</option>
        
            <option value="1579" >石家庄职工大学</option>
        
            <option value="1580" >河北地质职工大学</option>
        
            <option value="1581" >河北广播电视大学</option>
        
            <option value="1582" >保定广播电视大学</option>
        
            <option value="1583" >河北广播电视大学高等职业技术学院</option>
        
            <option value="1584" >西安交通大学</option>
        
            <option value="1585" >长安大学</option>
        
            <option value="1586" >西北工业大学</option>
        
            <option value="1587" >西北大学</option>
        
            <option value="1588" >陕西师范大学</option>
        
            <option value="1589" >西安电子科技大学</option>
        
            <option value="1590" >西安理工大学</option>
        
            <option value="1591" >西安科技大学</option>
        
            <option value="1592" >西安工业大学</option>
        
            <option value="1593" >西安外国语大学</option>
        
            <option value="1594" >西安邮电大学</option>
        
            <option value="1595" >西安医学院</option>
        
            <option value="1596" >西安财经大学</option>
        
            <option value="1597" >西北政法大学</option>
        
            <option value="1598" >西安体育学院</option>
        
            <option value="1599" >西安美术学院</option>
        
            <option value="1600" >西安音乐学院</option>
        
            <option value="1601" >西安文理学院</option>
        
            <option value="1602" >西京学院</option>
        
            <option value="1603" >西安翻译学院</option>
        
            <option value="1604" >西安培华学院</option>
        
            <option value="1605" >欧亚学院</option>
        
            <option value="1606" >西安外事学院</option>
        
            <option value="1607" >陕西工商职业学院</option>
        
            <option value="1608" >西安石油大学</option>
        
            <option value="1609" >西安建筑科技大学</option>
        
            <option value="1610" >第四军医大学</option>
        
            <option value="1611" >西安电子科技大学高等职业技术学院</option>
        
            <option value="1612" >西北工业大学明德学院</option>
        
            <option value="1613" >陕西师范大学高等职业技术学院</option>
        
            <option value="1614" >长安大学兴华学院</option>
        
            <option value="1615" >西安数字技术学院</option>
        
            <option value="1616" >榆林职业技术学院神木校区</option>
        
            <option value="1617" >西安航空学院</option>
        
            <option value="1618" >陕西省艺术学院</option>
        
            <option value="1619" >延安大学</option>
        
            <option value="1620" >陕西中医学院</option>
        
            <option value="1621" >咸阳师范学院</option>
        
            <option value="1622" >陕西科技大学</option>
        
            <option value="1623" >宝鸡文理学院</option>
        
            <option value="1624" >渭南师范学院</option>
        
            <option value="1625" >陕西理工学院</option>
        
            <option value="1626" >榆林学院</option>
        
            <option value="1627" >商洛学院</option>
        
            <option value="1628" >安康学院</option>
        
            <option value="1629" >西北农林科技大学</option>
        
            <option value="1630" >安康职业技术学院</option>
        
            <option value="1631" >宝鸡职业技术学院</option>
        
            <option value="1632" >汉中职业技术学院</option>
        
            <option value="1633" >陕西财经职业技术学院</option>
        
            <option value="1634" >陕西电子科技职业学院</option>
        
            <option value="1635" >陕西电子信息职业技术学院</option>
        
            <option value="1636" >陕西纺织服装职业技术学院</option>
        
            <option value="1637" >陕西服装工程学院</option>
        
            <option value="1638" >陕西工业职业技术学院</option>
        
            <option value="1639" >陕西国防工业职业技术学院</option>
        
            <option value="1640" >陕西国际商贸学院</option>
        
            <option value="1641" >陕西航空职业技术学院</option>
        
            <option value="1642" >陕西交通职业技术学院</option>
        
            <option value="1643" >陕西经济管理职业技术学院</option>
        
            <option value="1644" >陕西警官职业学院</option>
        
            <option value="1645" >陕西旅游烹饪职业学院</option>
        
            <option value="1646" >陕西能源职业技术学院</option>
        
            <option value="1647" >陕西青年职业学院</option>
        
            <option value="1648" >陕西铁路工程职业技术学院</option>
        
            <option value="1649" >陕西邮电职业技术学院</option>
        
            <option value="1650" >陕西职业技术学院</option>
        
            <option value="1651" >商洛职业技术学院</option>
        
            <option value="1652" >铜川职业技术学院</option>
        
            <option value="1653" >渭南职业技术学院</option>
        
            <option value="1654" >西安电力高等专科学校</option>
        
            <option value="1655" >西安东方亚太职业技术学院</option>
        
            <option value="1656" >西安高新科技职业学院</option>
        
            <option value="1657" >西安工程大学</option>
        
            <option value="1658" >西安海棠职业学院</option>
        
            <option value="1659" >西安航空技术高等专科学校</option>
        
            <option value="1660" >西安航空职业技术学院</option>
        
            <option value="1661" >西安科技商贸职业学院</option>
        
            <option value="1662" >西安汽车科技职业学院西安三资职业学院</option>
        
            <option value="1663" >西安三资职业学院</option>
        
            <option value="1664" >西安思源学院</option>
        
            <option value="1665" >西安铁路职业技术学院</option>
        
            <option value="1666" >西安职业技术学院</option>
        
            <option value="1667" >咸阳职业技术学院</option>
        
            <option value="1668" >延安职业技术学院</option>
        
            <option value="1669" >杨凌职业技术学院</option>
        
            <option value="1670" >陕西银行学校</option>
        
            <option value="1671" >西安机电信息技术学院</option>
        
            <option value="1672" >陕西教育学院</option>
        
            <option value="1673" >陕西省旅游学校</option>
        
            <option value="1674" >西安铁路工程职工大学</option>
        
            <option value="1675" >西安华西专修大学</option>
        
            <option value="1676" >西安航空职工大学</option>
        
            <option value="1677" >西安建筑科技大学华清学院</option>
        
            <option value="1678" >西安财经学院行知学院</option>
        
            <option value="1679" >陕西科技大学镐京学院</option>
        
            <option value="1680" >西安工业大学北方信息工程学院</option>
        
            <option value="1681" >延安大学西安创新学院</option>
        
            <option value="1682" >西安电子科技大学长安学院</option>
        
            <option value="1683" >西安理工大学高科学院</option>
        
            <option value="1684" >西安科技大学高新学院</option>
        
            <option value="1685" >西安交通大学城市学院</option>
        
            <option value="1686" >西北大学现代学院</option>
        
            <option value="1687" >西安工程技术学院</option>
        
            <option value="1688" >陕西航天职工大学</option>
        
            <option value="1689" >陕西工运学院</option>
        
            <option value="1690" >陕西广播电视大学</option>
        
            <option value="1691" >陕西省建筑职工大学</option>
        
            <option value="1692" >陕西通信技术学院</option>
        
            <option value="1693" >西安航空旅游学院</option>
        
            <option value="1694" >西安工程机械专修学院</option>
        
            <option value="1695" >陕西建设技术学院</option>
        
            <option value="1696" >西安冶金建筑专修学院</option>
        
            <option value="1697" >西安联合职业培训学院</option>
        
            <option value="1698" >西安外贸职工大学</option>
        
            <option value="1699" >西安金融财贸学院</option>
        
            <option value="1700" >西安技师学院</option>
        
            <option value="1701" >山西大学</option>
        
            <option value="1702" >太原理工大学</option>
        
            <option value="1703" >中北大学</option>
        
            <option value="1704" >山西医科大学</option>
        
            <option value="1705" >山西中医学院</option>
        
            <option value="1706" >太原师范学院</option>
        
            <option value="1707" >太原科技大学</option>
        
            <option value="1708" >山西财经大学</option>
        
            <option value="1709" >山西运城职业技术学院</option>
        
            <option value="1710" >阳泉师范高等专科学校</option>
        
            <option value="1711" >山西师范大学</option>
        
            <option value="1712" >山西农业大学</option>
        
            <option value="1713" >山西大同大学</option>
        
            <option value="1714" >长治医学院</option>
        
            <option value="1715" >长治学院</option>
        
            <option value="1716" >运城学院</option>
        
            <option value="1717" >晋中学院</option>
        
            <option value="1718" >忻州师范学院</option>
        
            <option value="1719" >北岳职业技术学院</option>
        
            <option value="1720" >长治职业技术学院</option>
        
            <option value="1721" >晋城职业技术学院</option>
        
            <option value="1722" >晋中职业技术学院</option>
        
            <option value="1723" >临汾职业技术学院</option>
        
            <option value="1724" >潞安职业技术学院</option>
        
            <option value="1725" >吕梁学院</option>
        
            <option value="1726" >山西财贸职业技术学院</option>
        
            <option value="1727" >山西财政税务专科学校</option>
        
            <option value="1728" >山西电力职业技术学院</option>
        
            <option value="1729" >山西工程职业技术学院</option>
        
            <option value="1730" >山西工商学院</option>
        
            <option value="1731" >山西管理职业学院</option>
        
            <option value="1732" >山西国际商务职业学院</option>
        
            <option value="1733" >山西华澳商贸职业学院</option>
        
            <option value="1734" >山西机电职业技术学院</option>
        
            <option value="1735" >山西建筑职业技术学院</option>
        
            <option value="1736" >山西交通职业技术学院</option>
        
            <option value="1737" >山西金融职业技术学院</option>
        
            <option value="1738" >山西警官高等专科学校</option>
        
            <option value="1739" >山西警官职业学院</option>
        
            <option value="1740" >山西林业职业技术学院</option>
        
            <option value="1741" >山西旅游职业学院</option>
        
            <option value="1742" >山西煤炭职业技术学院</option>
        
            <option value="1743" >山西生物应用职业技术学院</option>
        
            <option value="1744" >山西水利职业技术学院</option>
        
            <option value="1745" >山西体育职业学院</option>
        
            <option value="1746" >山西同文外语职业学院</option>
        
            <option value="1747" >山西戏剧职业学院</option>
        
            <option value="1748" >山西信息职业技术学院</option>
        
            <option value="1749" >山西兴华职业学院</option>
        
            <option value="1750" >山西艺术职业学院</option>
        
            <option value="1751" >山西运城农业职业技术学院</option>
        
            <option value="1752" >山西职业技术学院</option>
        
            <option value="1753" >太原城市职业技术学院</option>
        
            <option value="1754" >太原大学</option>
        
            <option value="1755" >太原电力高等专科学校</option>
        
            <option value="1756" >太原旅游职业学院</option>
        
            <option value="1757" >忻州职业技术学院</option>
        
            <option value="1758" >阳泉职业技术学院</option>
        
            <option value="1759" >山西城市职业技术学院</option>
        
            <option value="1760" >运城农业学院</option>
        
            <option value="1761" >山西广播电视大学</option>
        
            <option value="1762" >晋中学院师范学院</option>
        
            <option value="1763" >朔州职业技术学院</option>
        
            <option value="1764" >山西农业大学平遥机电学院</option>
        
            <option value="1765" >山西农业大学信息学院</option>
        
            <option value="1766" >山西农业大学太原畜牧兽医学院</option>
        
            <option value="1767" >山西农业大学太原园艺学院（太原农业学校）</option>
        
            <option value="1768" >山西农业大学原平农学院（原平农业学校）</option>
        
            <option value="1769" >太原科技大学运城工学院（运城工学院）</option>
        
            <option value="1770" >山西财经大学运城学院</option>
        
            <option value="1771" >山西医科大学汾阳分院</option>
        
            <option value="1772" >山西医科大学晋祠学院</option>
        
            <option value="1773" >太原科技大学华科学院</option>
        
            <option value="1774" >山西财经大学华商学院</option>
        
            <option value="1775" >中北大学信息商务学院</option>
        
            <option value="1776" >山西师范大学现代文理学院</option>
        
            <option value="1777" >忻州师范学院五寨分院（五寨师范学院）</option>
        
            <option value="1778" >山西大学商务学院</option>
        
            <option value="1779" >太原工业学院</option>
        
            <option value="1780" >山西经济管理干部学院</option>
        
            <option value="1781" >山西青年管理干部学院</option>
        
            <option value="1782" >山西省职工工艺美术学院</option>
        
            <option value="1783" >山西省吕梁市教育学院</option>
        
            <option value="1784" >长治市教育学院</option>
        
            <option value="1785" >山西煤炭管理干部学院</option>
        
            <option value="1786" >山西政法管理干部学院</option>
        
            <option value="1787" >阳泉市教育学院</option>
        
            <option value="1788" >山西煤炭职工联合大学</option>
        
            <option value="1789" >太原钢铁(集团)有限公司职工钢铁学院</option>
        
            <option value="1790" >山西机电职工学院</option>
        
            <option value="1791" >太原化学工业集团有限公司职工大学</option>
        
            <option value="1792" >山西兵器工业职工大学</option>
        
            <option value="1793" >山西传媒学院</option>
        
            <option value="1794" >山西职工医学院</option>
        
            <option value="1795" >山西省临汾电力技师学院</option>
        
            <option value="1796" >太原大学外语师范学院</option>
        
            <option value="1797" >运城幼儿师范高等专科学校</option>
        
            <option value="1798" >中国辐射防护研究院</option>
        
            <option value="1799" >山西师大临汾学院</option>
        
            <option value="1800" >山西财经大学经济技术学院</option>
        
            <option value="1801" >山西老区职业技术学院</option>
        
            <option value="1802" >中国日用化学工业研究院</option>
        
            <option value="1803" >兰州大学</option>
        
            <option value="1804" >西北民族大学</option>
        
            <option value="1805" >西北师范大学</option>
        
            <option value="1806" >甘肃中医学院</option>
        
            <option value="1807" >兰州商学院</option>
        
            <option value="1808" >甘肃政法学院</option>
        
            <option value="10000" >其他</option>
        
            <option value="1809" >兰州交通大学</option>
        
            <option value="10001" >兰州城市学院</option>
        
            <option value="1810" >西北师范大学知行学院</option>
        
            <option value="10002" >东京造形大学</option>
        
            <option value="1811" >甘肃机电职业技术学院</option>
        
            <option value="10003" >东京艺术大学</option>
        
            <option value="1812" >长庆石油高级技工学校</option>
        
            <option value="10004" >京都市立艺术大学</option>
        
            <option value="1813" >天水师范学院</option>
        
            <option value="10005" >多摩美术大学</option>
        
            <option value="1814" >陇东学院</option>
        
            <option value="10006" >武藏野美术大学</option>
        
            <option value="1815" >河西学院</option>
        
            <option value="10007" >神户艺术工科大学</option>
        
            <option value="1816" >兰州石化职业技术学院</option>
        
            <option value="10008" >東京芸術大学</option>
        
            <option value="1817" >甘肃工业职业技术学院</option>
        
            <option value="10009" >東京女子美術大学</option>
        
            <option value="1818" >甘肃警察职业学院</option>
        
            <option value="10010" >日本文化服装学院</option>
        
            <option value="1819" >兰州理工大学技术工程学院</option>
        
            <option value="10011" >京都精華大学</option>
        
            <option value="1820" >兰州职业技术学院</option>
        
            <option value="10012" >京都造形芸術大学</option>
        
            <option value="1821" >武威职业学院</option>
        
            <option value="10013" >大阪芸術大学</option>
        
            <option value="1822" >张掖医学高等专科学校</option>
        
            <option value="10014" >千叶大学工学院</option>
        
            <option value="1823" >甘肃畜牧工程职业技术学院</option>
        
            <option value="10015" >筑波大学</option>
        
            <option value="1824" >陇南师范高等专科学校</option>
        
            <option value="10016" >京都工艺纤维大学</option>
        
            <option value="1825" >甘肃民族师范学院</option>
        
            <option value="10017" >金泽美术工艺大学</option>
        
            <option value="1826" >甘肃联合大学</option>
        
            <option value="10018" >桑泽设计研究所</option>
        
            <option value="1827" >甘肃林业职业技术学院</option>
        
            <option value="10019" >大阪艺术大学</option>
        
            <option value="1828" >甘肃建筑职业技术学院</option>
        
            <option value="10020" >九州艺术工科大学</option>
        
            <option value="1829" >酒泉职业技术学院</option>
        
            <option value="10021" >东京工艺大学</option>
        
            <option value="1830" >甘肃农业职业技术学院</option>
        
            <option value="10022" >仓敷艺术科学大学</option>
        
            <option value="1831" >平凉医学高等专科学校</option>
        
            <option value="10023" >东北艺术工科大学</option>
        
            <option value="1832" >兰州资源环境职业技术学院</option>
        
            <option value="10024" >萨凡纳艺术设计学院</option>
        
            <option value="1833" >定西师范高等专科学校</option>
        
            <option value="10025" >树德科技大学</option>
        
            <option value="1834" >兰州交通大学博文学院</option>
        
            <option value="1835" >兰州工业学院</option>
        
            <option value="1836" >兰州外语职业学院</option>
        
            <option value="1837" >甘肃钢铁职业技术学院</option>
        
            <option value="1838" >兰州教育学院</option>
        
            <option value="1839" >甘肃交通职业技术学院</option>
        
            <option value="1840" >兰州商学院长青学院</option>
        
            <option value="1841" >兰州商学院陇桥学院</option>
        
            <option value="1842" >四川大学</option>
        
            <option value="1843" >四川农业大学</option>
        
            <option value="1844" >电子科技大学</option>
        
            <option value="1845" >西南交通大学</option>
        
            <option value="1846" >成都理工大学</option>
        
            <option value="1847" >四川师范大学</option>
        
            <option value="1848" >西南民族大学</option>
        
            <option value="1849" >成都大学</option>
        
            <option value="1850" >西南财经大学</option>
        
            <option value="1851" >西华大学</option>
        
            <option value="1852" >成都中医药大学</option>
        
            <option value="1853" >成都信息工程大学</option>
        
            <option value="1854" >成都医学院</option>
        
            <option value="1855" >四川文理学院</option>
        
            <option value="1856" >成都体育学院</option>
        
            <option value="1857" >四川音乐学院</option>
        
            <option value="1858" >西南石油大学</option>
        
            <option value="1859" >西南交通大学希望学院</option>
        
            <option value="1860" >四川长江职业学院</option>
        
            <option value="1861" >四川传媒学院</option>
        
            <option value="1862" >四川现代职业学院</option>
        
            <option value="1863" >西南交通大学峨眉校区</option>
        
            <option value="1864" >四川中山学院</option>
        
            <option value="1865" >中国民航飞行学院</option>
        
            <option value="1866" >四川理工学院</option>
        
            <option value="1867" >泸州医学院</option>
        
            <option value="1868" >四川警察学院</option>
        
            <option value="1869" >川北医学院</option>
        
            <option value="1870" >西华师范大学</option>
        
            <option value="1871" >内江师范学院</option>
        
            <option value="1872" >乐山师院</option>
        
            <option value="1873" >绵阳师范学院</option>
        
            <option value="1874" >西南科技大学</option>
        
            <option value="1875" >西昌学院</option>
        
            <option value="1876" >宜宾学院</option>
        
            <option value="1877" >攀枝花学院</option>
        
            <option value="1878" >阿坝师范高等专科学校</option>
        
            <option value="1879" >成都工业学院</option>
        
            <option value="1880" >成都东软学院</option>
        
            <option value="1881" >成都纺织高等专科学校</option>
        
            <option value="1882" >成都广播电视大学</option>
        
            <option value="1883" >成都航空职业技术学院</option>
        
            <option value="1884" >成都理工大学广播影视学院</option>
        
            <option value="1885" >成都农业科技职业学院</option>
        
            <option value="1886" >成都艺术职业学院</option>
        
            <option value="1887" >成都职业技术学院</option>
        
            <option value="1888" >达州职业技术学院</option>
        
            <option value="1889" >电子科技大学成都学院</option>
        
            <option value="1890" >广安职业技术学院</option>
        
            <option value="1891" >乐山职业技术学院</option>
        
            <option value="1892" >泸州职业技术学院</option>
        
            <option value="1893" >眉山职业技术学院</option>
        
            <option value="1894" >绵阳职业技术学院</option>
        
            <option value="1895" >民办四川天一学院</option>
        
            <option value="1896" >内江职业技术学院</option>
        
            <option value="1897" >南充职业技术学院</option>
        
            <option value="1898" >四川大学龙泉校区</option>
        
            <option value="1899" >四川电力职业技术学院</option>
        
            <option value="1900" >四川工程职业技术学院</option>
        
            <option value="1901" >四川工商职业技术学院</option>
        
            <option value="1902" >四川管理职业学院</option>
        
            <option value="1903" >四川广播电视大学</option>
        
            <option value="1904" >四川国际标榜职业学院</option>
        
            <option value="1905" >四川航天职业技术学院</option>
        
            <option value="1906" >四川华新现代职业学院</option>
        
            <option value="1907" >四川化工职业技术学院</option>
        
            <option value="1908" >四川机电职业技术学院</option>
        
            <option value="1909" >四川建筑职业技术学院</option>
        
            <option value="1910" >四川交通职业技术学院</option>
        
            <option value="1911" >成都师范学院</option>
        
            <option value="1912" >四川警安职业学院</option>
        
            <option value="1913" >四川烹饪高等专科学校</option>
        
            <option value="1914" >四川商务职业学院</option>
        
            <option value="1915" >四川师范大学绵阳初等教育学院</option>
        
            <option value="1916" >四川水利职业技术学院</option>
        
            <option value="1917" >四川司法警官职业学院</option>
        
            <option value="1918" >四川托普信息技术职业学院</option>
        
            <option value="1919" >四川外语学院成都学院</option>
        
            <option value="1920" >四川文化传媒职业学院</option>
        
            <option value="1921" >四川信息工程学校</option>
        
            <option value="1922" >四川邮电职业技术学院</option>
        
            <option value="1923" >四川职业技术学院</option>
        
            <option value="1924" >四川中医药高等专科学校</option>
        
            <option value="1925" >雅安职业技术学院</option>
        
            <option value="1926" >宜宾职业技术学院</option>
        
            <option value="1927" >四川大学锦城学院</option>
        
            <option value="1928" >四川大学锦江学院</option>
        
            <option value="1929" >德阳职业技术学校</option>
        
            <option value="1930" >四川信息职业技术学院</option>
        
            <option value="1931" >四川艺术职业学院</option>
        
            <option value="1932" >四川师范大学成都学院</option>
        
            <option value="1933" >四川师范大学文理学院</option>
        
            <option value="1934" >成都信息工程学院银杏酒店管理学院</option>
        
            <option value="1935" >成都理工大学工程技术学院</option>
        
            <option value="1936" >四川文化产业职业学院</option>
        
            <option value="1937" >四川科技职业学院</option>
        
            <option value="1938" >西南科技大学城市学院</option>
        
            <option value="1939" >四川音乐学院绵阳艺术学院</option>
        
            <option value="1940" >西南财经大学天府学院</option>
        
            <option value="1941" >四川中医药高等专科学校</option>
        
            <option value="1942" >中国科学院成都分院职工大学</option>
        
            <option value="1943" >成都市职工大学</option>
        
            <option value="1944" >南充市职工大学</option>
        
            <option value="1945" >四川省广播电视大学</option>
        
            <option value="1946" >四川经济管理干部学院</option>
        
            <option value="1947" >四川农业管理干部学院</option>
        
            <option value="1948" >广元职工医学院</option>
        
            <option value="1949" >四川省职工运动技术学院</option>
        
            <option value="1950" >四川省东方动力职工大学</option>
        
            <option value="1951" >成都电力职工大学</option>
        
            <option value="1952" >成都市广播电视大学</option>
        
            <option value="1953" >中国工程物理研究院职工工学院</option>
        
            <option value="1954" >成都发动机公司职工大学</option>
        
            <option value="1955" >四川核工业职工大学</option>
        
            <option value="1956" >四川科技职工大学</option>
        
            <option value="1957" >四川省化工职工大学</option>
        
            <option value="1958" >成都电子职工大学</option>
        
            <option value="1959" >国营涪江机器厂职工大学</option>
        
            <option value="1960" >成都冶金职工大学</option>
        
            <option value="1961" >第五冶金建设公司职工大学</option>
        
            <option value="1962" >成都工业职工大学</option>
        
            <option value="1963" >成都飞机工业公司职工工学院</option>
        
            <option value="1964" >四川财经职业学院</option>
        
            <option value="1965" >四川城市职业学院</option>
        
            <option value="1966" >中国五冶职工大学</option>
        
            <option value="1967" >四川师范大学经济职业学院</option>
        
            <option value="1968" >四川省卫生管理干部学院</option>
        
            <option value="1969" >四川民族学院</option>
        
            <option value="1970" >四川师范大学电影电视学院</option>
        
            <option value="1971" >昆明理工大学</option>
        
            <option value="1972" >云南农业大学</option>
        
            <option value="1973" >云南师范大学</option>
        
            <option value="1974" >云南财经大学</option>
        
            <option value="1975" >云南民族大学</option>
        
            <option value="1976" >西南林业大学</option>
        
            <option value="1977" >昆明医科大学</option>
        
            <option value="1978" >云南中医学院</option>
        
            <option value="1979" >红河学院</option>
        
            <option value="1980" >云南警官学院</option>
        
            <option value="1981" >云南艺术学院</option>
        
            <option value="1982" >云南大学</option>
        
            <option value="1983" >云南工商学院</option>
        
            <option value="1984" >云南财贸外事职业学院</option>
        
            <option value="1985" >云南经贸外事职业学院</option>
        
            <option value="1986" >大理医学院</option>
        
            <option value="1987" >云南民族大学文化学院</option>
        
            <option value="1988" >云南广播电视大学昆明分校</option>
        
            <option value="1989" >曲靖师范学院</option>
        
            <option value="1990" >玉溪师范学院</option>
        
            <option value="1991" >楚雄师范学院</option>
        
            <option value="1992" >大理学院</option>
        
            <option value="1993" >保山学院</option>
        
            <option value="1994" >保山中医药高等专科学校</option>
        
            <option value="1995" >楚雄医药高等专科学校</option>
        
            <option value="1996" >德宏师范高等专科学校</option>
        
            <option value="1997" >云南大学滇池学院</option>
        
            <option value="1998" >昆明大学</option>
        
            <option value="1999" >昆明工业职业技术学院</option>
        
            <option value="2000" >昆明师范高等专科学校</option>
        
            <option value="2001" >云南工程职业学院</option>
        
            <option value="2002" >昆明冶金高等专科学校</option>
        
            <option value="2003" >昆明艺术职业学院</option>
        
            <option value="2004" >丽江师范高等专科学校</option>
        
            <option value="2005" >曲靖医学高等专科学校</option>
        
            <option value="2006" >思茅师范高等专科学校</option>
        
            <option value="2007" >文山学院</option>
        
            <option value="2008" >西双版纳职业技术学院</option>
        
            <option value="2009" >玉溪农业职业技术学院</option>
        
            <option value="2010" >云南爱因森软件职业学院</option>
        
            <option value="2011" >云南北美职业学院</option>
        
            <option value="2012" >云南国防工业职业技术学院</option>
        
            <option value="2013" >云南国土资源职业学院</option>
        
            <option value="2014" >云南机电职业技术学院</option>
        
            <option value="2015" >云南交通职业技术学院</option>
        
            <option value="2016" >云南经济管理职业学院</option>
        
            <option value="2017" >云南科技信息职业技术学院</option>
        
            <option value="2018" >云南林业职业技术学院</option>
        
            <option value="2019" >云南能源职业技术学院</option>
        
            <option value="2020" >云南农业职业技术学院</option>
        
            <option value="2021" >云南热带作物职业学院</option>
        
            <option value="2022" >云南省林业科学院</option>
        
            <option value="2023" >云南师范大学商学院</option>
        
            <option value="2024" >云南司法警官职业学院</option>
        
            <option value="2025" >云南体育运动职业技术学院</option>
        
            <option value="2026" >云南文化艺术职业学院</option>
        
            <option value="2027" >云南新兴职业学院</option>
        
            <option value="2028" >云南医学高等专科学校</option>
        
            <option value="2029" >昭通学院</option>
        
            <option value="2030" >昆明学院</option>
        
            <option value="2031" >昆明理工大学津桥学院</option>
        
            <option value="2032" >云南师范大学文理学院</option>
        
            <option value="2033" >昆明医学院海源学院</option>
        
            <option value="2034" >云南艺术学院文华学院</option>
        
            <option value="2035" >云南大学旅游文化学院</option>
        
            <option value="2036" >临沧师范高等专科学校</option>
        
            <option value="2037" >云南锡业职业技术学院</option>
        
            <option value="2038" >云南科技信息职业学院</option>
        
            <option value="2039" >贵州大学</option>
        
            <option value="2040" >贵阳医学院</option>
        
            <option value="2041" >贵阳中医学院</option>
        
            <option value="2042" >贵州财经大学</option>
        
            <option value="2043" >贵州民族大学</option>
        
            <option value="2044" >贵阳学院</option>
        
            <option value="2045" >贵州师范大学</option>
        
            <option value="2046" >铜仁学院</option>
        
            <option value="2047" >贵州职业技术学院</option>
        
            <option value="2048" >贵州省职业技术学院</option>
        
            <option value="2049" >遵义医学院</option>
        
            <option value="2050" >遵义师范学院</option>
        
            <option value="2051" >毕节学院</option>
        
            <option value="2052" >黔南师院</option>
        
            <option value="2053" >安顺学院</option>
        
            <option value="2054" >凯里学院</option>
        
            <option value="2055" >安顺职业技术学院</option>
        
            <option value="2056" >贵州电力职业技术学院</option>
        
            <option value="2057" >贵州电子信息职业技术学院</option>
        
            <option value="2058" >贵州航天职业技术学院</option>
        
            <option value="2059" >贵州交通职业技术学院</option>
        
            <option value="2060" >贵州警官职业学院</option>
        
            <option value="2061" >贵州工业职业技术学院</option>
        
            <option value="2062" >贵州轻工职业技术学院</option>
        
            <option value="2063" >贵州商业高等专科学校</option>
        
            <option value="2064" >六盘水师范学院</option>
        
            <option value="2065" >六盘水职业技术学院</option>
        
            <option value="2066" >黔东南民族职业技术学院</option>
        
            <option value="2067" >黔南民族医学高等专科学校</option>
        
            <option value="2068" >黔南民族职业技术学院</option>
        
            <option value="2069" >黔西南民族职业技术学院</option>
        
            <option value="2070" >铜仁职业技术学院</option>
        
            <option value="2071" >遵义医药高等专科学校</option>
        
            <option value="2072" >遵义职业技术学院</option>
        
            <option value="2073" >贵州财经学院商务学院</option>
        
            <option value="2074" >贵州师范大学求是学院</option>
        
            <option value="2075" >贵州民族学院人文科技学院</option>
        
            <option value="2076" >贵阳医学院神奇民族医药学院</option>
        
            <option value="2077" >遵义医学院医学与科技学院</option>
        
            <option value="2078" >贵阳中医学院时珍学院</option>
        
            <option value="2079" >贵州大学明德学院</option>
        
            <option value="2080" >贵州大学科技学院</option>
        
            <option value="2081" >贵阳护理职业学院</option>
        
            <option value="2082" >贵州亚泰职业学院</option>
        
            <option value="2083" >贵州师范学院</option>
        
            <option value="2084" >贵阳职业技术学院</option>
        
            <option value="2085" >毕节职业技术学院</option>
        
            <option value="2086" >贵州广播电视大学</option>
        
            <option value="2087" >贵州省财经学院商务学院</option>
        
            <option value="2088" >湖南师范大学</option>
        
            <option value="2089" >中南大学</option>
        
            <option value="2090" >湖南大学</option>
        
            <option value="2091" >长沙理工大学</option>
        
            <option value="2092" >湖南农业大学</option>
        
            <option value="2093" >湖南中医药大学</option>
        
            <option value="2094" >中南林业科技大学</option>
        
            <option value="2095" >长沙学院</option>
        
            <option value="2096" >长沙医学院</option>
        
            <option value="2097" >湖南涉外经济学院</option>
        
            <option value="2098" >湖南商学院</option>
        
            <option value="2099" >湖南人文科技学院</option>
        
            <option value="2100" >湖南三一工业职业技术学院</option>
        
            <option value="2101" >湖南食品药品职业学院</option>
        
            <option value="2102" >湘潭大学</option>
        
            <option value="2103" >湖南科技大学</option>
        
            <option value="2104" >湖南工程学院</option>
        
            <option value="2105" >南华大学</option>
        
            <option value="2106" >吉首大学</option>
        
            <option value="2107" >湖南工业大学</option>
        
            <option value="2108" >湖南城市学院</option>
        
            <option value="2109" >湖南理工学院</option>
        
            <option value="2110" >湘南学院</option>
        
            <option value="2111" >衡阳师范学院</option>
        
            <option value="2112" >湖南文理学院</option>
        
            <option value="2113" >怀化学院</option>
        
            <option value="2114" >湖南科技学院</option>
        
            <option value="2115" >邵阳学院</option>
        
            <option value="2116" >保险职业学院</option>
        
            <option value="2117" >长沙电力职业技术学院</option>
        
            <option value="2118" >长沙航空职业学院</option>
        
            <option value="2119" >长沙环境保护职业技术学院</option>
        
            <option value="2120" >长沙民政职业技术学院</option>
        
            <option value="2121" >长沙南方职业学院</option>
        
            <option value="2122" >长沙商贸旅游职业技术学院</option>
        
            <option value="2123" >长沙师范专科学校</option>
        
            <option value="2124" >长沙通信职业技术学院</option>
        
            <option value="2125" >长沙职工大学</option>
        
            <option value="2126" >长沙职业技术学院</option>
        
            <option value="2127" >常德职业技术学院</option>
        
            <option value="2128" >郴州职业技术学院</option>
        
            <option value="2129" >衡阳财经工业职业技术学院</option>
        
            <option value="2130" >湖南安全技术职业学院</option>
        
            <option value="2131" >湖南财政经济学院</option>
        
            <option value="2132" >湖南大众传媒学院</option>
        
            <option value="2133" >湖南第一师范学院</option>
        
            <option value="2134" >湖南对外经济贸易职业学院</option>
        
            <option value="2135" >湖南工程职业技术学院</option>
        
            <option value="2136" >湖南工学院</option>
        
            <option value="2137" >湖南工业职业技术学院</option>
        
            <option value="2138" >湖南工艺美术职业学院</option>
        
            <option value="2139" >湖南警察学院</option>
        
            <option value="2140" >湖南广播电视大学</option>
        
            <option value="2141" >湖南化工职业技术学院</option>
        
            <option value="2142" >湖南环境生物职业技术学院</option>
        
            <option value="2143" >湖南机电职业技术学院</option>
        
            <option value="2144" >湖南建材高等专科学校</option>
        
            <option value="2145" >湖南高速铁路职业技术学院</option>
        
            <option value="2146" >湖南交通职业技术学院</option>
        
            <option value="2147" >湖南经济干部管理学院</option>
        
            <option value="2148" >湖南九嶷职业技术学院</option>
        
            <option value="2149" >湖南科技经贸职业学院</option>
        
            <option value="2150" >湖南科技职业学院</option>
        
            <option value="2151" >湖南理工职业技术学院</option>
        
            <option value="2152" >湖南娄底远东职业学校</option>
        
            <option value="2153" >湖南民族职业学院</option>
        
            <option value="2154" >湖南农业大学国际学院</option>
        
            <option value="2155" >湖南女子学院</option>
        
            <option value="2156" >湖南软件职业技术学院</option>
        
            <option value="2157" >湖南商务职业技术学院</option>
        
            <option value="2158" >湖南生物机电职业技术学院</option>
        
            <option value="2159" >湖南省水利水电职业技术学院</option>
        
            <option value="2160" >湖南石油化工职业技术学院</option>
        
            <option value="2161" >湖南税务高等专科学校</option>
        
            <option value="2162" >湖南司法警官职业技术学院</option>
        
            <option value="2163" >湖南体育职业学院</option>
        
            <option value="2164" >湖南铁道职业技术学院</option>
        
            <option value="2165" >湖南铁路科技职业技术学院</option>
        
            <option value="2166" >湖南同德职业学院</option>
        
            <option value="2167" >湖南网络工程职业学院</option>
        
            <option value="2168" >湖南现代物流职业技术学院</option>
        
            <option value="2169" >湖南信息科学职业学院</option>
        
            <option value="2170" >湖南信息职业技术学院</option>
        
            <option value="2171" >湖南行政学院</option>
        
            <option value="2172" >湖南冶金职业技术学院</option>
        
            <option value="2173" >湖南艺术职业学院</option>
        
            <option value="2174" >湖南中医药高等专科学校</option>
        
            <option value="2175" >怀化医学高等专科学校</option>
        
            <option value="2176" >怀化职业技术学院</option>
        
            <option value="2177" >娄底理工学院</option>
        
            <option value="2178" >娄底市卫生学校</option>
        
            <option value="2179" >娄底职业技术学院</option>
        
            <option value="2180" >邵阳医学高等专科学校</option>
        
            <option value="2181" >邵阳职业技术学院</option>
        
            <option value="2182" >湘潭职业技术学院</option>
        
            <option value="2183" >湘西民族职业技术学院</option>
        
            <option value="2184" >潇湘职业学院</option>
        
            <option value="2185" >益阳职业技术学院</option>
        
            <option value="2186" >永州职业技术学院</option>
        
            <option value="2187" >岳阳职业技术学院</option>
        
            <option value="2188" >张家界航空工业职业技术学院</option>
        
            <option value="2189" >株洲师范高等专科学校</option>
        
            <option value="2190" >株洲职业技术学院</option>
        
            <option value="2191" >湘潭大学兴湘学院</option>
        
            <option value="2192" >湖南工业大学科技学院</option>
        
            <option value="2193" >湖南科技大学潇湘学院</option>
        
            <option value="2194" >南华大学船山学院</option>
        
            <option value="2195" >湖南商学院北津学院</option>
        
            <option value="2196" >湖南师范大学树达学院</option>
        
            <option value="2197" >湖南农业大学东方科技学院</option>
        
            <option value="2198" >中南林业科技大学涉外学院</option>
        
            <option value="2199" >湖南文理学院芙蓉学院</option>
        
            <option value="2200" >湖南理工学院南湖学院</option>
        
            <option value="2201" >衡阳师范学院南岳学院</option>
        
            <option value="2202" >湖南工程学院应用技术学院</option>
        
            <option value="2203" >湖南中医药大学湘杏学院</option>
        
            <option value="2204" >吉首大学张家界学院</option>
        
            <option value="2205" >长沙理工大学城南学院</option>
        
            <option value="2206" >湖南都市职业学院</option>
        
            <option value="2207" >湖南电子科技职业学院</option>
        
            <option value="2208" >湖南外国语职业学院</option>
        
            <option value="2209" >湖南生物与机电工程职业技术学院</option>
        
            <option value="2210" >湖南科技工业职业技术学院</option>
        
            <option value="2211" >衡阳工业职工大学</option>
        
            <option value="2212" >湘西民族教师进修学院</option>
        
            <option value="2213" >湖南有色金属职工大学</option>
        
            <option value="2214" >湖南纺织职工大学</option>
        
            <option value="2215" >湖南金融技术职工大学</option>
        
            <option value="2216" >益阳教育学院</option>
        
            <option value="2217" >长沙工业职工大学</option>
        
            <option value="2218" >湖南兵器工业职工大学</option>
        
            <option value="2219" >长沙教育学院</option>
        
            <option value="2220" >衡阳有色冶金职工大学</option>
        
            <option value="2221" >株洲市职工大学</option>
        
            <option value="2222" >湖南工业科技职工大学</option>
        
            <option value="2223" >南方动力机械公司职工工学院</option>
        
            <option value="2224" >益阳医学高等专科学校</option>
        
            <option value="2225" >湖南师范大学法学院</option>
        
            <option value="2226" >湖南电气职业技术学院</option>
        
            <option value="2227" >武汉大学</option>
        
            <option value="2228" >华中科技大学</option>
        
            <option value="2229" >华中农业大学</option>
        
            <option value="2230" >武汉理工大学</option>
        
            <option value="2231" >中国地质大学（武汉）</option>
        
            <option value="2232" >中南财经政法大学</option>
        
            <option value="2233" >中南民族大学</option>
        
            <option value="2234" >华中师范大学</option>
        
            <option value="2235" >武汉轻工大学</option>
        
            <option value="2236" >武汉纺织大学</option>
        
            <option value="2237" >湖北中医药大学</option>
        
            <option value="2238" >湖北经济学院</option>
        
            <option value="2239" >湖北警官学院</option>
        
            <option value="2240" >武汉体育学院</option>
        
            <option value="2241" >湖北美术学院</option>
        
            <option value="2242" >武汉音乐学院</option>
        
            <option value="2243" >武汉生物工程学院</option>
        
            <option value="2244" >湖北工业大学</option>
        
            <option value="2245" >湖北大学</option>
        
            <option value="2246" >江汉大学</option>
        
            <option value="2247" >武汉工业大学</option>
        
            <option value="2248" >武汉科技大学</option>
        
            <option value="2249" >湖北美术学院继续教育学院</option>
        
            <option value="2250" >华中农业大学楚天学院</option>
        
            <option value="2251" >湖北科技职业学院</option>
        
            <option value="2252" >三峡旅游职业技术学院</option>
        
            <option value="2253" >武汉广播电视大学</option>
        
            <option value="2254" >长江大学</option>
        
            <option value="2255" >三峡大学</option>
        
            <option value="2256" >湖北汽车工业学院</option>
        
            <option value="2257" >湖北医药学院</option>
        
            <option value="2258" >湖北工程学院</option>
        
            <option value="2259" >湖北师范学院</option>
        
            <option value="2260" >湖北理工学院</option>
        
            <option value="2261" >黄冈师院</option>
        
            <option value="2262" >湖北民族学院</option>
        
            <option value="2263" >湖北文理学院</option>
        
            <option value="2264" >湖北科技学院</option>
        
            <option value="2265" >长江工程职业技术学院</option>
        
            <option value="2266" >长江职业学院</option>
        
            <option value="2267" >鄂东职业技术学院</option>
        
            <option value="2268" >鄂州大学</option>
        
            <option value="2269" >恩施职业技术学院</option>
        
            <option value="2270" >湖北财经高等专科学校</option>
        
            <option value="2271" >湖北财税职业学院</option>
        
            <option value="2272" >湖北城市建设职业技术学院</option>
        
            <option value="2273" >湖北工业大学商贸学院</option>
        
            <option value="2274" >湖北国土资源职业学院</option>
        
            <option value="2275" >湖北黄石机电职业技术学院</option>
        
            <option value="2276" >湖北交通职业技术学院</option>
        
            <option value="2277" >湖北第二师范学院</option>
        
            <option value="2278" >湖北经济管理干部学院</option>
        
            <option value="2279" >湖北开放职业学院</option>
        
            <option value="2280" >湖北民族学院科技学院</option>
        
            <option value="2281" >湖北轻工职业技术学院</option>
        
            <option value="2282" >湖北三峡职业技术学院</option>
        
            <option value="2283" >湖北生态工程职业技术学院</option>
        
            <option value="2284" >湖北生物科技职业学院</option>
        
            <option value="2285" >湖北省水利水电职业技术学院</option>
        
            <option value="2286" >湖北师范学院文理学院</option>
        
            <option value="2287" >湖北艺术职业学院</option>
        
            <option value="2288" >湖北职业技术学院</option>
        
            <option value="2289" >湖北中医药高等专科学校</option>
        
            <option value="2290" >黄冈科技职业学院</option>
        
            <option value="2291" >黄冈职业技术学院</option>
        
            <option value="2292" >江汉艺术职业学院</option>
        
            <option value="2293" >荆楚理工学院</option>
        
            <option value="2294" >荆州职业技术学院</option>
        
            <option value="2295" >荆州理工职业学院</option>
        
            <option value="2296" >沙洋师范高等专科学校</option>
        
            <option value="2297" >十堰职业技术学院</option>
        
            <option value="2298" >随州职业技术学院</option>
        
            <option value="2299" >武汉船舶职业技术学院</option>
        
            <option value="2300" >武汉电力职业技术学院</option>
        
            <option value="2301" >武汉工程职业技术学院</option>
        
            <option value="2302" >武汉工业职业技术学院</option>
        
            <option value="2303" >武汉航海职业技术学院</option>
        
            <option value="2304" >武汉交通职业学院</option>
        
            <option value="2305" >武汉警官职业学院</option>
        
            <option value="2306" >武汉科技职业学院</option>
        
            <option value="2307" >武汉理工大学华夏学院</option>
        
            <option value="2308" >武汉民政职业学院</option>
        
            <option value="2309" >武汉软件工程职业学院</option>
        
            <option value="2310" >武汉商贸学院</option>
        
            <option value="2311" >武汉商业服务学院</option>
        
            <option value="2312" >武汉时代职业学院</option>
        
            <option value="2313" >武汉铁路职业技术学院</option>
        
            <option value="2314" >武汉外语外事职业学院</option>
        
            <option value="2315" >武汉信息传播职业技术学院</option>
        
            <option value="2316" >武汉职业技术学院</option>
        
            <option value="2317" >仙桃职业学院</option>
        
            <option value="2318" >咸宁职业技术学院</option>
        
            <option value="2319" >襄樊职业技术学院</option>
        
            <option value="2320" >湖北工程学院新技术学院</option>
        
            <option value="2321" >郧阳师范高等专科学校</option>
        
            <option value="2322" >武汉长江工商学院</option>
        
            <option value="2323" >黄冈广播电视大学</option>
        
            <option value="2324" >华中科技大学文华学院</option>
        
            <option value="2325" >汉口学院</option>
        
            <option value="2326" >湖北大学知行学院</option>
        
            <option value="2327" >三峡大学科技学院</option>
        
            <option value="2328" >武昌理工学院</option>
        
            <option value="2329" >湖北工业大学工程技术学院</option>
        
            <option value="2330" >武汉工业学院工商学院</option>
        
            <option value="2331" >武汉工程大学邮电与信息工程学院</option>
        
            <option value="2332" >武汉科技学院外经贸学院</option>
        
            <option value="2333" >江汉大学文理学院</option>
        
            <option value="2334" >湖北汽车工业学院科技学院</option>
        
            <option value="2335" >湖北经济学院法商学院</option>
        
            <option value="2336" >武汉体育学院体育科技学院</option>
        
            <option value="2337" >湖北医药学院药护学院</option>
        
            <option value="2338" >湖北文理学院理工学院</option>
        
            <option value="2339" >中国地质大学江城学院</option>
        
            <option value="2340" >长江大学文理学院</option>
        
            <option value="2341" >长江大学工程技术学院</option>
        
            <option value="2342" >华中师范大学武汉传媒学院</option>
        
            <option value="2343" >武汉东湖学院</option>
        
            <option value="2344" >中南财经政法武汉学院</option>
        
            <option value="2345" >华中科技大学武昌分校</option>
        
            <option value="2346" >武汉工贸职业学院</option>
        
            <option value="2347" >三峡电力职业学院</option>
        
            <option value="2348" >湖北青年职业学院</option>
        
            <option value="2349" >武汉语言文化职业学院</option>
        
            <option value="2350" >黄石职业技术学院</option>
        
            <option value="2351" >海军工程大学</option>
        
            <option value="2352" >湖北广播电视大学</option>
        
            <option value="2353" >武汉科技大学城市学院</option>
        
            <option value="2354" >宜昌市商业学校</option>
        
            <option value="2355" >湖北澳新教育专修学院</option>
        
            <option value="2356" >武汉城市建设学院</option>
        
            <option value="2357" >湖北孝感职业技术学院</option>
        
            <option value="2358" >葛洲坝水电工程学院</option>
        
            <option value="2359" >武汉冶金管理干部学院</option>
        
            <option value="2360" >武汉城市职业学院</option>
        
            <option value="2361" >武汉大学珞珈学院</option>
        
            <option value="2362" >郑州大学</option>
        
            <option value="2363" >河南工业大学</option>
        
            <option value="2364" >河南农业大学</option>
        
            <option value="2365" >华北水利水电学院</option>
        
            <option value="2366" >郑州轻工业学院</option>
        
            <option value="2367" >郑州航空工业管理学院</option>
        
            <option value="2368" >黄河科技学院</option>
        
            <option value="2369" >中原工学院</option>
        
            <option value="2370" >河南中医学院</option>
        
            <option value="2371" >河南财经政法学院</option>
        
            <option value="2372" >郑州城市职业学院</option>
        
            <option value="2373" >新乡学院</option>
        
            <option value="2374" >开封文化艺术职业学院</option>
        
            <option value="2375" >长垣博大烹饪职业技术学院</option>
        
            <option value="2376" >河南理工大学高等职业学院</option>
        
            <option value="2377" >郑州成功财经学院</option>
        
            <option value="2378" >安阳职业技术学院</option>
        
            <option value="2379" >河南大学</option>
        
            <option value="2380" >河南科技大学</option>
        
            <option value="2381" >洛阳师范学院</option>
        
            <option value="2382" >安阳工学院</option>
        
            <option value="2383" >安阳师范学院</option>
        
            <option value="2384" >南阳理工学院</option>
        
            <option value="2385" >南阳师范学院</option>
        
            <option value="2386" >河南城建学院</option>
        
            <option value="2387" >平顶山学院</option>
        
            <option value="2388" >新乡医学院</option>
        
            <option value="2389" >河南科技学院</option>
        
            <option value="2390" >河南师范大学</option>
        
            <option value="2391" >信阳师范学院</option>
        
            <option value="2392" >商丘师范学院</option>
        
            <option value="2393" >周口师范学院</option>
        
            <option value="2394" >黄淮学院</option>
        
            <option value="2395" >许昌学院</option>
        
            <option value="2396" >河南理工学院</option>
        
            <option value="2397" >河南财政税务高等专科学校</option>
        
            <option value="2398" >河南工程学院</option>
        
            <option value="2399" >河南工业贸易职业学院</option>
        
            <option value="2400" >河南工业职业技术学院</option>
        
            <option value="2401" >河南警察学院</option>
        
            <option value="2402" >河南广播影视学院</option>
        
            <option value="2403" >河南机电高等专科学校</option>
        
            <option value="2404" >河南检察职业学院</option>
        
            <option value="2405" >河南交通职业技术学院</option>
        
            <option value="2406" >河南教育学院</option>
        
            <option value="2407" >河南经贸职业学院</option>
        
            <option value="2408" >河南农业职业学院</option>
        
            <option value="2409" >河南商业高等专科学校</option>
        
            <option value="2410" >河南省工商行政管理广播电视大学</option>
        
            <option value="2411" >河南司法警官职业学院</option>
        
            <option value="2412" >河南新华电脑学院</option>
        
            <option value="2413" >河南职业技术学院</option>
        
            <option value="2414" >河南质量工程职业学院</option>
        
            <option value="2415" >鹤壁职业技术学院</option>
        
            <option value="2416" >黄河水利职业技术学院</option>
        
            <option value="2417" >济源职业技术学院</option>
        
            <option value="2418" >焦作大学</option>
        
            <option value="2419" >焦作师范高等专科学校</option>
        
            <option value="2420" >开封大学</option>
        
            <option value="2421" >开封市电子科技专修学校</option>
        
            <option value="2422" >洛阳大学</option>
        
            <option value="2423" >洛阳理工学院</option>
        
            <option value="2424" >漯河医学高等专科学校</option>
        
            <option value="2425" >漯河职业技术学院</option>
        
            <option value="2426" >南阳医学高等专科学校</option>
        
            <option value="2427" >平顶山教育学院</option>
        
            <option value="2428" >平顶山工业职业技术学院</option>
        
            <option value="2429" >三门峡职业技术学院</option>
        
            <option value="2430" >商丘科技职业学院</option>
        
            <option value="2431" >商丘医学高等专科学校</option>
        
            <option value="2432" >商丘职业技术学院</option>
        
            <option value="2433" >嵩山少林武术职业学院</option>
        
            <option value="2434" >铁道警官高等专科学校</option>
        
            <option value="2435" >信阳农业高等专科学校</option>
        
            <option value="2436" >信阳职业技术学院</option>
        
            <option value="2437" >许昌职业技术学院</option>
        
            <option value="2438" >永城职业学院</option>
        
            <option value="2439" >郑州大学西亚斯国际学院</option>
        
            <option value="2440" >郑州电力高等专科学校</option>
        
            <option value="2441" >郑州电子信息职业技术学院</option>
        
            <option value="2442" >郑州工业安全职业学院</option>
        
            <option value="2443" >郑州华信学院</option>
        
            <option value="2444" >郑州交通学院</option>
        
            <option value="2445" >郑州经贸职业学院</option>
        
            <option value="2446" >郑州科技职业学院</option>
        
            <option value="2447" >郑州旅游职业学院</option>
        
            <option value="2448" >郑州牧业工程高等专科学校</option>
        
            <option value="2449" >郑州师范学院</option>
        
            <option value="2450" >郑州澍青医学高等专科学校</option>
        
            <option value="2451" >郑州铁路职业技术学院</option>
        
            <option value="2452" >郑州信息科技职业学院</option>
        
            <option value="2453" >郑州科技学院</option>
        
            <option value="2454" >中州大学</option>
        
            <option value="2455" >周口职业技术学院</option>
        
            <option value="2456" >郑州升达经贸管理学院</option>
        
            <option value="2457" >洛阳工业高等专科学校</option>
        
            <option value="2458" >河南职工医学院</option>
        
            <option value="2459" >河南科技学院新科学院</option>
        
            <option value="2460" >河南理工大学万方科技学院</option>
        
            <option value="2461" >中原工学院信息商务学院</option>
        
            <option value="2462" >安阳师范学院人文管理学院</option>
        
            <option value="2463" >商丘学院</option>
        
            <option value="2464" >河南财经学院成功学院</option>
        
            <option value="2465" >开封教育学院</option>
        
            <option value="2466" >河南卫生职工学院</option>
        
            <option value="2467" >河南建筑职业技术学院</option>
        
            <option value="2468" >河南大学民生学院</option>
        
            <option value="2469" >河南师范大学新联学院</option>
        
            <option value="2470" >新乡医学院三全学院</option>
        
            <option value="2471" >信阳师范学院华锐学院</option>
        
            <option value="2472" >郑州电力职业技术学院</option>
        
            <option value="2473" >周口科技职业学院</option>
        
            <option value="2474" >河南省广播电视大学</option>
        
            <option value="2475" >中国人民解放军外国语学院</option>
        
            <option value="2476" >清华IT河南校区</option>
        
            <option value="2477" >第一拖拉机制造厂拖拉机学院</option>
        
            <option value="2478" >郑州煤炭管理干部学院</option>
        
            <option value="2479" >河南工业大学化学工业职业学院</option>
        
            <option value="2480" >河南省轻工业职工大学</option>
        
            <option value="2481" >郑州交通职业学院</option>
        
            <option value="2482" >郑州牧业高等专科学校</option>
        
            <option value="2483" >郑州布瑞达理工职业学院</option>
        
            <option value="2484" >河南医科大学教育中心</option>
        
            <option value="2485" >郑州轻工业轻工职业学院</option>
        
            <option value="2486" >山东大学</option>
        
            <option value="2487" >中国海洋大学</option>
        
            <option value="2488" >济南大学</option>
        
            <option value="2489" >山东建筑大学</option>
        
            <option value="2490" >山东师范大学</option>
        
            <option value="2491" >山东财经大学</option>
        
            <option value="2492" >山东中医药大学</option>
        
            <option value="2493" >山东轻工业学院</option>
        
            <option value="2494" >山东交通学院</option>
        
            <option value="2495" >山东警察学院</option>
        
            <option value="2496" >山东体育学院</option>
        
            <option value="2497" >山东艺术学院</option>
        
            <option value="2498" >山东工艺美术学院</option>
        
            <option value="2499" >山东海事职业学院</option>
        
            <option value="2500" >曲阜师范大学</option>
        
            <option value="2501" >北京电影学院现代创意媒体学院</option>
        
            <option value="2502" >烟台大学</option>
        
            <option value="2503" >鲁东大学</option>
        
            <option value="2504" >烟台南山学院</option>
        
            <option value="2505" >山东工商学院</option>
        
            <option value="2506" >青岛大学</option>
        
            <option value="2507" >山东科技大学</option>
        
            <option value="2508" >青岛科技大学</option>
        
            <option value="2509" >青岛理工大学</option>
        
            <option value="2510" >青岛农业大学</option>
        
            <option value="2511" >滨海学院</option>
        
            <option value="2512" >中国石油大学（华东）</option>
        
            <option value="2513" >聊城大学</option>
        
            <option value="2514" >山东理工大学</option>
        
            <option value="2515" >潍坊医学院</option>
        
            <option value="2516" >潍坊学院</option>
        
            <option value="2517" >泰山医学院</option>
        
            <option value="2518" >山东财政学院</option>
        
            <option value="2519" >泰山学院</option>
        
            <option value="2520" >山东农业大学</option>
        
            <option value="2521" >滨州医学院</option>
        
            <option value="2522" >滨州学院</option>
        
            <option value="2523" >济宁医学院</option>
        
            <option value="2524" >临沂大学</option>
        
            <option value="2525" >德州学院</option>
        
            <option value="2526" >枣庄学院</option>
        
            <option value="2527" >菏泽学院</option>
        
            <option value="2528" >滨州职业学院</option>
        
            <option value="2529" >德州教育学院</option>
        
            <option value="2530" >德州科技职业学院</option>
        
            <option value="2531" >东营职业学院</option>
        
            <option value="2532" >哈尔滨工业大学(威海)</option>
        
            <option value="2533" >菏泽医学专科学校</option>
        
            <option value="2534" >济南工程职业技术学院</option>
        
            <option value="2535" >山东职业学院</option>
        
            <option value="2536" >济南职业学院</option>
        
            <option value="2537" >济宁学院</option>
        
            <option value="2538" >济宁职业技术学院</option>
        
            <option value="2539" >莱芜职业技术学院</option>
        
            <option value="2540" >聊城职业技术学院</option>
        
            <option value="2541" >青岛飞洋职业技术学院</option>
        
            <option value="2542" >青岛港湾职业技术学院</option>
        
            <option value="2543" >青岛恒星职业技术学院</option>
        
            <option value="2544" >青岛黄海职业学院</option>
        
            <option value="2545" >青岛求实职业技术学院</option>
        
            <option value="2546" >青岛远洋船员学院</option>
        
            <option value="2547" >青岛职业技术学院</option>
        
            <option value="2548" >曲阜远东职业技术学院</option>
        
            <option value="2549" >日照职业技术学院</option>
        
            <option value="2550" >山东大王职业学院</option>
        
            <option value="2551" >山东大学威海分校</option>
        
            <option value="2552" >山东电力高等专科学校</option>
        
            <option value="2553" >山东电子职业技术学院</option>
        
            <option value="2554" >山东服装职业学院</option>
        
            <option value="2555" >山东工业职业学院</option>
        
            <option value="2556" >山东华宇职业技术学院</option>
        
            <option value="2557" >山东化工职业学院</option>
        
            <option value="2558" >山东交通职业学院</option>
        
            <option value="2559" >山东经贸职业学院</option>
        
            <option value="2560" >山东凯文科技职业学院</option>
        
            <option value="2561" >山东科技职业学院</option>
        
            <option value="2562" >山东劳动职业技术学院</option>
        
            <option value="2563" >山东力明科技职业学院</option>
        
            <option value="2564" >山东旅游职业学院</option>
        
            <option value="2565" >山东铝业职业学院</option>
        
            <option value="2566" >山东商业职业技术学院</option>
        
            <option value="2567" >山东胜利职业学院</option>
        
            <option value="2568" >山东省青岛酒店管理学院</option>
        
            <option value="2569" >山东水利职业技术学院</option>
        
            <option value="2570" >山东省潍坊艺术学校</option>
        
            <option value="2571" >山东圣翰财贸职业学院</option>
        
            <option value="2572" >山东水利职业学院</option>
        
            <option value="2573" >山东水利专科学校</option>
        
            <option value="2574" >山东丝绸纺织职业学院</option>
        
            <option value="2575" >山东外国语职业学院</option>
        
            <option value="2576" >山东外贸职业学院山</option>
        
            <option value="2577" >东外事翻译学院威海分校</option>
        
            <option value="2578" >山东外事翻译职业学院</option>
        
            <option value="2579" >山东万杰医学院</option>
        
            <option value="2580" >山东威海财经专修学院</option>
        
            <option value="2581" >山东威海外国语进修学院</option>
        
            <option value="2582" >山东现代职业学院</option>
        
            <option value="2583" >山东协和职业技术学院</option>
        
            <option value="2584" >山东信息职业技术学院</option>
        
            <option value="2585" >山东行政学院(山东经济管理干部学院)</option>
        
            <option value="2586" >山东杏林科技职业学院</option>
        
            <option value="2587" >山东畜牧兽医职业学院</option>
        
            <option value="2588" >山东药品食品职业学院</option>
        
            <option value="2589" >山东医学高等专科学校</option>
        
            <option value="2590" >山东英才学院</option>
        
            <option value="2591" >山东政法学院</option>
        
            <option value="2592" >山东中医药高等专科学校</option>
        
            <option value="2593" >泰山职业技术学院</option>
        
            <option value="2594" >万杰科技学院</option>
        
            <option value="2595" >威海市广播电视大学</option>
        
            <option value="2596" >威海市交通学校</option>
        
            <option value="2597" >威海职业(技术)学院</option>
        
            <option value="2598" >威海中加国际工商学院</option>
        
            <option value="2599" >潍坊工商职业学院</option>
        
            <option value="2600" >潍坊工程职业学院</option>
        
            <option value="2601" >潍坊科技学院</option>
        
            <option value="2602" >潍坊职业学院</option>
        
            <option value="2603" >文登师范学院</option>
        
            <option value="2604" >烟台职业学院</option>
        
            <option value="2605" >枣庄科技职业学院</option>
        
            <option value="2606" >中国石油大学(华东)东营校区</option>
        
            <option value="2607" >淄博广播电视大学</option>
        
            <option value="2608" >淄博恒星外国语学院</option>
        
            <option value="2609" >淄博科技职业学院</option>
        
            <option value="2610" >淄博师范高等专科学校</option>
        
            <option value="2611" >淄博职业学院</option>
        
            <option value="2612" >齐鲁师范学院</option>
        
            <option value="2613" >山东技师学院</option>
        
            <option value="2614" >日照广播电视大学</option>
        
            <option value="2615" >山东城市建设职业学院</option>
        
            <option value="2616" >烟台工程职业技术学院</option>
        
            <option value="2617" >山东商务职业学院</option>
        
            <option value="2618" >烟台汽车工程职业学院</option>
        
            <option value="2619" >山东省农业管理干部学院</option>
        
            <option value="2620" >山东青年政治学院</option>
        
            <option value="2621" >山东省工会管理干部学院</option>
        
            <option value="2622" >山东广播电视大学</option>
        
            <option value="2623" >德州职业技术学院</option>
        
            <option value="2624" >中国石油大学胜利学院</option>
        
            <option value="2625" >烟台大学文经学院</option>
        
            <option value="2626" >青岛理工大学琴岛学院</option>
        
            <option value="2627" >山东科技大学泰山科技学院</option>
        
            <option value="2628" >山东财经大学燕山学院</option>
        
            <option value="2629" >青岛工学院</option>
        
            <option value="2630" >青岛农业大学海都学院</option>
        
            <option value="2631" >曲阜师范大学杏坛学院</option>
        
            <option value="2632" >山东财经大学东方学院</option>
        
            <option value="2633" >山东师范大学历山学院</option>
        
            <option value="2634" >聊城大学东昌学院</option>
        
            <option value="2635" >济南大学泉城学院</option>
        
            <option value="2636" >中国农业大学（烟台校区）</option>
        
            <option value="2637" >日照师范学校</option>
        
            <option value="2638" >山东艺术设计学院</option>
        
            <option value="2639" >滨州技术学院</option>
        
            <option value="2640" >山东冶金技术学院</option>
        
            <option value="2641" >山东省济宁市技术学院</option>
        
            <option value="2642" >济南广播电视大学</option>
        
            <option value="2643" >山东省聊城教育学院</option>
        
            <option value="2644" >山东财政职工大学</option>
        
            <option value="2645" >青岛市广播电视大学</option>
        
            <option value="2646" >青岛理工大学（临沂）</option>
        
            <option value="2647" >山东兵器工业职工大学</option>
        
            <option value="2648" >新汶矿务局职工大学</option>
        
            <option value="2649" >山东工贸职业学院</option>
        
            <option value="2650" >山东新华学院</option>
        
            <option value="2651" >山东省医学科学院</option>
        
            <option value="2652" >山东化工技术学院</option>
        
            <option value="2653" >山东海天软件工程学院</option>
        
            <option value="2654" >青岛军政人文大学信息工程管理学院</option>
        
            <option value="2655" >山东省第二技术学院</option>
        
            <option value="2656" >临沂职业学院</option>
        
            <option value="2657" >青岛北港学院</option>
        
            <option value="2658" >山东司法警官职业学院</option>
        
            <option value="2659" >山东文化产业职业学院</option>
        
            <option value="2660" >菏泽家政职业学院</option>
        
            <option value="2661" >山东理工职业学院</option>
        
            <option value="2662" >威海工业技术学校(原二职)</option>
        
            <option value="2663" >山东传媒学院</option>
        
            <option value="2664" >营口电视大学</option>
        
            <option value="2665" >山东传媒职业学院</option>
        
            <option value="2666" >山东省益都卫生学校</option>
        
            <option value="2667" >山东烟台建文学院</option>
        
            <option value="2668" >山东省潍坊卫生学校</option>
        
            <option value="2669" >寿光科技学院</option>
        
            <option value="2670" >山东省广播电视大学</option>
        
            <option value="2671" >烟台城乡建设学校</option>
        
            <option value="2672" >青岛市电子信息技术学校</option>
        
            <option value="2673" >山东医药技师学院</option>
        
            <option value="2674" >济南协和职业学院</option>
        
            <option value="2675" >山东黄金技术学院</option>
        
            <option value="2676" >山东交通学院海运学院</option>
        
            <option value="2677" >山东工业技师学院</option>
        
            <option value="2678" >山东女子学院</option>
        
            <option value="2679" >重庆大学</option>
        
            <option value="2680" >西南大学</option>
        
            <option value="2681" >重庆师范大学</option>
        
            <option value="2682" >西南政法大学</option>
        
            <option value="2683" >重庆交通大学</option>
        
            <option value="2684" >重庆邮电大学</option>
        
            <option value="2685" >重庆医科大学</option>
        
            <option value="2686" >重庆科技学院</option>
        
            <option value="2687" >重庆理工大学</option>
        
            <option value="2688" >长江师范学院</option>
        
            <option value="2689" >四川外国语学院</option>
        
            <option value="2690" >四川美术学院</option>
        
            <option value="2691" >重庆三峡学院</option>
        
            <option value="2692" >重庆文理学院</option>
        
            <option value="2693" >重庆化工职业学院</option>
        
            <option value="2694" >后勤工程学院</option>
        
            <option value="2695" >重庆能源职业学院</option>
        
            <option value="2696" >重庆商务职业学院</option>
        
            <option value="2697" >重庆旅游职业学院</option>
        
            <option value="2698" >重庆五一高级技师学院</option>
        
            <option value="2699" >重庆通信学院</option>
        
            <option value="2700" >重庆轻工职业学院</option>
        
            <option value="2701" >重庆经贸职业学院</option>
        
            <option value="2702" >重庆公共运输职业学院</option>
        
            <option value="2703" >三峡师范学校</option>
        
            <option value="2704" >重庆艺术工程职业学院</option>
        
            <option value="2705" >重庆安全技术职业学院</option>
        
            <option value="2706" >中国人民解放军第三军医大学</option>
        
            <option value="2707" >重庆电信职业学院</option>
        
            <option value="2708" >重庆房地产职业学院</option>
        
            <option value="2709" >重庆城市职业学院</option>
        
            <option value="2710" >重庆电力高等专科学校</option>
        
            <option value="2711" >重庆电子工程职业学院</option>
        
            <option value="2712" >重庆航天职业技术学院</option>
        
            <option value="2713" >重庆工程职业技术学院</option>
        
            <option value="2714" >重庆工商职业学院</option>
        
            <option value="2715" >重庆工业职业技术学院</option>
        
            <option value="2716" >重庆传媒职业学院</option>
        
            <option value="2717" >重庆海联职业技术学院</option>
        
            <option value="2718" >重庆机电职业技术学院</option>
        
            <option value="2719" >重庆警察学院</option>
        
            <option value="2720" >重庆民生职业技术学院</option>
        
            <option value="2721" >重庆三峡医药高等专科学校</option>
        
            <option value="2722" >重庆三峡职业学院</option>
        
            <option value="2723" >重庆水利电力职业技术学院</option>
        
            <option value="2724" >重庆信息技术职业学院</option>
        
            <option value="2725" >重庆医药高等专科学校</option>
        
            <option value="2726" >重庆正大软件职业技术学院</option>
        
            <option value="2727" >重庆职业技术学院</option>
        
            <option value="2728" >重庆教育学院</option>
        
            <option value="2729" >重庆应用外国语专修学院</option>
        
            <option value="2730" >重庆大学城市科技学院</option>
        
            <option value="2731" >西南大学育才学院</option>
        
            <option value="2732" >四川外语学院重庆南方翻译学院</option>
        
            <option value="2733" >重庆师范大学涉外商贸学院</option>
        
            <option value="2734" >重庆工商大学融智学院</option>
        
            <option value="2735" >重庆工商大学派斯学院</option>
        
            <option value="2736" >重庆邮电大学移通学院</option>
        
            <option value="2737" >重庆工贸职业技术学院</option>
        
            <option value="2738" >重庆青年职业技术学院</option>
        
            <option value="2739" >重庆城市管理职业学院</option>
        
            <option value="2740" >重庆财经职业学院</option>
        
            <option value="2741" >重庆科创职业学院</option>
        
            <option value="2742" >重庆建筑工程职业学院</option>
        
            <option value="2743" >重庆五一技师学院</option>
        
            <option value="2744" >重庆通信学院</option>
        
            <option value="2745" >西南大学应用技术学院</option>
        
            <option value="2746" >重庆交通职业学院</option>
        
            <option value="2747" >重庆电讯职业学院</option>
        
            <option value="2748" >厦门大学</option>
        
            <option value="2749" >集美大学</option>
        
            <option value="2750" >厦门理工学院</option>
        
            <option value="2751" >泉州轻工职业学院</option>
        
            <option value="2752" >泉州师范学院软件学院</option>
        
            <option value="2753" >泉州泰山航海职业学院</option>
        
            <option value="2754" >宁德师范学院</option>
        
            <option value="2755" >福州大学</option>
        
            <option value="2756" >福建师范大学</option>
        
            <option value="2757" >福建农林大学</option>
        
            <option value="2758" >福建医科大学</option>
        
            <option value="2759" >福建工程学院</option>
        
            <option value="2760" >福建中医药大学</option>
        
            <option value="2761" >闽江学院</option>
        
            <option value="2762" >华侨大学</option>
        
            <option value="2763" >仰恩大学</option>
        
            <option value="2764" >泉州师范学院</option>
        
            <option value="2765" >漳州师范</option>
        
            <option value="2766" >莆田学院</option>
        
            <option value="2767" >三明学院</option>
        
            <option value="2768" >龙岩学院</option>
        
            <option value="2769" >厦门大学嘉庚学院</option>
        
            <option value="2770" >集美大学诚毅学院</option>
        
            <option value="2771" >福州大学阳光学院</option>
        
            <option value="2772" >福州大学至诚学院</option>
        
            <option value="2773" >福建师范大学协和学院</option>
        
            <option value="2774" >福建师范大学闽南科技学院</option>
        
            <option value="2775" >福建农林大学东方学院</option>
        
            <option value="2776" >福建农林大学金山学院</option>
        
            <option value="2777" >福建电力职业技术学院</option>
        
            <option value="2778" >福建对外经济贸易职业技术学院</option>
        
            <option value="2779" >福建警察学院</option>
        
            <option value="2780" >福建广播电视大学</option>
        
            <option value="2781" >福建华南女子职业学院</option>
        
            <option value="2782" >福建船政交通职业学院</option>
        
            <option value="2783" >福建教育学院</option>
        
            <option value="2784" >福建警官职业学院</option>
        
            <option value="2785" >福建林业职业技术学院</option>
        
            <option value="2786" >福建农业职业技术学院</option>
        
            <option value="2787" >福建商业高等专科学校</option>
        
            <option value="2788" >福建生物工程职业技术学院</option>
        
            <option value="2789" >福建水利电力职业技术学院</option>
        
            <option value="2790" >福建卫生职业技术学院</option>
        
            <option value="2791" >福建信息职业技术学院</option>
        
            <option value="2792" >福建中医学院五洲科技学院</option>
        
            <option value="2793" >福州海峡职业技术学院</option>
        
            <option value="2794" >福州科技职业技术学院</option>
        
            <option value="2795" >福州黎明职业技术学院</option>
        
            <option value="2796" >福州软件职业技术学院</option>
        
            <option value="2797" >福州英华职业学院</option>
        
            <option value="2798" >福州职业技术学院</option>
        
            <option value="2799" >黎明职业大学</option>
        
            <option value="2800" >湄洲湾职业技术学院</option>
        
            <option value="2801" >闽北职业技术学院</option>
        
            <option value="2802" >闽西职业技术学院</option>
        
            <option value="2803" >武夷学院</option>
        
            <option value="2804" >泉州纺织服装职业学院</option>
        
            <option value="2805" >闽南理工学院</option>
        
            <option value="2806" >泉州华光摄影艺术职业学院</option>
        
            <option value="2807" >泉州经贸职业技术学院</option>
        
            <option value="2808" >泉州信息职业技术学院</option>
        
            <option value="2809" >泉州医学高等专科学校</option>
        
            <option value="2810" >泉州理工学院</option>
        
            <option value="2811" >三明职业技术学院</option>
        
            <option value="2812" >厦门海洋职业技术学院</option>
        
            <option value="2813" >厦门华天涉外职业技术学院</option>
        
            <option value="2814" >厦门华厦职业学院</option>
        
            <option value="2815" >厦门南洋学院</option>
        
            <option value="2816" >厦门兴才职业技术学院</option>
        
            <option value="2817" >厦门演艺职业学院</option>
        
            <option value="2818" >漳州职业技术学院</option>
        
            <option value="2819" >福建政法管理干部学院</option>
        
            <option value="2820" >厦门城市职业学院</option>
        
            <option value="2821" >漳州卫生职业学院</option>
        
            <option value="2822" >江夏学院</option>
        
            <option value="2823" >福州教育学院</option>
        
            <option value="2824" >厦门市广播电视大学</option>
        
            <option value="2825" >福建财会管理干部学院</option>
        
            <option value="2826" >福建经济管理干部学院</option>
        
            <option value="2827" >福建省漳州业余大学</option>
        
            <option value="2828" >龙岩技师学院</option>
        
            <option value="2829" >德化陶瓷职业技术学院</option>
        
            <option value="2830" >厦门东海学院</option>
        
            <option value="2831" >泉州儿童发展职业学院</option>
        
            <option value="2832" >厦门科技学院</option>
        
            <option value="2833" >福建儿童发展职业学院</option>
        
            <option value="2834" >厦门软件职业技术学院</option>
        
            <option value="2835" >福建艺术职业学校</option>
        
            <option value="2836" >漳州城市职业学院</option>
        
            <option value="2837" >漳州天福茶职业技术学院</option>
        
            <option value="2838" >福州外语外贸学院</option>
        
            <option value="2839" >福建省艺术职业学院</option>
        
            <option value="2840" >厦门医学高等专科学校</option>
        
            <option value="2841" >厦门安防科技学院</option>
        
            <option value="2842" >漳州吉马职业印刷技术学院</option>
        
            <option value="2843" >福建体育职业技术学院</option>
        
            <option value="2844" >厦门安防科技职业学院</option>
        
            <option value="2845" >厦门技师学院</option>
        
            <option value="2846" >华侨大学厦门工学院</option>
        
            <option value="2847" >武夷山职业学院</option>
        
            <option value="2848" >江西财经大学</option>
        
            <option value="2849" >南昌大学</option>
        
            <option value="2850" >华东交通大学</option>
        
            <option value="2851" >南昌航空大学</option>
        
            <option value="2852" >南昌工程学院</option>
        
            <option value="2853" >南昌理工学院</option>
        
            <option value="2854" >江西中医学院</option>
        
            <option value="2855" >江西科技师范大学</option>
        
            <option value="2856" >江西科技大学</option>
        
            <option value="2857" >江西农业大学</option>
        
            <option value="2858" >江西师范大学</option>
        
            <option value="2859" >江西太阳能科技学院</option>
        
            <option value="2860" >江西医学院上饶分院</option>
        
            <option value="2861" >江西科技学院</option>
        
            <option value="2862" >东华理工大学</option>
        
            <option value="2863" >景德镇陶瓷学院</option>
        
            <option value="2864" >赣南医学院</option>
        
            <option value="2865" >赣南师范学院</option>
        
            <option value="2866" >江西理工大学</option>
        
            <option value="2867" >上饶师范学院</option>
        
            <option value="2868" >井冈山大学</option>
        
            <option value="2869" >宜春学院</option>
        
            <option value="2870" >九江学院</option>
        
            <option value="2871" >抚州职业技术学院</option>
        
            <option value="2872" >赣南教育学院</option>
        
            <option value="2873" >赣南教育学院</option>
        
            <option value="2874" >赣西科技职业学院</option>
        
            <option value="2875" >江西财经职业学院</option>
        
            <option value="2876" >江西城市职业学院</option>
        
            <option value="2877" >江西大宇学院</option>
        
            <option value="2878" >江西电力职业技术学院</option>
        
            <option value="2879" >江西服装学院</option>
        
            <option value="2880" >南昌工学院</option>
        
            <option value="2881" >江西工程职业学院</option>
        
            <option value="2882" >江西工业工程职业技术学院</option>
        
            <option value="2883" >江西工业贸易职业技术学院</option>
        
            <option value="2884" >江西工业职业技术学院</option>
        
            <option value="2885" >江西警察学院</option>
        
            <option value="2886" >江西航空职业技术学院</option>
        
            <option value="2887" >江西护理职业技术学院</option>
        
            <option value="2888" >江西环境工程职业学院</option>
        
            <option value="2889" >江西机电职业技术学院</option>
        
            <option value="2890" >江西建设职业技术学院</option>
        
            <option value="2891" >江西交通职业技术学院</option>
        
            <option value="2892" >江西教育学院</option>
        
            <option value="2893" >江西经济管理干部学院</option>
        
            <option value="2894" >江西经济管理职业学院</option>
        
            <option value="2895" >江西科技职业学院</option>
        
            <option value="2896" >江西旅游商贸职业学院</option>
        
            <option value="2897" >江西南昌教育学院</option>
        
            <option value="2898" >江西农业工程职业学院</option>
        
            <option value="2899" >江西青年职业学院</option>
        
            <option value="2900" >江西轻工职业技术学院</option>
        
            <option value="2901" >江西生物科技职业学院</option>
        
            <option value="2902" >江西省广播电视大学</option>
        
            <option value="2903" >江西司法警官职业学院</option>
        
            <option value="2904" >江西陶瓷工艺美术职业学院</option>
        
            <option value="2905" >江西外语外贸职业学院</option>
        
            <option value="2906" >江西先锋软件职业技术学院</option>
        
            <option value="2907" >江西现代职业技术学院</option>
        
            <option value="2908" >江西信息应用职业技术学院</option>
        
            <option value="2909" >江西行政管理干部学院</option>
        
            <option value="2910" >江西艺术职业学院</option>
        
            <option value="2911" >江西应用技术职业学院</option>
        
            <option value="2912" >江西渝州科技职业学院</option>
        
            <option value="2913" >江西制造职业技术学院</option>
        
            <option value="2914" >江西中医药高等专科学校</option>
        
            <option value="2915" >景德镇高等专科学校</option>
        
            <option value="2916" >九江职业大学</option>
        
            <option value="2917" >九江职业技术学院</option>
        
            <option value="2918" >南昌钢铁职工大学</option>
        
            <option value="2919" >南昌师范高等专科学校</option>
        
            <option value="2920" >南昌市业余大学</option>
        
            <option value="2921" >南昌市职工科技大学</option>
        
            <option value="2922" >萍乡学院</option>
        
            <option value="2923" >上饶职业技术学院</option>
        
            <option value="2924" >新余钢铁有限责任公司职工大学</option>
        
            <option value="2925" >新余学院</option>
        
            <option value="2926" >宜春职业技术学院</option>
        
            <option value="2927" >鹰潭职业技术学院</option>
        
            <option value="2928" >江西应用工程职业学院</option>
        
            <option value="2929" >江西农业大学南昌商学院</option>
        
            <option value="2930" >江西师范大学科学技术学院</option>
        
            <option value="2931" >华东交通大学理工学院</option>
        
            <option value="2932" >江西理工大学应用科学学院</option>
        
            <option value="2933" >东华理工大学长江学院</option>
        
            <option value="2934" >南昌航空大学科技学院</option>
        
            <option value="2935" >江西中医学院科技学院</option>
        
            <option value="2936" >江西财经大学现代经济管理学院</option>
        
            <option value="2937" >赣南师范学院科技学院</option>
        
            <option value="2938" >赣南师范学院科技学院</option>
        
            <option value="2939" >江西科技师范学院理工学院</option>
        
            <option value="2940" >南昌大学共青学院</option>
        
            <option value="2941" >南昌大学科学技术学院</option>
        
            <option value="2942" >江西泰豪动漫职业学院</option>
        
            <option value="2943" >江西枫林涉外经贸职业学院</option>
        
            <option value="2944" >江西中山职业技术学院</option>
        
            <option value="2945" >江西艺术设计学院</option>
        
            <option value="2946" >江西师大鹰潭学院</option>
        
            <option value="2947" >广西大学</option>
        
            <option value="2948" >广西医科大学</option>
        
            <option value="2949" >广西民族大学</option>
        
            <option value="2950" >广西中医药大学</option>
        
            <option value="2951" >广西师范学院</option>
        
            <option value="2952" >广西财经学院</option>
        
            <option value="2953" >广西艺术学院</option>
        
            <option value="2954" >广西外国语学院</option>
        
            <option value="2955" >广西经济职业学院</option>
        
            <option value="2956" >桂林电子科技大学</option>
        
            <option value="2957" >广西师范大学</option>
        
            <option value="2958" >桂林理工大学</option>
        
            <option value="2959" >桂林医学院</option>
        
            <option value="2960" >广西科技大学</option>
        
            <option value="2961" >右江民族医学院</option>
        
            <option value="2962" >百色学院</option>
        
            <option value="2963" >河池学院</option>
        
            <option value="2964" >玉林师范学院</option>
        
            <option value="2965" >钦州学院</option>
        
            <option value="2966" >贺州学院</option>
        
            <option value="2967" >梧州学院</option>
        
            <option value="2968" >广西大学行健文理学院</option>
        
            <option value="2969" >广西师范大学漓江学院</option>
        
            <option value="2970" >桂林电子科技大学信息科技学院</option>
        
            <option value="2971" >桂林工学院博文管理学院</option>
        
            <option value="2972" >广西工学院鹿山学院</option>
        
            <option value="2973" >广西师范学院师园学院</option>
        
            <option value="2974" >广西民族大学相思湖学院</option>
        
            <option value="2975" >广西中医学院赛恩斯新医药学院</option>
        
            <option value="2976" >北海宏源足球职业学院</option>
        
            <option value="2977" >北海艺术设计职业学院</option>
        
            <option value="2978" >北海职业学院</option>
        
            <option value="2979" >广西城市职业学院</option>
        
            <option value="2980" >广西电力职业技术学院</option>
        
            <option value="2981" >广西东方外语职业学院</option>
        
            <option value="2982" >广西工商职业技术学院</option>
        
            <option value="2983" >广西工业职业技术学院</option>
        
            <option value="2984" >广西国际商务职业技术学院</option>
        
            <option value="2985" >广西机电职业技术学院</option>
        
            <option value="2986" >广西建设职业技术学院</option>
        
            <option value="2987" >广西交通职业技术学院</option>
        
            <option value="2988" >广西经济管理干部学院</option>
        
            <option value="2989" >广西经贸职业技术学院</option>
        
            <option value="2990" >广西警管高等专科学校</option>
        
            <option value="2991" >广西农业职业技术学院</option>
        
            <option value="2992" >广西轻工高级技工学校</option>
        
            <option value="2993" >广西生态工程职业技术学院</option>
        
            <option value="2994" >广西水利电力职业技术学院</option>
        
            <option value="2995" >广西体育高等专科学校</option>
        
            <option value="2996" >广西演艺职业学院</option>
        
            <option value="2997" >广西英华国际职业学院</option>
        
            <option value="2998" >广西邕江大学</option>
        
            <option value="2999" >广西幼儿师范学校</option>
        
            <option value="3000" >广西职业技术学院</option>
        
            <option value="3001" >贵港职业学院</option>
        
            <option value="3002" >桂林航天工业学院</option>
        
            <option value="3003" >桂林旅游高等专科学校</option>
        
            <option value="3004" >桂林山水职业学院</option>
        
            <option value="3005" >桂林师范高等专科学校</option>
        
            <option value="3006" >河池职业学院</option>
        
            <option value="3007" >柳州师范高等专科学校</option>
        
            <option value="3008" >柳州医学高等专科学校</option>
        
            <option value="3009" >柳州铁道职业技术学院</option>
        
            <option value="3010" >柳州职业技术学院</option>
        
            <option value="3011" >广西民族师范学院</option>
        
            <option value="3012" >南宁职业技术学院</option>
        
            <option value="3013" >南宁地区教育学院</option>
        
            <option value="3014" >北京航空航天大学北海学院</option>
        
            <option value="3015" >桂林工学院南宁分院</option>
        
            <option value="3016" >百色职业学院</option>
        
            <option value="3017" >广西教育学院</option>
        
            <option value="3018" >梧州职业学院</option>
        
            <option value="3019" >广西卫生管理干部学院</option>
        
            <option value="3020" >广西政法管理干部学院</option>
        
            <option value="3021" >柳州城市职业技术学院</option>
        
            <option value="3022" >华南理工大学</option>
        
            <option value="3023" >中山大学</option>
        
            <option value="3024" >暨南大学</option>
        
            <option value="3025" >华南师范大学</option>
        
            <option value="3026" >广东工业大学</option>
        
            <option value="3027" >华南农业大学</option>
        
            <option value="3028" >广州大学</option>
        
            <option value="3029" >广东外语外贸大学</option>
        
            <option value="3030" >广州中医药大学</option>
        
            <option value="3031" >南方医科大学</option>
        
            <option value="3032" >南方科技大学</option>
        
            <option value="3033" >仲恺农业工程学院</option>
        
            <option value="3034" >广州医学院</option>
        
            <option value="3035" >广东药学院</option>
        
            <option value="3036" >广东金融学院</option>
        
            <option value="3037" >广东财经大学</option>
        
            <option value="3038" >广东警官学院</option>
        
            <option value="3039" >广州体育学院</option>
        
            <option value="3040" >广州美术学院</option>
        
            <option value="3041" >星海音乐学院</option>
        
            <option value="3042" >广东技术师范学院</option>
        
            <option value="3043" >广东培正学院</option>
        
            <option value="3044" >广东白云学院</option>
        
            <option value="3045" >清华大学深圳研究生院</option>
        
            <option value="3046" >东莞职业技术学院</option>
        
            <option value="3047" >广东环境保护工程职业学院</option>
        
            <option value="3048" >广东省机械技师学院</option>
        
            <option value="3049" >哈尔滨工业大学深圳研究生院</option>
        
            <option value="3050" >广东省轻工业高级技师学院</option>
        
            <option value="3051" >深圳大学</option>
        
            <option value="3052" >汕头大学</option>
        
            <option value="3053" >五邑大学</option>
        
            <option value="3054" >肇庆学院</option>
        
            <option value="3055" >广东石油化工学院</option>
        
            <option value="3056" >东莞理工学院</option>
        
            <option value="3057" >广东医学院</option>
        
            <option value="3058" >湛江师范学院</option>
        
            <option value="3059" >广东海洋大学</option>
        
            <option value="3060" >韶关学院</option>
        
            <option value="3061" >韩山师范学院</option>
        
            <option value="3062" >嘉应学院</option>
        
            <option value="3063" >惠州学院</option>
        
            <option value="3064" >佛山科技学院</option>
        
            <option value="3065" >中山大学南方学院</option>
        
            <option value="3066" >广东外语外贸大学南国商学院</option>
        
            <option value="3067" >华南理工大学广州汽车学院</option>
        
            <option value="3068" >北京理工大学珠海学院</option>
        
            <option value="3069" >北京师范大学珠海分校</option>
        
            <option value="3070" >电子科技大学中山学院</option>
        
            <option value="3071" >东莞理工学院城市学院</option>
        
            <option value="3072" >广东科技学院</option>
        
            <option value="3073" >番禺职业技术学院</option>
        
            <option value="3074" >佛山职业技术学院</option>
        
            <option value="3075" >广东财经职业学院</option>
        
            <option value="3076" >广东潮汕职业技术学院</option>
        
            <option value="3077" >广东纺织职业技术学院</option>
        
            <option value="3078" >广东工程职业技术学院</option>
        
            <option value="3079" >广东工贸职业技术学院</option>
        
            <option value="3080" >广东工业大学华立学院</option>
        
            <option value="3081" >广东海洋大学寸金学院</option>
        
            <option value="3082" >广东海洋大学海滨学院</option>
        
            <option value="3083" >广东机电职业技术学院</option>
        
            <option value="3084" >广东建华职业学院</option>
        
            <option value="3085" >广东建设职业技术学院</option>
        
            <option value="3086" >广东交通职业技术学院</option>
        
            <option value="3087" >广东第二师范学院</option>
        
            <option value="3088" >广东科学技术职业学院</option>
        
            <option value="3089" >广东理工职业学院</option>
        
            <option value="3090" >广东岭南职业技术学院</option>
        
            <option value="3091" >广东农工商职业技术学院</option>
        
            <option value="3092" >广东女子职业技术学院</option>
        
            <option value="3093" >广东轻工职业技术学院</option>
        
            <option value="3094" >广东省新闻出版技师学院</option>
        
            <option value="3095" >广东水利电力职业技术学院</option>
        
            <option value="3096" >广东司法警官职业学院</option>
        
            <option value="3097" >广东松山职业技术学院</option>
        
            <option value="3098" >广东体育职业技术学院</option>
        
            <option value="3099" >广东外语外贸大学公开学院</option>
        
            <option value="3100" >广东外语艺术职业学院</option>
        
            <option value="3101" >广东文艺职业学院</option>
        
            <option value="3102" >广东新安职业技术学院</option>
        
            <option value="3103" >广东行政职业学院</option>
        
            <option value="3104" >广东亚视演艺职业学院</option>
        
            <option value="3105" >广东邮电职业技术学院</option>
        
            <option value="3106" >广州城市职业学院</option>
        
            <option value="3107" >广州大学华软软件学院</option>
        
            <option value="3108" >广州大学市政技术学院</option>
        
            <option value="3109" >广州大学松田学院</option>
        
            <option value="3110" >广州工程技术职业学院</option>
        
            <option value="3111" >广州工商职业技术学院</option>
        
            <option value="3112" >广州航海高等专科学校</option>
        
            <option value="3113" >广州华立科技职业学院</option>
        
            <option value="3114" >广州华南商贸职业学院</option>
        
            <option value="3115" >广州康大职业技术学院</option>
        
            <option value="3116" >广州科技贸易职业学院</option>
        
            <option value="3117" >广州科技职业技术学院</option>
        
            <option value="3118" >广州民航职业技术学院</option>
        
            <option value="3119" >广州南洋理工职业学院</option>
        
            <option value="3120" >广州涉外经济职业技术学院</option>
        
            <option value="3121" >广州体育职业技术学院</option>
        
            <option value="3122" >广州铁路职业技术学院</option>
        
            <option value="3123" >广州现代信息工程职业技术学院</option>
        
            <option value="3124" >河源职业技术学院</option>
        
            <option value="3125" >华澳国际会计学院</option>
        
            <option value="3126" >华南农业大学珠江学院</option>
        
            <option value="3127" >华南师范大学增城学院</option>
        
            <option value="3128" >惠州经济职业技术学院</option>
        
            <option value="3129" >吉林大学珠海学院</option>
        
            <option value="3130" >江门职业技术学院</option>
        
            <option value="3131" >揭阳职业技术学院</option>
        
            <option value="3132" >罗定职业技术学院</option>
        
            <option value="3133" >茂名职业技术学院</option>
        
            <option value="3134" >南华工商学院</option>
        
            <option value="3135" >南海东软信息技术学院</option>
        
            <option value="3136" >清远职业技术学院</option>
        
            <option value="3137" >汕头职业技术学院</option>
        
            <option value="3138" >汕尾职业技术学院</option>
        
            <option value="3139" >深圳信息职业技术学院</option>
        
            <option value="3140" >深圳振西科技学院</option>
        
            <option value="3141" >深圳职业技术学院</option>
        
            <option value="3142" >顺德职业技术学院</option>
        
            <option value="3143" >私立华联学院</option>
        
            <option value="3144" >阳江职业技术学院</option>
        
            <option value="3145" >湛江技师学院</option>
        
            <option value="3146" >湛师基础教育学院</option>
        
            <option value="3147" >肇庆工商职业技术学院</option>
        
            <option value="3148" >肇庆科技职业技术学院</option>
        
            <option value="3149" >肇庆医学高等专科学校</option>
        
            <option value="3150" >中山火炬职业技术学院</option>
        
            <option value="3151" >珠海城市职业技术学院</option>
        
            <option value="3152" >珠海艺术职业学院</option>
        
            <option value="3153" >遵义医学院珠海校区</option>
        
            <option value="3154" >广东技术师范学院天河分校</option>
        
            <option value="3155" >广东科学技术职业学院国防工大</option>
        
            <option value="3156" >茂名广播电视大学</option>
        
            <option value="3157" >广东石油化工职业技术学校</option>
        
            <option value="3158" >中山大学新华学院</option>
        
            <option value="3159" >广东商学院华商学院</option>
        
            <option value="3160" >南开大学深圳金融工程学院</option>
        
            <option value="3161" >北京师范大学－香港浸会大学联合国际学院</option>
        
            <option value="3162" >广州金桥管理干部学院</option>
        
            <option value="3163" >华南师范大学南海校区</option>
        
            <option value="3164" >暨南大学深圳旅游学院</option>
        
            <option value="3165" >暨南大学珠海学院</option>
        
            <option value="3166" >潮汕职业技术学院</option>
        
            <option value="3167" >广东科贸职业学院</option>
        
            <option value="3168" >中山职业技术学院</option>
        
            <option value="3169" >广东省外语艺术职业学院</option>
        
            <option value="3170" >广东食品药品职业学院</option>
        
            <option value="3171" >广州城建职业学院</option>
        
            <option value="3172" >湛江现代科技职业学院</option>
        
            <option value="3173" >广州松田职业学院</option>
        
            <option value="3174" >广州珠江职业技术学院</option>
        
            <option value="3175" >广东新华教育学院</option>
        
            <option value="3176" >广东省广播电视大学</option>
        
            <option value="3177" >广东社会科学大学</option>
        
            <option value="3178" >广东青年管理干部学院</option>
        
            <option value="3179" >深圳市广播电视大学</option>
        
            <option value="3180" >广州市广播电视大学</option>
        
            <option value="3181" >韶关市职工大学</option>
        
            <option value="3182" >汕头市业余大学</option>
        
            <option value="3183" >广东省国防工业职工大学</option>
        
            <option value="3184" >南海成人学院</option>
        
            <option value="3185" >广东省电子商务技师学院</option>
        
            <option value="3186" >深圳信息学院</option>
        
            <option value="3187" >江门市广播电视大学</option>
        
            <option value="3188" >北京大学深圳研究生院</option>
        
            <option value="3189" >江门艺华旅游职业学院</option>
        
            <option value="3190" >汕头工艺美术学校</option>
        
            <option value="3191" >重庆工商大学</option>
        
            <option value="3193" >兰州理工大学</option>
    </div>
    <div id="dataMajor" style="display: none;">
        <option value="3">大专以下</option>
        <option value="4">大专</option>
        <option value="5">本科</option>
        <option value="6">硕士</option>
        <option value="7">博士</option>
    </div>
    <div id="dataTime" style="display:none;">
            <option value="1946">1946</option>
            <option value="1947">1947</option>
            <option value="1948">1948</option>
            <option value="1949">1949</option>
            <option value="1950">1950</option>
            <option value="1951">1951</option>
            <option value="1952">1952</option>
            <option value="1953">1953</option>
            <option value="1954">1954</option>
            <option value="1955">1955</option>
            <option value="1956">1956</option>
            <option value="1957">1957</option>
            <option value="1958">1958</option>
            <option value="1959">1959</option>
            <option value="1960">1960</option>
            <option value="1961">1961</option>
            <option value="1962">1962</option>
            <option value="1963">1963</option>
            <option value="1964">1964</option>
            <option value="1965">1965</option>
            <option value="1966">1966</option>
            <option value="1967">1967</option>
            <option value="1968">1968</option>
            <option value="1969">1969</option>
            <option value="1970">1970</option>
            <option value="1971">1971</option>
            <option value="1972">1972</option>
            <option value="1973">1973</option>
            <option value="1974">1974</option>
            <option value="1975">1975</option>
            <option value="1976">1976</option>
            <option value="1977">1977</option>
            <option value="1978">1978</option>
            <option value="1979">1979</option>
            <option value="1980">1980</option>
            <option value="1981">1981</option>
            <option value="1982">1982</option>
            <option value="1983">1983</option>
            <option value="1984">1984</option>
            <option value="1985">1985</option>
            <option value="1986">1986</option>
            <option value="1987">1987</option>
            <option value="1988">1988</option>
            <option value="1989">1989</option>
            <option value="1990">1990</option>
            <option value="1991">1991</option>
            <option value="1992">1992</option>
            <option value="1993">1993</option>
            <option value="1994">1994</option>
            <option value="1995">1995</option>
            <option value="1996">1996</option>
            <option value="1997">1997</option>
            <option value="1998">1998</option>
            <option value="1999">1999</option>
            <option value="2000">2000</option>
            <option value="2001">2001</option>
            <option value="2002">2002</option>
            <option value="2003">2003</option>
            <option value="2004">2004</option>
            <option value="2005">2005</option>
            <option value="2006">2006</option>
            <option value="2007">2007</option>
            <option value="2008">2008</option>
            <option value="2009">2009</option>
            <option value="2010">2010</option>
            <option value="2011">2011</option>
            <option value="2012">2012</option>
            <option value="2013">2013</option>
            <option value="2014" selected="selected">2014</option>
            <option value="2015">2015</option>
            <option value="2016">2016</option>
            <option value="2017">2017</option>
            <option value="2018">2018</option>
            <option value="2019">2019</option>
            <option value="2020">2020</option>
    </div>
    <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript" src="js/cropper.min.js"></script>
    <script type="text/javascript" src="js/txCropper.js"></script>
    <!-- 弹窗 -->
    <script type="text/javascript" src="js/bootstrap-modalmanager.js"></script>
    <script type="text/javascript" src="js/bootstrap-modal.js"></script>
    <!-- 学校自动补全 -->
    <script type="text/javascript" src="js/liquidmetal.js"></script>
    <script type="text/javascript" src="js/jquery.flexselect.js"></script>
    <!-- 招聘js -->
    <script type="text/javascript" src="js/recruit.js"></script>
</body>
</html>
<script>     
        $(function(){
            $("select.flexselect").flexselect({allowMismatch:true,picked:true});
            $($(".flexselect")[$(".flexselect").length-1]).attr({
                "placeholder":"请输入学校名称，如无结果请输入其它",
                "datatype":"*",
                "nullmsg":"请输入学校名称"
            }).val("");
        })       
        // 添加教育经历
        function addEdu(){
            var html = 
            '<div class="group-item">'+
                '<div class="line mar_bot48"></div>'+
                '<div class="form-row mar_bot30 clearfix">'+
                    '<label class="form-label wid356"><span class="reddot"></span>学校名称</label>'+
                    '<div class="form-input-warp">'+
                        '<input type="hidden" name="college" value="">'+
                        '<select name="college_id"  class="flexselect input-style input-size input-radius wid310"  id="college_id"  datatype="*" tabindex="1">'+
                            $('#dataCollege').html()+
                        '</select>'+
                    '</div>'+
                '</div>'+
                '<div class="form-row mar_bot30 clearfix">'+
                    '<label class="form-label wid356 "><span class="reddot"></span>专  业</label>'+
                    '<div class="form-input-warp">'+
                        '<input type="text" class="input-style input-size input-radius wid310" placeholder="请填写专业名称">'+
                    '</div>'+
                '</div>'+
                '<div class="form-row mar_bot30 clearfix">'+
                    '<label class="form-label wid356 "><span class="reddot"></span>学  历</label>'+
                    '<div class="form-input-warp">'+
                        '<span class="select-box input-radius wid182">'+
                            '<select class="select" id="diploma_id" name="diploma_id"  datatype="*" nullmsg="请选择学历！" >'+
                                $('#dataMajor').html()+
                            '</select>'+
                        '</span>'+
                    '</div>'+
                '</div>'+
                '<div class="form-row clearfix">'+
                    '<label class="form-label wid356 "><span class="reddot"></span>毕业年份</label>'+
                    '<div class="form-input-warp">'+
                        '<span class="select-box input-radius wid182">'+
                            '<select class="select" id="edu-year2" name="date2" data-pre="" datatype="*" nullmsg="">'+
                                $('#dataTime').html()+
                            '</select>'+
                        '</span>'+
                    '</div>'+
                '</div>'+ 
                '<a href="javascript:;" class="delete-item" onClick="delpost(this,\'10001\')">删除本条</a>'+            
            '</div>';                    
            var l = $('.groupEdu .group-item').length
            if(l < 3 ){
                $('.groupEdu .group-item-box').append(html);
                $("select.flexselect").flexselect({allowMismatch:true,picked:true});
                $($(".flexselect")[$(".flexselect").length-1]).attr({
                    "placeholder":"请输入学校名称，如无结果请输入其它",
                    "datatype":"*",
                    "nullmsg":"请输入学校名称"
                }).val(""); 
            }else{
                $.Huimodalalert('最多添加三个教育经历','2000');
            }
        }
        // confirm删除
        function delpost(obj,id){
            $.MsgBox.Confirm('','确定要删除？',function(){
                $(obj).parents(".group-item").remove();              
            });	
        }  
</script>
