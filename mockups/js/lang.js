/**
 * Created by Jacob on 4/14/2014.
 */
lang_dict= {};
lang_dict['ch'] = {
    "choose-task" : "选择任务>>",
    "upload-video" : "上传视频>>",
    "video-gallery" : "视频浏览>>",
    "monitor-workflow" : "监控工作流>>",
    "learn-more" : "了解更多>>",
    "rideo-studio-dashboard" : "睿度工作室",
    "nav-overview" : " 首页",
    "nav-management" : " 管理",
    "nav-upload-video" : " 上传视频",
    "nav-title-management" : " Title管理",
    "nav-video-management" : " 视频管理",
    "nav-gallery" : " 视频浏览",
    "nav-workflow" : " 工作流",
    "nav-logout" : "注销"
};

$.fn.changeLanguage = function(lang) {
    var key = this.attr('lang-key');
    if (key != null && key != undefined) {
        if(lang_dict[lang] != null && lang_dict[lang] != undefined) {
            this.text(lang_dict[lang][key]);
        }
    }
};

$(function(){
    $('*').each(function(){
        $(this).changeLanguage('ch');
    });
});