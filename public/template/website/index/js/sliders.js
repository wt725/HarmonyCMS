jQuery(function(a){if("undefined"==typeof wc_cart_fragments_params)return!1;try{$supports_html5_storage="sessionStorage"in window&&null!==window.sessionStorage,window.sessionStorage.setItem("wc","test"),window.sessionStorage.removeItem("wc")}catch(b){$supports_html5_storage=!1}if($fragment_refresh={url:wc_cart_fragments_params.ajax_url,type:"POST",data:{action:"woocommerce_get_refreshed_fragments"},success:function(b){b&&b.fragments&&(a.each(b.fragments,function(b,c){a(b).replaceWith(c)}),$supports_html5_storage&&(sessionStorage.setItem(wc_cart_fragments_params.fragment_name,JSON.stringify(b.fragments)),sessionStorage.setItem("wc_cart_hash",b.cart_hash)),a("body").trigger("wc_fragments_refreshed"))}},$supports_html5_storage){a("body").bind("added_to_cart",function(a,b,c){sessionStorage.setItem(wc_cart_fragments_params.fragment_name,JSON.stringify(b)),sessionStorage.setItem("wc_cart_hash",c)});try{var c=a.parseJSON(sessionStorage.getItem(wc_cart_fragments_params.fragment_name)),d=sessionStorage.getItem("wc_cart_hash"),e=a.cookie("woocommerce_cart_hash");if((null===d||void 0===d||""===d)&&(d=""),(null===e||void 0===e||""===e)&&(e=""),!c||!c["div.widget_shopping_cart_content"]||d!=e)throw"No fragment";a.each(c,function(b,c){a(b).replaceWith(c)}),a("body").trigger("wc_fragments_loaded")}catch(b){a.ajax($fragment_refresh)}}else a.ajax($fragment_refresh);a.cookie("woocommerce_items_in_cart")>0?a(".hide_cart_widget_if_empty").closest(".widget_shopping_cart").show():a(".hide_cart_widget_if_empty").closest(".widget_shopping_cart").hide(),a("body").bind("adding_to_cart",function(){a(".hide_cart_widget_if_empty").closest(".widget_shopping_cart").show()})});
;/*
 *      jQuery Superfish menu
 */
;(function($){$.fn.superfish=function(op){var sf=$.fn.superfish,c=sf.c,$arrow=$(['<span class="',c.arrowClass,'"> &#187;</span>'].join('')),over=function(){var $$=$(this),menu=getMenu($$);clearTimeout(menu.sfTimer);$$.showSuperfishUl().siblings().hideSuperfishUl();},out=function(){var $$=$(this),menu=getMenu($$),o=sf.op;clearTimeout(menu.sfTimer);menu.sfTimer=setTimeout(function(){o.retainPath=($.inArray($$[0],o.$path)>-1);$$.hideSuperfishUl();if(o.$path.length&&$$.parents(['li.',o.hoverClass].join('')).length<1){over.call(o.$path);}},o.delay);},getMenu=function($menu){var menu=$menu.parents(['ul.',c.menuClass,':first'].join(''))[0];sf.op=sf.o[menu.serial];return menu;},addArrow=function($a){$a.addClass(c.anchorClass).append($arrow.clone());};return this.each(function(){var s=this.serial=sf.o.length;var o=$.extend({},sf.defaults,op);o.$path=$('li.'+o.pathClass,this).slice(0,o.pathLevels).each(function(){$(this).addClass([o.hoverClass,c.bcClass].join(' ')).filter('li:has(ul)').removeClass(o.pathClass);});sf.o[s]=sf.op=o;$('li:has(ul)',this)[($.fn.hoverIntent&&!o.disableHI)?'hoverIntent':'hover'](over,out).each(function(){if(o.autoArrows)addArrow($('>a:first-child',this));}).not('.'+c.bcClass).hideSuperfishUl();var $a=$('a',this);$a.each(function(i){var $li=$a.eq(i).parents('li');$a.eq(i).focus(function(){over.call($li);}).blur(function(){out.call($li);});});o.onInit.call(this);}).each(function(){var menuClasses=[c.menuClass];if(sf.op.dropShadows&&!($.browser.msie&&$.browser.version<7))menuClasses.push(c.shadowClass);$(this).addClass(menuClasses.join(' '));});};var sf=$.fn.superfish;sf.o=[];sf.op={};sf.IE7fix=function(){var o=sf.op;if($.browser.msie&&$.browser.version>6&&o.dropShadows&&o.animation.opacity!=undefined)
this.toggleClass(sf.c.shadowClass+'-off');};sf.c={bcClass:'sf-breadcrumb',menuClass:'sf-js-enabled',anchorClass:'sf-with-ul',arrowClass:'sf-sub-indicator',shadowClass:'sf-shadow'};sf.defaults={hoverClass:'sfHover',pathClass:'overideThisToUse',pathLevels:1,delay:800,animation:{opacity:'show'},speed:'normal',autoArrows:true,dropShadows:true,disableHI:false,onInit:function(){},onBeforeShow:function(){},onShow:function(){},onHide:function(){}};$.fn.extend({hideSuperfishUl:function(){var o=sf.op,not=(o.retainPath===true)?o.$path:'';o.retainPath=false;var $ul=$(['li.',o.hoverClass].join(''),this).add(this).not(not).removeClass(o.hoverClass).find('>ul').hide().css('visibility','hidden');o.onHide.call($ul);return this;},showSuperfishUl:function(){var o=sf.op,sh=sf.c.shadowClass+'-off',$ul=this.addClass(o.hoverClass).find('>ul:hidden').css('visibility','visible');sf.IE7fix.call($ul);o.onBeforeShow.call($ul);$ul.animate(o.animation,o.speed,function(){sf.IE7fix.call($ul);o.onShow.call($ul);});return this;}});})(jQuery);


/*!
 *  FluidVids.js v2.1.0
 *  Responsive and fluid YouTube/Vimeo video embeds.
 *  Project: https://github.com/toddmotto/fluidvids
 *  by Todd Motto: http://toddmotto.com
 *
 *  Copyright 2013 Todd Motto. MIT licensed.
 */
window.Fluidvids=function(a,b){"use strict";var c,d,e=b.head||b.getElementsByTagName("head")[0],f=".fluidvids-elem{position:absolute;top:0px;left:0px;width:100%;height:100%;}.fluidvids{width:100%;position:relative;}",g=function(a){return c=new RegExp("^(https?:)?//(?:"+d.join("|")+").*$","i"),c.test(a)},h=function(a){var c=b.createElement("div"),d=a.parentNode,e=100*(parseInt(a.height?a.height:a.offsetHeight,10)/parseInt(a.width?a.width:a.offsetWidth,10));d.insertBefore(c,a),a.className+=" fluidvids-elem",c.className+=" fluidvids",c.style.paddingTop=e+"%",c.appendChild(a)},i=function(){var a=b.createElement("div");a.innerHTML="<p>x</p><style>"+f+"</style>",e.appendChild(a.childNodes[1])},j=function(a){var c=a||{},e=c.selector||"iframe";d=c.players||["www.youtube.com","player.vimeo.com"];for(var f=b.querySelectorAll(e),j=0;j<f.length;j++){var k=f[j];g(k.src)&&h(k)}i()};return{init:j}}(window,document);



/* ------------------------------------------------------------------------
Class: prettyPhoto
Use: Lightbox clone for jQuery
Author: Stephane Caron (http://www.no-margin-for-errors.com)
Version: 3.1.5
------------------------------------------------------------------------- */
(function(e){function t(){var e=location.href;hashtag=e.indexOf("#prettyPhoto")!==-1?decodeURI(e.substring(e.indexOf("#prettyPhoto")+1,e.length)):false;return hashtag}function n(){if(typeof theRel=="undefined")return;location.hash=theRel+"/"+rel_index+"/"}function r(){if(location.href.indexOf("#prettyPhoto")!==-1)location.hash="prettyPhoto"}function i(e,t){e=e.replace(/[\[]/,"\\[").replace(/[\]]/,"\\]");var n="[\\?&]"+e+"=([^&#]*)";var r=new RegExp(n);var i=r.exec(t);return i==null?"":i[1]}e.prettyPhoto={version:"3.1.5"};e.fn.prettyPhoto=function(s){function g(){e(".pp_loaderIcon").hide();projectedTop=scroll_pos["scrollTop"]+(d/2-a["containerHeight"]/2);if(projectedTop<0)projectedTop=0;$ppt.fadeTo(settings.animation_speed,1);$pp_pic_holder.find(".pp_content").animate({height:a["contentHeight"],width:a["contentWidth"]},settings.animation_speed);$pp_pic_holder.animate({top:projectedTop,left:v/2-a["containerWidth"]/2<0?0:v/2-a["containerWidth"]/2,width:a["containerWidth"]},settings.animation_speed,function(){$pp_pic_holder.find(".pp_hoverContainer,#fullResImage").height(a["height"]).width(a["width"]);$pp_pic_holder.find(".pp_fade").fadeIn(settings.animation_speed);if(isSet&&S(pp_images[set_position])=="image"){$pp_pic_holder.find(".pp_hoverContainer").show()}else{$pp_pic_holder.find(".pp_hoverContainer").hide()}if(settings.allow_expand){if(a["resized"]){e("a.pp_expand,a.pp_contract").show()}else{e("a.pp_expand").hide()}}if(settings.autoplay_slideshow&&!m&&!f)e.prettyPhoto.startSlideshow();settings.changepicturecallback();f=true});C();s.ajaxcallback()}function y(t){$pp_pic_holder.find("#pp_full_res object,#pp_full_res embed").css("visibility","hidden");$pp_pic_holder.find(".pp_fade").fadeOut(settings.animation_speed,function(){e(".pp_loaderIcon").show();t()})}function b(t){t>1?e(".pp_nav").show():e(".pp_nav").hide()}function w(e,t){resized=false;E(e,t);imageWidth=e,imageHeight=t;if((p>v||h>d)&&doresize&&settings.allow_resize&&!u){resized=true,fitting=false;while(!fitting){if(p>v){imageWidth=v-200;imageHeight=t/e*imageWidth}else if(h>d){imageHeight=d-200;imageWidth=e/t*imageHeight}else{fitting=true}h=imageHeight,p=imageWidth}if(p>v||h>d){w(p,h)}E(imageWidth,imageHeight)}return{width:Math.floor(imageWidth),height:Math.floor(imageHeight),containerHeight:Math.floor(h),containerWidth:Math.floor(p)+settings.horizontal_padding*2,contentHeight:Math.floor(l),contentWidth:Math.floor(c),resized:resized}}function E(t,n){t=parseFloat(t);n=parseFloat(n);$pp_details=$pp_pic_holder.find(".pp_details");$pp_details.width(t);detailsHeight=parseFloat($pp_details.css("marginTop"))+parseFloat($pp_details.css("marginBottom"));$pp_details=$pp_details.clone().addClass(settings.theme).width(t).appendTo(e("body")).css({position:"absolute",top:-1e4});detailsHeight+=$pp_details.height();detailsHeight=detailsHeight<=34?36:detailsHeight;$pp_details.remove();$pp_title=$pp_pic_holder.find(".ppt");$pp_title.width(t);titleHeight=parseFloat($pp_title.css("marginTop"))+parseFloat($pp_title.css("marginBottom"));$pp_title=$pp_title.clone().appendTo(e("body")).css({position:"absolute",top:-1e4});titleHeight+=$pp_title.height();$pp_title.remove();l=n+detailsHeight;c=t;h=l+titleHeight+$pp_pic_holder.find(".pp_top").height()+$pp_pic_holder.find(".pp_bottom").height();p=t}function S(e){if(e.match(/youtube\.com\/watch/i)||e.match(/youtu\.be/i)){return"youtube"}else if(e.match(/vimeo\.com/i)){return"vimeo"}else if(e.match(/\b.mov\b/i)){return"quicktime"}else if(e.match(/\b.swf\b/i)){return"flash"}else if(e.match(/\biframe=true\b/i)){return"iframe"}else if(e.match(/\bajax=true\b/i)){return"ajax"}else if(e.match(/\bcustom=true\b/i)){return"custom"}else if(e.substr(0,1)=="#"){return"inline"}else{return"image"}}function x(){if(doresize&&typeof $pp_pic_holder!="undefined"){scroll_pos=T();contentHeight=$pp_pic_holder.height(),contentwidth=$pp_pic_holder.width();projectedTop=d/2+scroll_pos["scrollTop"]-contentHeight/2;if(projectedTop<0)projectedTop=0;if(contentHeight>d)return;$pp_pic_holder.css({top:projectedTop,left:v/2+scroll_pos["scrollLeft"]-contentwidth/2})}}function T(){if(self.pageYOffset){return{scrollTop:self.pageYOffset,scrollLeft:self.pageXOffset}}else if(document.documentElement&&document.documentElement.scrollTop){return{scrollTop:document.documentElement.scrollTop,scrollLeft:document.documentElement.scrollLeft}}else if(document.body){return{scrollTop:document.body.scrollTop,scrollLeft:document.body.scrollLeft}}}function N(){d=e(window).height(),v=e(window).width();if(typeof $pp_overlay!="undefined")$pp_overlay.height(e(document).height()).width(v)}function C(){if(isSet&&settings.overlay_gallery&&S(pp_images[set_position])=="image"){itemWidth=52+5;navWidth=settings.theme=="facebook"||settings.theme=="pp_default"?50:30;itemsPerPage=Math.floor((a["containerWidth"]-100-navWidth)/itemWidth);itemsPerPage=itemsPerPage<pp_images.length?itemsPerPage:pp_images.length;totalPage=Math.ceil(pp_images.length/itemsPerPage)-1;if(totalPage==0){navWidth=0;$pp_gallery.find(".pp_arrow_next,.pp_arrow_previous").hide()}else{$pp_gallery.find(".pp_arrow_next,.pp_arrow_previous").show()}galleryWidth=itemsPerPage*itemWidth;fullGalleryWidth=pp_images.length*itemWidth;$pp_gallery.css("margin-left",-(galleryWidth/2+navWidth/2)).find("div:first").width(galleryWidth+5).find("ul").width(fullGalleryWidth).find("li.selected").removeClass("selected");goToPage=Math.floor(set_position/itemsPerPage)<totalPage?Math.floor(set_position/itemsPerPage):totalPage;e.prettyPhoto.changeGalleryPage(goToPage);$pp_gallery_li.filter(":eq("+set_position+")").addClass("selected")}else{$pp_pic_holder.find(".pp_content").unbind("mouseenter mouseleave")}}function k(t){if(settings.social_tools)facebook_like_link=settings.social_tools.replace("{location_href}",encodeURIComponent(location.href));settings.markup=settings.markup.replace("{pp_social}","");e("body").append(settings.markup);$pp_pic_holder=e(".pp_pic_holder"),$ppt=e(".ppt"),$pp_overlay=e("div.pp_overlay");if(isSet&&settings.overlay_gallery){currentGalleryPage=0;toInject="";for(var n=0;n<pp_images.length;n++){if(!pp_images[n].match(/\b(jpg|jpeg|png|gif)\b/gi)){classname="default";img_src=""}else{classname="";img_src=pp_images[n]}toInject+="<li class='"+classname+"'><a href='#'><img src='"+img_src+"' width='50' alt='' /></a></li>"}toInject=settings.gallery_markup.replace(/{gallery}/g,toInject);$pp_pic_holder.find("#pp_full_res").after(toInject);$pp_gallery=e(".pp_pic_holder .pp_gallery"),$pp_gallery_li=$pp_gallery.find("li");$pp_gallery.find(".pp_arrow_next").click(function(){e.prettyPhoto.changeGalleryPage("next");e.prettyPhoto.stopSlideshow();return false});$pp_gallery.find(".pp_arrow_previous").click(function(){e.prettyPhoto.changeGalleryPage("previous");e.prettyPhoto.stopSlideshow();return false});$pp_pic_holder.find(".pp_content").hover(function(){$pp_pic_holder.find(".pp_gallery:not(.disabled)").fadeIn()},function(){$pp_pic_holder.find(".pp_gallery:not(.disabled)").fadeOut()});itemWidth=52+5;$pp_gallery_li.each(function(t){e(this).find("a").click(function(){e.prettyPhoto.changePage(t);e.prettyPhoto.stopSlideshow();return false})})}if(settings.slideshow){$pp_pic_holder.find(".pp_nav").prepend('<a href="#" class="pp_play">Play</a>');$pp_pic_holder.find(".pp_nav .pp_play").click(function(){e.prettyPhoto.startSlideshow();return false})}$pp_pic_holder.attr("class","pp_pic_holder "+settings.theme);$pp_overlay.css({opacity:0,height:e(document).height(),width:e(window).width()}).bind("click",function(){if(!settings.modal)e.prettyPhoto.close()});e("a.pp_close").bind("click",function(){e.prettyPhoto.close();return false});if(settings.allow_expand){e("a.pp_expand").bind("click",function(t){if(e(this).hasClass("pp_expand")){e(this).removeClass("pp_expand").addClass("pp_contract");doresize=false}else{e(this).removeClass("pp_contract").addClass("pp_expand");doresize=true}y(function(){e.prettyPhoto.open()});return false})}$pp_pic_holder.find(".pp_previous, .pp_nav .pp_arrow_previous").bind("click",function(){e.prettyPhoto.changePage("previous");e.prettyPhoto.stopSlideshow();return false});$pp_pic_holder.find(".pp_next, .pp_nav .pp_arrow_next").bind("click",function(){e.prettyPhoto.changePage("next");e.prettyPhoto.stopSlideshow();return false});x()}s=jQuery.extend({hook:"rel",animation_speed:"fast",ajaxcallback:function(){},slideshow:5e3,autoplay_slideshow:false,opacity:.8,show_title:true,allow_resize:true,allow_expand:true,default_width:500,default_height:344,counter_separator_label:"/",theme:"pp_default",horizontal_padding:20,hideflash:false,wmode:"opaque",autoplay:true,modal:false,deeplinking:true,overlay_gallery:true,overlay_gallery_max:30,keyboard_shortcuts:true,changepicturecallback:function(){},callback:function(){},ie6_fallback:true,markup:'<div class="pp_pic_holder"> 						<div class="ppt"> </div> 						<div class="pp_top"> 							<div class="pp_left"></div> 							<div class="pp_middle"></div> 							<div class="pp_right"></div> 						</div> 						<div class="pp_content_container"> 							<div class="pp_left"> 							<div class="pp_right"> 								<div class="pp_content"> 									<div class="pp_loaderIcon"></div> 									<div class="pp_fade"> 										<a href="#" class="pp_expand" title="Expand the image">Expand</a> 										<div class="pp_hoverContainer"> 											<a class="pp_next" href="#">next</a> 											<a class="pp_previous" href="#">previous</a> 										</div> 										<div id="pp_full_res"></div> 										<div class="pp_details"> 											<div class="pp_nav"> 												<a href="#" class="pp_arrow_previous">Previous</a> 												<p class="currentTextHolder">0/0</p> 												<a href="#" class="pp_arrow_next">Next</a> 											</div> 											<p class="pp_description"></p> 											<div class="pp_social">{pp_social}</div> 											<a class="pp_close" href="#">Close</a> 										</div> 									</div> 								</div> 							</div> 							</div> 						</div> 						<div class="pp_bottom"> 							<div class="pp_left"></div> 							<div class="pp_middle"></div> 							<div class="pp_right"></div> 						</div> 					</div> 					<div class="pp_overlay"></div>',gallery_markup:'<div class="pp_gallery"> 								<a href="#" class="pp_arrow_previous">Previous</a> 								<div> 									<ul> 										{gallery} 									</ul> 								</div> 								<a href="#" class="pp_arrow_next">Next</a> 							</div>',image_markup:'<img id="fullResImage" src="{path}" />',flash_markup:'<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="{width}" height="{height}"><param name="wmode" value="{wmode}" /><param name="allowfullscreen" value="true" /><param name="allowscriptaccess" value="always" /><param name="movie" value="{path}" /><embed src="{path}" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" width="{width}" height="{height}" wmode="{wmode}"></embed></object>',quicktime_markup:'<object classid="clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B" codebase="http://www.apple.com/qtactivex/qtplugin.cab" height="{height}" width="{width}"><param name="src" value="{path}"><param name="autoplay" value="{autoplay}"><param name="type" value="video/quicktime"><embed src="{path}" height="{height}" width="{width}" autoplay="{autoplay}" type="video/quicktime" pluginspage="http://www.apple.com/quicktime/download/"></embed></object>',iframe_markup:'<iframe src ="{path}" width="{width}" height="{height}" frameborder="no"></iframe>',inline_markup:'<div class="pp_inline">{content}</div>',custom_markup:"",social_tools:'<div class="twitter"><a href="http://twitter.com/share" class="twitter-share-button" data-count="none">Tweet</a><script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script></div><div class="facebook"><iframe src="//www.facebook.com/plugins/like.php?locale=en_US&href={location_href}&layout=button_count&show_faces=true&width=500&action=like&font&colorscheme=light&height=23" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:500px; height:23px;" allowTransparency="true"></iframe></div>'},s);var o=this,u=false,a,f,l,c,h,p,d=e(window).height(),v=e(window).width(),m;doresize=true,scroll_pos=T();e(window).unbind("resize.prettyphoto").bind("resize.prettyphoto",function(){x();N()});if(s.keyboard_shortcuts){e(document).unbind("keydown.prettyphoto").bind("keydown.prettyphoto",function(t){if(typeof $pp_pic_holder!="undefined"){if($pp_pic_holder.is(":visible")){switch(t.keyCode){case 37:e.prettyPhoto.changePage("previous");t.preventDefault();break;case 39:e.prettyPhoto.changePage("next");t.preventDefault();break;case 27:if(!settings.modal)e.prettyPhoto.close();t.preventDefault();break}}}})}e.prettyPhoto.initialize=function(){settings=s;if(settings.theme=="pp_default")settings.horizontal_padding=16;theRel=e(this).attr(settings.hook);galleryRegExp=/\[(?:.*)\]/;isSet=galleryRegExp.exec(theRel)?true:false;pp_images=isSet?jQuery.map(o,function(t,n){if(e(t).attr(settings.hook).indexOf(theRel)!=-1)return e(t).attr("href")}):e.makeArray(e(this).attr("href"));pp_titles=isSet?jQuery.map(o,function(t,n){if(e(t).attr(settings.hook).indexOf(theRel)!=-1)return e(t).find("img").attr("alt")?e(t).find("img").attr("alt"):""}):e.makeArray(e(this).find("img").attr("alt"));pp_descriptions=isSet?jQuery.map(o,function(t,n){if(e(t).attr(settings.hook).indexOf(theRel)!=-1)return e(t).attr("title")?e(t).attr("title"):""}):e.makeArray(e(this).attr("title"));if(pp_images.length>settings.overlay_gallery_max)settings.overlay_gallery=false;set_position=jQuery.inArray(e(this).attr("href"),pp_images);rel_index=isSet?set_position:e("a["+settings.hook+"^='"+theRel+"']").index(e(this));k(this);if(settings.allow_resize)e(window).bind("scroll.prettyphoto",function(){x()});e.prettyPhoto.open();return false};e.prettyPhoto.open=function(t){if(typeof settings=="undefined"){settings=s;pp_images=e.makeArray(arguments[0]);pp_titles=arguments[1]?e.makeArray(arguments[1]):e.makeArray("");pp_descriptions=arguments[2]?e.makeArray(arguments[2]):e.makeArray("");isSet=pp_images.length>1?true:false;set_position=arguments[3]?arguments[3]:0;k(t.target)}if(settings.hideflash)e("object,embed,iframe[src*=youtube],iframe[src*=vimeo]").css("visibility","hidden");b(e(pp_images).size());e(".pp_loaderIcon").show();if(settings.deeplinking)n();if(settings.social_tools){facebook_like_link=settings.social_tools.replace("{location_href}",encodeURIComponent(location.href));$pp_pic_holder.find(".pp_social").html(facebook_like_link)}if($ppt.is(":hidden"))$ppt.css("opacity",0).show();$pp_overlay.show().fadeTo(settings.animation_speed,settings.opacity);$pp_pic_holder.find(".currentTextHolder").text(set_position+1+settings.counter_separator_label+e(pp_images).size());if(typeof pp_descriptions[set_position]!="undefined"&&pp_descriptions[set_position]!=""){$pp_pic_holder.find(".pp_description").show().html(unescape(pp_descriptions[set_position]))}else{$pp_pic_holder.find(".pp_description").hide()}movie_width=parseFloat(i("width",pp_images[set_position]))?i("width",pp_images[set_position]):settings.default_width.toString();movie_height=parseFloat(i("height",pp_images[set_position]))?i("height",pp_images[set_position]):settings.default_height.toString();u=false;if(movie_height.indexOf("%")!=-1){movie_height=parseFloat(e(window).height()*parseFloat(movie_height)/100-150);u=true}if(movie_width.indexOf("%")!=-1){movie_width=parseFloat(e(window).width()*parseFloat(movie_width)/100-150);u=true}$pp_pic_holder.fadeIn(function(){settings.show_title&&pp_titles[set_position]!=""&&typeof pp_titles[set_position]!="undefined"?$ppt.html(unescape(pp_titles[set_position])):$ppt.html(" ");imgPreloader="";skipInjection=false;switch(S(pp_images[set_position])){case"image":imgPreloader=new Image;nextImage=new Image;if(isSet&&set_position<e(pp_images).size()-1)nextImage.src=pp_images[set_position+1];prevImage=new Image;if(isSet&&pp_images[set_position-1])prevImage.src=pp_images[set_position-1];$pp_pic_holder.find("#pp_full_res")[0].innerHTML=settings.image_markup.replace(/{path}/g,pp_images[set_position]);imgPreloader.onload=function(){a=w(imgPreloader.width,imgPreloader.height);g()};imgPreloader.onerror=function(){alert("Image cannot be loaded. Make sure the path is correct and image exist.");e.prettyPhoto.close()};imgPreloader.src=pp_images[set_position];break;case"youtube":a=w(movie_width,movie_height);movie_id=i("v",pp_images[set_position]);if(movie_id==""){movie_id=pp_images[set_position].split("youtu.be/index.html");movie_id=movie_id[1];if(movie_id.indexOf("?")>0)movie_id=movie_id.substr(0,movie_id.indexOf("?"));if(movie_id.indexOf("&")>0)movie_id=movie_id.substr(0,movie_id.indexOf("&"))}movie="http://www.youtube.com/embed/"+movie_id;i("rel",pp_images[set_position])?movie+="?rel="+i("rel",pp_images[set_position]):movie+="?rel=1";if(settings.autoplay)movie+="&autoplay=1";toInject=settings.iframe_markup.replace(/{width}/g,a["width"]).replace(/{height}/g,a["height"]).replace(/{wmode}/g,settings.wmode).replace(/{path}/g,movie);break;case"vimeo":a=w(movie_width,movie_height);movie_id=pp_images[set_position];var t=/http(s?):\/\/(www\.)?vimeo.com\/(\d+)/;var n=movie_id.match(t);movie="http://player.vimeo.com/video/"+n[3]+"?title=0&byline=0&portrait=0";if(settings.autoplay)movie+="&autoplay=1;";vimeo_width=a["width"]+"/embed/?moog_width="+a["width"];toInject=settings.iframe_markup.replace(/{width}/g,vimeo_width).replace(/{height}/g,a["height"]).replace(/{path}/g,movie);break;case"quicktime":a=w(movie_width,movie_height);a["height"]+=15;a["contentHeight"]+=15;a["containerHeight"]+=15;toInject=settings.quicktime_markup.replace(/{width}/g,a["width"]).replace(/{height}/g,a["height"]).replace(/{wmode}/g,settings.wmode).replace(/{path}/g,pp_images[set_position]).replace(/{autoplay}/g,settings.autoplay);break;case"flash":a=w(movie_width,movie_height);flash_vars=pp_images[set_position];flash_vars=flash_vars.substring(pp_images[set_position].indexOf("flashvars")+10,pp_images[set_position].length);filename=pp_images[set_position];filename=filename.substring(0,filename.indexOf("?"));toInject=settings.flash_markup.replace(/{width}/g,a["width"]).replace(/{height}/g,a["height"]).replace(/{wmode}/g,settings.wmode).replace(/{path}/g,filename+"?"+flash_vars);break;case"iframe":a=w(movie_width,movie_height);frame_url=pp_images[set_position];frame_url=frame_url.substr(0,frame_url.indexOf("iframe")-1);toInject=settings.iframe_markup.replace(/{width}/g,a["width"]).replace(/{height}/g,a["height"]).replace(/{path}/g,frame_url);break;case"ajax":doresize=false;a=w(movie_width,movie_height);doresize=true;skipInjection=true;e.get(pp_images[set_position],function(e){toInject=settings.inline_markup.replace(/{content}/g,e);$pp_pic_holder.find("#pp_full_res")[0].innerHTML=toInject;g()});break;case"custom":a=w(movie_width,movie_height);toInject=settings.custom_markup;break;case"inline":myClone=e(pp_images[set_position]).clone().append('<br clear="all" />').css({width:settings.default_width}).wrapInner('<div id="pp_full_res"><div class="pp_inline"></div></div>').appendTo(e("body")).show();doresize=false;a=w(e(myClone).width(),e(myClone).height());doresize=true;e(myClone).remove();toInject=settings.inline_markup.replace(/{content}/g,e(pp_images[set_position]).html());break}if(!imgPreloader&&!skipInjection){$pp_pic_holder.find("#pp_full_res")[0].innerHTML=toInject;g()}});return false};e.prettyPhoto.changePage=function(t){currentGalleryPage=0;if(t=="previous"){set_position--;if(set_position<0)set_position=e(pp_images).size()-1}else if(t=="next"){set_position++;if(set_position>e(pp_images).size()-1)set_position=0}else{set_position=t}rel_index=set_position;if(!doresize)doresize=true;if(settings.allow_expand){e(".pp_contract").removeClass("pp_contract").addClass("pp_expand")}y(function(){e.prettyPhoto.open()})};e.prettyPhoto.changeGalleryPage=function(e){if(e=="next"){currentGalleryPage++;if(currentGalleryPage>totalPage)currentGalleryPage=0}else if(e=="previous"){currentGalleryPage--;if(currentGalleryPage<0)currentGalleryPage=totalPage}else{currentGalleryPage=e}slide_speed=e=="next"||e=="previous"?settings.animation_speed:0;slide_to=currentGalleryPage*itemsPerPage*itemWidth;$pp_gallery.find("ul").animate({left:-slide_to},slide_speed)};e.prettyPhoto.startSlideshow=function(){if(typeof m=="undefined"){$pp_pic_holder.find(".pp_play").unbind("click").removeClass("pp_play").addClass("pp_pause").click(function(){e.prettyPhoto.stopSlideshow();return false});m=setInterval(e.prettyPhoto.startSlideshow,settings.slideshow)}else{e.prettyPhoto.changePage("next")}};e.prettyPhoto.stopSlideshow=function(){$pp_pic_holder.find(".pp_pause").unbind("click").removeClass("pp_pause").addClass("pp_play").click(function(){e.prettyPhoto.startSlideshow();return false});clearInterval(m);m=undefined};e.prettyPhoto.close=function(){if($pp_overlay.is(":animated"))return;e.prettyPhoto.stopSlideshow();$pp_pic_holder.stop().find("object,embed").css("visibility","hidden");e("div.pp_pic_holder,div.ppt,.pp_fade").fadeOut(settings.animation_speed,function(){e(this).remove()});$pp_overlay.fadeOut(settings.animation_speed,function(){if(settings.hideflash)e("object,embed,iframe[src*=youtube],iframe[src*=vimeo]").css("visibility","visible");e(this).remove();e(window).unbind("scroll.prettyphoto");r();settings.callback();doresize=true;f=false;delete settings})};if(!pp_alreadyInitialized&&t()){pp_alreadyInitialized=true;hashIndex=t();hashRel=hashIndex;hashIndex=hashIndex.substring(hashIndex.indexOf("http://themes.themewaves.com/")+1,hashIndex.length-1);hashRel=hashRel.substring(0,hashRel.indexOf("http://themes.themewaves.com/"));setTimeout(function(){e("a["+s.hook+"^='"+hashRel+"']:eq("+hashIndex+")").trigger("click")},50)}return this.unbind("click.prettyphoto").bind("click.prettyphoto",e.prettyPhoto.initialize)};})(jQuery);var pp_alreadyInitialized=false;


// Generated by CoffeeScript 1.4.0
/*
jQuery Waypoints - v2.0.2
Copyright (c) 2011-2013 Caleb Troughton
Dual licensed under the MIT license and GPL license.
https://github.com/imakewebthings/jquery-waypoints/blob/master/licenses.txt
*/
(function(){var t=[].indexOf||function(t){for(var e=0,n=this.length;e<n;e++){if(e in this&&this[e]===t)return e}return-1},e=[].slice;(function(t,e){if(typeof define==="function"&&define.amd){return define("waypoints",["jquery"],function(n){return e(n,t)})}else{return e(t.jQuery,t)}})(this,function(n,r){var i,o,l,s,f,u,a,c,h,d,p,y,v,w,g,m;i=n(r);c=t.call(r,"ontouchstart")>=0;s={horizontal:{},vertical:{}};f=1;a={};u="waypoints-context-id";p="resize.waypoints";y="scroll.waypoints";v=1;w="waypoints-waypoint-ids";g="waypoint";m="waypoints";o=function(){function t(t){var e=this;this.$element=t;this.element=t[0];this.didResize=false;this.didScroll=false;this.id="context"+f++;this.oldScroll={x:t.scrollLeft(),y:t.scrollTop()};this.waypoints={horizontal:{},vertical:{}};t.data(u,this.id);a[this.id]=this;t.bind(y,function(){var t;if(!(e.didScroll||c)){e.didScroll=true;t=function(){e.doScroll();return e.didScroll=false};return r.setTimeout(t,n[m].settings.scrollThrottle)}});t.bind(p,function(){var t;if(!e.didResize){e.didResize=true;t=function(){n[m]("refresh");return e.didResize=false};return r.setTimeout(t,n[m].settings.resizeThrottle)}})}t.prototype.doScroll=function(){var t,e=this;t={horizontal:{newScroll:this.$element.scrollLeft(),oldScroll:this.oldScroll.x,forward:"right",backward:"left"},vertical:{newScroll:this.$element.scrollTop(),oldScroll:this.oldScroll.y,forward:"down",backward:"up"}};if(c&&(!t.vertical.oldScroll||!t.vertical.newScroll)){n[m]("refresh")}n.each(t,function(t,r){var i,o,l;l=[];o=r.newScroll>r.oldScroll;i=o?r.forward:r.backward;n.each(e.waypoints[t],function(t,e){var n,i;if(r.oldScroll<(n=e.offset)&&n<=r.newScroll){return l.push(e)}else if(r.newScroll<(i=e.offset)&&i<=r.oldScroll){return l.push(e)}});l.sort(function(t,e){return t.offset-e.offset});if(!o){l.reverse()}return n.each(l,function(t,e){if(e.options.continuous||t===l.length-1){return e.trigger([i])}})});return this.oldScroll={x:t.horizontal.newScroll,y:t.vertical.newScroll}};t.prototype.refresh=function(){var t,e,r,i=this;r=n.isWindow(this.element);e=this.$element.offset();this.doScroll();t={horizontal:{contextOffset:r?0:e.left,contextScroll:r?0:this.oldScroll.x,contextDimension:this.$element.width(),oldScroll:this.oldScroll.x,forward:"right",backward:"left",offsetProp:"left"},vertical:{contextOffset:r?0:e.top,contextScroll:r?0:this.oldScroll.y,contextDimension:r?n[m]("viewportHeight"):this.$element.height(),oldScroll:this.oldScroll.y,forward:"down",backward:"up",offsetProp:"top"}};return n.each(t,function(t,e){return n.each(i.waypoints[t],function(t,r){var i,o,l,s,f;i=r.options.offset;l=r.offset;o=n.isWindow(r.element)?0:r.$element.offset()[e.offsetProp];if(n.isFunction(i)){i=i.apply(r.element)}else if(typeof i==="string"){i=parseFloat(i);if(r.options.offset.indexOf("%")>-1){i=Math.ceil(e.contextDimension*i/100)}}r.offset=o-e.contextOffset+e.contextScroll-i;if(r.options.onlyOnScroll&&l!=null||!r.enabled){return}if(l!==null&&l<(s=e.oldScroll)&&s<=r.offset){return r.trigger([e.backward])}else if(l!==null&&l>(f=e.oldScroll)&&f>=r.offset){return r.trigger([e.forward])}else if(l===null&&e.oldScroll>=r.offset){return r.trigger([e.forward])}})})};t.prototype.checkEmpty=function(){if(n.isEmptyObject(this.waypoints.horizontal)&&n.isEmptyObject(this.waypoints.vertical)){this.$element.unbind([p,y].join(" "));return delete a[this.id]}};return t}();l=function(){function t(t,e,r){var i,o;r=n.extend({},n.fn[g].defaults,r);if(r.offset==="bottom-in-view"){r.offset=function(){var t;t=n[m]("viewportHeight");if(!n.isWindow(e.element)){t=e.$element.height()}return t-n(this).outerHeight()}}this.$element=t;this.element=t[0];this.axis=r.horizontal?"horizontal":"vertical";this.callback=r.handler;this.context=e;this.enabled=r.enabled;this.id="waypoints"+v++;this.offset=null;this.options=r;e.waypoints[this.axis][this.id]=this;s[this.axis][this.id]=this;i=(o=t.data(w))!=null?o:[];i.push(this.id);t.data(w,i)}t.prototype.trigger=function(t){if(!this.enabled){return}if(this.callback!=null){this.callback.apply(this.element,t)}if(this.options.triggerOnce){return this.destroy()}};t.prototype.disable=function(){return this.enabled=false};t.prototype.enable=function(){this.context.refresh();return this.enabled=true};t.prototype.destroy=function(){delete s[this.axis][this.id];delete this.context.waypoints[this.axis][this.id];return this.context.checkEmpty()};t.getWaypointsByElement=function(t){var e,r;r=n(t).data(w);if(!r){return[]}e=n.extend({},s.horizontal,s.vertical);return n.map(r,function(t){return e[t]})};return t}();d={init:function(t,e){var r;if(e==null){e={}}if((r=e.handler)==null){e.handler=t}this.each(function(){var t,r,i,s;t=n(this);i=(s=e.context)!=null?s:n.fn[g].defaults.context;if(!n.isWindow(i)){i=t.closest(i)}i=n(i);r=a[i.data(u)];if(!r){r=new o(i)}return new l(t,r,e)});n[m]("refresh");return this},disable:function(){return d._invoke(this,"disable")},enable:function(){return d._invoke(this,"enable")},destroy:function(){return d._invoke(this,"destroy")},prev:function(t,e){return d._traverse.call(this,t,e,function(t,e,n){if(e>0){return t.push(n[e-1])}})},next:function(t,e){return d._traverse.call(this,t,e,function(t,e,n){if(e<n.length-1){return t.push(n[e+1])}})},_traverse:function(t,e,i){var o,l;if(t==null){t="vertical"}if(e==null){e=r}l=h.aggregate(e);o=[];this.each(function(){var e;e=n.inArray(this,l[t]);return i(o,e,l[t])});return this.pushStack(o)},_invoke:function(t,e){t.each(function(){var t;t=l.getWaypointsByElement(this);return n.each(t,function(t,n){n[e]();return true})});return this}};n.fn[g]=function(){var t,r;r=arguments[0],t=2<=arguments.length?e.call(arguments,1):[];if(d[r]){return d[r].apply(this,t)}else if(n.isFunction(r)){return d.init.apply(this,arguments)}else if(n.isPlainObject(r)){return d.init.apply(this,[null,r])}else if(!r){return n.error("jQuery Waypoints needs a callback function or handler option.")}else{return n.error("The "+r+" method does not exist in jQuery Waypoints.")}};n.fn[g].defaults={context:r,continuous:true,enabled:true,horizontal:false,offset:0,triggerOnce:false};h={refresh:function(){return n.each(a,function(t,e){return e.refresh()})},viewportHeight:function(){var t;return(t=r.innerHeight)!=null?t:i.height()},aggregate:function(t){var e,r,i;e=s;if(t){e=(i=a[n(t).data(u)])!=null?i.waypoints:void 0}if(!e){return[]}r={horizontal:[],vertical:[]};n.each(r,function(t,i){n.each(e[t],function(t,e){return i.push(e)});i.sort(function(t,e){return t.offset-e.offset});r[t]=n.map(i,function(t){return t.element});return r[t]=n.unique(r[t])});return r},above:function(t){if(t==null){t=r}return h._filter(t,"vertical",function(t,e){return e.offset<=t.oldScroll.y})},below:function(t){if(t==null){t=r}return h._filter(t,"vertical",function(t,e){return e.offset>t.oldScroll.y})},left:function(t){if(t==null){t=r}return h._filter(t,"horizontal",function(t,e){return e.offset<=t.oldScroll.x})},right:function(t){if(t==null){t=r}return h._filter(t,"horizontal",function(t,e){return e.offset>t.oldScroll.x})},enable:function(){return h._invoke("enable")},disable:function(){return h._invoke("disable")},destroy:function(){return h._invoke("destroy")},extendFn:function(t,e){return d[t]=e},_invoke:function(t){var e;e=n.extend({},s.vertical,s.horizontal);return n.each(e,function(e,n){n[t]();return true})},_filter:function(t,e,r){var i,o;i=a[n(t).data(u)];if(!i){return[]}o=[];n.each(i.waypoints[e],function(t,e){if(r(i,e)){return o.push(e)}});o.sort(function(t,e){return t.offset-e.offset});return n.map(o,function(t){return t.element})}};n[m]=function(){var t,n;n=arguments[0],t=2<=arguments.length?e.call(arguments,1):[];if(h[n]){return h[n].apply(null,t)}else{return h.aggregate.call(null,n)}};n[m].settings={resizeThrottle:100,scrollThrottle:30};return i.load(function(){return n[m]("refresh")})})}).call(this);


/*
 *  jQuery OwlCarousel v1.3.3
 *
 *  Copyright (c) 2013 Bartosz Wojciechowski
 *  http://www.owlgraphic.com/owlcarousel/
 *
 *  Licensed under MIT
 *
 */

/*JS Lint helpers: */
/*global dragMove: false, dragEnd: false, $, jQuery, alert, window, document */
/*jslint nomen: true, continue:true */
"function"!==typeof Object.create&&(Object.create=function(f){function g(){}g.prototype=f;return new g});
(function(f,g,k){var l={init:function(a,b){this.$elem=f(b);this.options=f.extend({},f.fn.owlCarousel.options,this.$elem.data(),a);this.userOptions=a;this.loadContent()},loadContent:function(){function a(a){var d,e="";if("function"===typeof b.options.jsonSuccess)b.options.jsonSuccess.apply(this,[a]);else{for(d in a.owl)a.owl.hasOwnProperty(d)&&(e+=a.owl[d].item);b.$elem.html(e)}b.logIn()}var b=this,e;"function"===typeof b.options.beforeInit&&b.options.beforeInit.apply(this,[b.$elem]);"string"===typeof b.options.jsonPath?
(e=b.options.jsonPath,f.getJSON(e,a)):b.logIn()},logIn:function(){this.$elem.data("owl-originalStyles",this.$elem.attr("style"));this.$elem.data("owl-originalClasses",this.$elem.attr("class"));this.$elem.css({opacity:0});this.orignalItems=this.options.items;this.checkBrowser();this.wrapperWidth=0;this.checkVisible=null;this.setVars()},setVars:function(){if(0===this.$elem.children().length)return!1;this.baseClass();this.eventTypes();this.$userItems=this.$elem.children();this.itemsAmount=this.$userItems.length;
this.wrapItems();this.$owlItems=this.$elem.find(".owl-item");this.$owlWrapper=this.$elem.find(".owl-wrapper");this.playDirection="next";this.prevItem=0;this.prevArr=[0];this.currentItem=0;this.customEvents();this.onStartup()},onStartup:function(){this.updateItems();this.calculateAll();this.buildControls();this.updateControls();this.response();this.moveEvents();this.stopOnHover();this.owlStatus();!1!==this.options.transitionStyle&&this.transitionTypes(this.options.transitionStyle);!0===this.options.autoPlay&&
(this.options.autoPlay=5E3);this.play();this.$elem.find(".owl-wrapper").css("display","block");this.$elem.is(":visible")?this.$elem.css("opacity",1):this.watchVisibility();this.onstartup=!1;this.eachMoveUpdate();"function"===typeof this.options.afterInit&&this.options.afterInit.apply(this,[this.$elem])},eachMoveUpdate:function(){!0===this.options.lazyLoad&&this.lazyLoad();!0===this.options.autoHeight&&this.autoHeight();this.onVisibleItems();"function"===typeof this.options.afterAction&&this.options.afterAction.apply(this,
[this.$elem])},updateVars:function(){"function"===typeof this.options.beforeUpdate&&this.options.beforeUpdate.apply(this,[this.$elem]);this.watchVisibility();this.updateItems();this.calculateAll();this.updatePosition();this.updateControls();this.eachMoveUpdate();"function"===typeof this.options.afterUpdate&&this.options.afterUpdate.apply(this,[this.$elem])},reload:function(){var a=this;g.setTimeout(function(){a.updateVars()},0)},watchVisibility:function(){var a=this;if(!1===a.$elem.is(":visible"))a.$elem.css({opacity:0}),
g.clearInterval(a.autoPlayInterval),g.clearInterval(a.checkVisible);else return!1;a.checkVisible=g.setInterval(function(){a.$elem.is(":visible")&&(a.reload(),a.$elem.animate({opacity:1},200),g.clearInterval(a.checkVisible))},500)},wrapItems:function(){this.$userItems.wrapAll('<div class="owl-wrapper">').wrap('<div class="owl-item"></div>');this.$elem.find(".owl-wrapper").wrap('<div class="owl-wrapper-outer">');this.wrapperOuter=this.$elem.find(".owl-wrapper-outer");this.$elem.css("display","block")},
baseClass:function(){var a=this.$elem.hasClass(this.options.baseClass),b=this.$elem.hasClass(this.options.theme);a||this.$elem.addClass(this.options.baseClass);b||this.$elem.addClass(this.options.theme)},updateItems:function(){var a,b;if(!1===this.options.responsive)return!1;if(!0===this.options.singleItem)return this.options.items=this.orignalItems=1,this.options.itemsCustom=!1,this.options.itemsDesktop=!1,this.options.itemsDesktopSmall=!1,this.options.itemsTablet=!1,this.options.itemsTabletSmall=
!1,this.options.itemsMobile=!1;a=f(this.options.responsiveBaseWidth).width();a>(this.options.itemsDesktop[0]||this.orignalItems)&&(this.options.items=this.orignalItems);if(!1!==this.options.itemsCustom)for(this.options.itemsCustom.sort(function(a,b){return a[0]-b[0]}),b=0;b<this.options.itemsCustom.length;b+=1)this.options.itemsCustom[b][0]<=a&&(this.options.items=this.options.itemsCustom[b][1]);else a<=this.options.itemsDesktop[0]&&!1!==this.options.itemsDesktop&&(this.options.items=this.options.itemsDesktop[1]),
a<=this.options.itemsDesktopSmall[0]&&!1!==this.options.itemsDesktopSmall&&(this.options.items=this.options.itemsDesktopSmall[1]),a<=this.options.itemsTablet[0]&&!1!==this.options.itemsTablet&&(this.options.items=this.options.itemsTablet[1]),a<=this.options.itemsTabletSmall[0]&&!1!==this.options.itemsTabletSmall&&(this.options.items=this.options.itemsTabletSmall[1]),a<=this.options.itemsMobile[0]&&!1!==this.options.itemsMobile&&(this.options.items=this.options.itemsMobile[1]);this.options.items>this.itemsAmount&&
!0===this.options.itemsScaleUp&&(this.options.items=this.itemsAmount)},response:function(){var a=this,b,e;if(!0!==a.options.responsive)return!1;e=f(g).width();a.resizer=function(){f(g).width()!==e&&(!1!==a.options.autoPlay&&g.clearInterval(a.autoPlayInterval),g.clearTimeout(b),b=g.setTimeout(function(){e=f(g).width();a.updateVars()},a.options.responsiveRefreshRate))};f(g).resize(a.resizer)},updatePosition:function(){this.jumpTo(this.currentItem);!1!==this.options.autoPlay&&this.checkAp()},appendItemsSizes:function(){var a=
this,b=0,e=a.itemsAmount-a.options.items;a.$owlItems.each(function(c){var d=f(this);d.css({width:a.itemWidth}).data("owl-item",Number(c));if(0===c%a.options.items||c===e)c>e||(b+=1);d.data("owl-roundPages",b)})},appendWrapperSizes:function(){this.$owlWrapper.css({width:this.$owlItems.length*this.itemWidth*2,left:0});this.appendItemsSizes()},calculateAll:function(){this.calculateWidth();this.appendWrapperSizes();this.loops();this.max()},calculateWidth:function(){this.itemWidth=Math.round(this.$elem.width()/
this.options.items)},max:function(){var a=-1*(this.itemsAmount*this.itemWidth-this.options.items*this.itemWidth);this.options.items>this.itemsAmount?this.maximumPixels=a=this.maximumItem=0:(this.maximumItem=this.itemsAmount-this.options.items,this.maximumPixels=a);return a},min:function(){return 0},loops:function(){var a=0,b=0,e,c;this.positionsInArray=[0];this.pagesInArray=[];for(e=0;e<this.itemsAmount;e+=1)b+=this.itemWidth,this.positionsInArray.push(-b),!0===this.options.scrollPerPage&&(c=f(this.$owlItems[e]),
c=c.data("owl-roundPages"),c!==a&&(this.pagesInArray[a]=this.positionsInArray[e],a=c))},buildControls:function(){if(!0===this.options.navigation||!0===this.options.pagination)this.owlControls=f('<div class="owl-controls"/>').toggleClass("clickable",!this.browser.isTouch).appendTo(this.$elem);!0===this.options.pagination&&this.buildPagination();!0===this.options.navigation&&this.buildButtons()},buildButtons:function(){var a=this,b=f('<div class="owl-buttons"/>');a.owlControls.append(b);a.buttonPrev=
f("<div/>",{"class":"owl-prev",html:a.options.navigationText[0]||""});a.buttonNext=f("<div/>",{"class":"owl-next",html:a.options.navigationText[1]||""});b.append(a.buttonPrev).append(a.buttonNext);b.on("touchstart.owlControls mousedown.owlControls",'div[class^="owl"]',function(a){a.preventDefault()});b.on("touchend.owlControls mouseup.owlControls",'div[class^="owl"]',function(b){b.preventDefault();f(this).hasClass("owl-next")?a.next():a.prev()})},buildPagination:function(){var a=this;a.paginationWrapper=
f('<div class="owl-pagination"/>');a.owlControls.append(a.paginationWrapper);a.paginationWrapper.on("touchend.owlControls mouseup.owlControls",".owl-page",function(b){b.preventDefault();Number(f(this).data("owl-page"))!==a.currentItem&&a.goTo(Number(f(this).data("owl-page")),!0)})},updatePagination:function(){var a,b,e,c,d,g;if(!1===this.options.pagination)return!1;this.paginationWrapper.html("");a=0;b=this.itemsAmount-this.itemsAmount%this.options.items;for(c=0;c<this.itemsAmount;c+=1)0===c%this.options.items&&
(a+=1,b===c&&(e=this.itemsAmount-this.options.items),d=f("<div/>",{"class":"owl-page"}),g=f("<span></span>",{text:!0===this.options.paginationNumbers?a:"","class":!0===this.options.paginationNumbers?"owl-numbers":""}),d.append(g),d.data("owl-page",b===c?e:c),d.data("owl-roundPages",a),this.paginationWrapper.append(d));this.checkPagination()},checkPagination:function(){var a=this;if(!1===a.options.pagination)return!1;a.paginationWrapper.find(".owl-page").each(function(){f(this).data("owl-roundPages")===
f(a.$owlItems[a.currentItem]).data("owl-roundPages")&&(a.paginationWrapper.find(".owl-page").removeClass("active"),f(this).addClass("active"))})},checkNavigation:function(){if(!1===this.options.navigation)return!1;!1===this.options.rewindNav&&(0===this.currentItem&&0===this.maximumItem?(this.buttonPrev.addClass("disabled"),this.buttonNext.addClass("disabled")):0===this.currentItem&&0!==this.maximumItem?(this.buttonPrev.addClass("disabled"),this.buttonNext.removeClass("disabled")):this.currentItem===
this.maximumItem?(this.buttonPrev.removeClass("disabled"),this.buttonNext.addClass("disabled")):0!==this.currentItem&&this.currentItem!==this.maximumItem&&(this.buttonPrev.removeClass("disabled"),this.buttonNext.removeClass("disabled")))},updateControls:function(){this.updatePagination();this.checkNavigation();this.owlControls&&(this.options.items>=this.itemsAmount?this.owlControls.hide():this.owlControls.show())},destroyControls:function(){this.owlControls&&this.owlControls.remove()},next:function(a){if(this.isTransition)return!1;
this.currentItem+=!0===this.options.scrollPerPage?this.options.items:1;if(this.currentItem>this.maximumItem+(!0===this.options.scrollPerPage?this.options.items-1:0))if(!0===this.options.rewindNav)this.currentItem=0,a="rewind";else return this.currentItem=this.maximumItem,!1;this.goTo(this.currentItem,a)},prev:function(a){if(this.isTransition)return!1;this.currentItem=!0===this.options.scrollPerPage&&0<this.currentItem&&this.currentItem<this.options.items?0:this.currentItem-(!0===this.options.scrollPerPage?
this.options.items:1);if(0>this.currentItem)if(!0===this.options.rewindNav)this.currentItem=this.maximumItem,a="rewind";else return this.currentItem=0,!1;this.goTo(this.currentItem,a)},goTo:function(a,b,e){var c=this;if(c.isTransition)return!1;"function"===typeof c.options.beforeMove&&c.options.beforeMove.apply(this,[c.$elem]);a>=c.maximumItem?a=c.maximumItem:0>=a&&(a=0);c.currentItem=c.owl.currentItem=a;if(!1!==c.options.transitionStyle&&"drag"!==e&&1===c.options.items&&!0===c.browser.support3d)return c.swapSpeed(0),
!0===c.browser.support3d?c.transition3d(c.positionsInArray[a]):c.css2slide(c.positionsInArray[a],1),c.afterGo(),c.singleItemTransition(),!1;a=c.positionsInArray[a];!0===c.browser.support3d?(c.isCss3Finish=!1,!0===b?(c.swapSpeed("paginationSpeed"),g.setTimeout(function(){c.isCss3Finish=!0},c.options.paginationSpeed)):"rewind"===b?(c.swapSpeed(c.options.rewindSpeed),g.setTimeout(function(){c.isCss3Finish=!0},c.options.rewindSpeed)):(c.swapSpeed("slideSpeed"),g.setTimeout(function(){c.isCss3Finish=!0},
c.options.slideSpeed)),c.transition3d(a)):!0===b?c.css2slide(a,c.options.paginationSpeed):"rewind"===b?c.css2slide(a,c.options.rewindSpeed):c.css2slide(a,c.options.slideSpeed);c.afterGo()},jumpTo:function(a){"function"===typeof this.options.beforeMove&&this.options.beforeMove.apply(this,[this.$elem]);a>=this.maximumItem||-1===a?a=this.maximumItem:0>=a&&(a=0);this.swapSpeed(0);!0===this.browser.support3d?this.transition3d(this.positionsInArray[a]):this.css2slide(this.positionsInArray[a],1);this.currentItem=
this.owl.currentItem=a;this.afterGo()},afterGo:function(){this.prevArr.push(this.currentItem);this.prevItem=this.owl.prevItem=this.prevArr[this.prevArr.length-2];this.prevArr.shift(0);this.prevItem!==this.currentItem&&(this.checkPagination(),this.checkNavigation(),this.eachMoveUpdate(),!1!==this.options.autoPlay&&this.checkAp());"function"===typeof this.options.afterMove&&this.prevItem!==this.currentItem&&this.options.afterMove.apply(this,[this.$elem])},stop:function(){this.apStatus="stop";g.clearInterval(this.autoPlayInterval)},
checkAp:function(){"stop"!==this.apStatus&&this.play()},play:function(){var a=this;a.apStatus="play";if(!1===a.options.autoPlay)return!1;g.clearInterval(a.autoPlayInterval);a.autoPlayInterval=g.setInterval(function(){a.next(!0)},a.options.autoPlay)},swapSpeed:function(a){"slideSpeed"===a?this.$owlWrapper.css(this.addCssSpeed(this.options.slideSpeed)):"paginationSpeed"===a?this.$owlWrapper.css(this.addCssSpeed(this.options.paginationSpeed)):"string"!==typeof a&&this.$owlWrapper.css(this.addCssSpeed(a))},
addCssSpeed:function(a){return{"-webkit-transition":"all "+a+"ms ease","-moz-transition":"all "+a+"ms ease","-o-transition":"all "+a+"ms ease",transition:"all "+a+"ms ease"}},removeTransition:function(){return{"-webkit-transition":"","-moz-transition":"","-o-transition":"",transition:""}},doTranslate:function(a){return{"-webkit-transform":"translate3d("+a+"px, 0px, 0px)","-moz-transform":"translate3d("+a+"px, 0px, 0px)","-o-transform":"translate3d("+a+"px, 0px, 0px)","-ms-transform":"translate3d("+
a+"px, 0px, 0px)",transform:"translate3d("+a+"px, 0px,0px)"}},transition3d:function(a){this.$owlWrapper.css(this.doTranslate(a))},css2move:function(a){this.$owlWrapper.css({left:a})},css2slide:function(a,b){var e=this;e.isCssFinish=!1;e.$owlWrapper.stop(!0,!0).animate({left:a},{duration:b||e.options.slideSpeed,complete:function(){e.isCssFinish=!0}})},checkBrowser:function(){var a=k.createElement("div");a.style.cssText="  -moz-transform:translate3d(0px, 0px, 0px); -ms-transform:translate3d(0px, 0px, 0px); -o-transform:translate3d(0px, 0px, 0px); -webkit-transform:translate3d(0px, 0px, 0px); transform:translate3d(0px, 0px, 0px)";
a=a.style.cssText.match(/translate3d\(0px, 0px, 0px\)/g);this.browser={support3d:null!==a&&1===a.length,isTouch:"ontouchstart"in g||g.navigator.msMaxTouchPoints}},moveEvents:function(){if(!1!==this.options.mouseDrag||!1!==this.options.touchDrag)this.gestures(),this.disabledEvents()},eventTypes:function(){var a=["s","e","x"];this.ev_types={};!0===this.options.mouseDrag&&!0===this.options.touchDrag?a=["touchstart.owl mousedown.owl","touchmove.owl mousemove.owl","touchend.owl touchcancel.owl mouseup.owl"]:
!1===this.options.mouseDrag&&!0===this.options.touchDrag?a=["touchstart.owl","touchmove.owl","touchend.owl touchcancel.owl"]:!0===this.options.mouseDrag&&!1===this.options.touchDrag&&(a=["mousedown.owl","mousemove.owl","mouseup.owl"]);this.ev_types.start=a[0];this.ev_types.move=a[1];this.ev_types.end=a[2]},disabledEvents:function(){this.$elem.on("dragstart.owl",function(a){a.preventDefault()});this.$elem.on("mousedown.disableTextSelect",function(a){return f(a.target).is("input, textarea, select, option")})},
gestures:function(){function a(a){if(void 0!==a.touches)return{x:a.touches[0].pageX,y:a.touches[0].pageY};if(void 0===a.touches){if(void 0!==a.pageX)return{x:a.pageX,y:a.pageY};if(void 0===a.pageX)return{x:a.clientX,y:a.clientY}}}function b(a){"on"===a?(f(k).on(d.ev_types.move,e),f(k).on(d.ev_types.end,c)):"off"===a&&(f(k).off(d.ev_types.move),f(k).off(d.ev_types.end))}function e(b){b=b.originalEvent||b||g.event;d.newPosX=a(b).x-h.offsetX;d.newPosY=a(b).y-h.offsetY;d.newRelativeX=d.newPosX-h.relativePos;
"function"===typeof d.options.startDragging&&!0!==h.dragging&&0!==d.newRelativeX&&(h.dragging=!0,d.options.startDragging.apply(d,[d.$elem]));(8<d.newRelativeX||-8>d.newRelativeX)&&!0===d.browser.isTouch&&(void 0!==b.preventDefault?b.preventDefault():b.returnValue=!1,h.sliding=!0);(10<d.newPosY||-10>d.newPosY)&&!1===h.sliding&&f(k).off("touchmove.owl");d.newPosX=Math.max(Math.min(d.newPosX,d.newRelativeX/5),d.maximumPixels+d.newRelativeX/5);!0===d.browser.support3d?d.transition3d(d.newPosX):d.css2move(d.newPosX)}
function c(a){a=a.originalEvent||a||g.event;var c;a.target=a.target||a.srcElement;h.dragging=!1;!0!==d.browser.isTouch&&d.$owlWrapper.removeClass("grabbing");d.dragDirection=0>d.newRelativeX?d.owl.dragDirection="left":d.owl.dragDirection="right";0!==d.newRelativeX&&(c=d.getNewPosition(),d.goTo(c,!1,"drag"),h.targetElement===a.target&&!0!==d.browser.isTouch&&(f(a.target).on("click.disable",function(a){a.stopImmediatePropagation();a.stopPropagation();a.preventDefault();f(a.target).off("click.disable")}),
a=f._data(a.target,"events").click,c=a.pop(),a.splice(0,0,c)));b("off")}var d=this,h={offsetX:0,offsetY:0,baseElWidth:0,relativePos:0,position:null,minSwipe:null,maxSwipe:null,sliding:null,dargging:null,targetElement:null};d.isCssFinish=!0;d.$elem.on(d.ev_types.start,".owl-wrapper",function(c){c=c.originalEvent||c||g.event;var e;if(3===c.which)return!1;if(!(d.itemsAmount<=d.options.items)){if(!1===d.isCssFinish&&!d.options.dragBeforeAnimFinish||!1===d.isCss3Finish&&!d.options.dragBeforeAnimFinish)return!1;
!1!==d.options.autoPlay&&g.clearInterval(d.autoPlayInterval);!0===d.browser.isTouch||d.$owlWrapper.hasClass("grabbing")||d.$owlWrapper.addClass("grabbing");d.newPosX=0;d.newRelativeX=0;f(this).css(d.removeTransition());e=f(this).position();h.relativePos=e.left;h.offsetX=a(c).x-e.left;h.offsetY=a(c).y-e.top;b("on");h.sliding=!1;h.targetElement=c.target||c.srcElement}})},getNewPosition:function(){var a=this.closestItem();a>this.maximumItem?a=this.currentItem=this.maximumItem:0<=this.newPosX&&(this.currentItem=
a=0);return a},closestItem:function(){var a=this,b=!0===a.options.scrollPerPage?a.pagesInArray:a.positionsInArray,e=a.newPosX,c=null;f.each(b,function(d,g){e-a.itemWidth/20>b[d+1]&&e-a.itemWidth/20<g&&"left"===a.moveDirection()?(c=g,a.currentItem=!0===a.options.scrollPerPage?f.inArray(c,a.positionsInArray):d):e+a.itemWidth/20<g&&e+a.itemWidth/20>(b[d+1]||b[d]-a.itemWidth)&&"right"===a.moveDirection()&&(!0===a.options.scrollPerPage?(c=b[d+1]||b[b.length-1],a.currentItem=f.inArray(c,a.positionsInArray)):
(c=b[d+1],a.currentItem=d+1))});return a.currentItem},moveDirection:function(){var a;0>this.newRelativeX?(a="right",this.playDirection="next"):(a="left",this.playDirection="prev");return a},customEvents:function(){var a=this;a.$elem.on("owl.next",function(){a.next()});a.$elem.on("owl.prev",function(){a.prev()});a.$elem.on("owl.play",function(b,e){a.options.autoPlay=e;a.play();a.hoverStatus="play"});a.$elem.on("owl.stop",function(){a.stop();a.hoverStatus="stop"});a.$elem.on("owl.goTo",function(b,e){a.goTo(e)});
a.$elem.on("owl.jumpTo",function(b,e){a.jumpTo(e)})},stopOnHover:function(){var a=this;!0===a.options.stopOnHover&&!0!==a.browser.isTouch&&!1!==a.options.autoPlay&&(a.$elem.on("mouseover",function(){a.stop()}),a.$elem.on("mouseout",function(){"stop"!==a.hoverStatus&&a.play()}))},lazyLoad:function(){var a,b,e,c,d;if(!1===this.options.lazyLoad)return!1;for(a=0;a<this.itemsAmount;a+=1)b=f(this.$owlItems[a]),"loaded"!==b.data("owl-loaded")&&(e=b.data("owl-item"),c=b.find(".lazyOwl"),"string"!==typeof c.data("src")?
b.data("owl-loaded","loaded"):(void 0===b.data("owl-loaded")&&(c.hide(),b.addClass("loading").data("owl-loaded","checked")),(d=!0===this.options.lazyFollow?e>=this.currentItem:!0)&&e<this.currentItem+this.options.items&&c.length&&this.lazyPreload(b,c)))},lazyPreload:function(a,b){function e(){a.data("owl-loaded","loaded").removeClass("loading");b.removeAttr("data-src");"fade"===d.options.lazyEffect?b.fadeIn(400):b.show();"function"===typeof d.options.afterLazyLoad&&d.options.afterLazyLoad.apply(this,
[d.$elem])}function c(){f+=1;d.completeImg(b.get(0))||!0===k?e():100>=f?g.setTimeout(c,100):e()}var d=this,f=0,k;"DIV"===b.prop("tagName")?(b.css("background-image","url("+b.data("src")+")"),k=!0):b[0].src=b.data("src");c()},autoHeight:function(){function a(){var a=f(e.$owlItems[e.currentItem]).height();e.wrapperOuter.css("height",a+"px");e.wrapperOuter.hasClass("autoHeight")||g.setTimeout(function(){e.wrapperOuter.addClass("autoHeight")},0)}function b(){d+=1;e.completeImg(c.get(0))?a():100>=d?g.setTimeout(b,
100):e.wrapperOuter.css("height","")}var e=this,c=f(e.$owlItems[e.currentItem]).find("img"),d;void 0!==c.get(0)?(d=0,b()):a()},completeImg:function(a){return!a.complete||"undefined"!==typeof a.naturalWidth&&0===a.naturalWidth?!1:!0},onVisibleItems:function(){var a;!0===this.options.addClassActive&&this.$owlItems.removeClass("active");this.visibleItems=[];for(a=this.currentItem;a<this.currentItem+this.options.items;a+=1)this.visibleItems.push(a),!0===this.options.addClassActive&&f(this.$owlItems[a]).addClass("active");
this.owl.visibleItems=this.visibleItems},transitionTypes:function(a){this.outClass="owl-"+a+"-out";this.inClass="owl-"+a+"-in"},singleItemTransition:function(){var a=this,b=a.outClass,e=a.inClass,c=a.$owlItems.eq(a.currentItem),d=a.$owlItems.eq(a.prevItem),f=Math.abs(a.positionsInArray[a.currentItem])+a.positionsInArray[a.prevItem],g=Math.abs(a.positionsInArray[a.currentItem])+a.itemWidth/2;a.isTransition=!0;a.$owlWrapper.addClass("owl-origin").css({"-webkit-transform-origin":g+"px","-moz-perspective-origin":g+
"px","perspective-origin":g+"px"});d.css({position:"relative",left:f+"px"}).addClass(b).on("webkitAnimationEnd oAnimationEnd MSAnimationEnd animationend",function(){a.endPrev=!0;d.off("webkitAnimationEnd oAnimationEnd MSAnimationEnd animationend");a.clearTransStyle(d,b)});c.addClass(e).on("webkitAnimationEnd oAnimationEnd MSAnimationEnd animationend",function(){a.endCurrent=!0;c.off("webkitAnimationEnd oAnimationEnd MSAnimationEnd animationend");a.clearTransStyle(c,e)})},clearTransStyle:function(a,
b){a.css({position:"",left:""}).removeClass(b);this.endPrev&&this.endCurrent&&(this.$owlWrapper.removeClass("owl-origin"),this.isTransition=this.endCurrent=this.endPrev=!1)},owlStatus:function(){this.owl={userOptions:this.userOptions,baseElement:this.$elem,userItems:this.$userItems,owlItems:this.$owlItems,currentItem:this.currentItem,prevItem:this.prevItem,visibleItems:this.visibleItems,isTouch:this.browser.isTouch,browser:this.browser,dragDirection:this.dragDirection}},clearEvents:function(){this.$elem.off(".owl owl mousedown.disableTextSelect");
f(k).off(".owl owl");f(g).off("resize",this.resizer)},unWrap:function(){0!==this.$elem.children().length&&(this.$owlWrapper.unwrap(),this.$userItems.unwrap().unwrap(),this.owlControls&&this.owlControls.remove());this.clearEvents();this.$elem.attr("style",this.$elem.data("owl-originalStyles")||"").attr("class",this.$elem.data("owl-originalClasses"))},destroy:function(){this.stop();g.clearInterval(this.checkVisible);this.unWrap();this.$elem.removeData()},reinit:function(a){a=f.extend({},this.userOptions,
a);this.unWrap();this.init(a,this.$elem)},addItem:function(a,b){var e;if(!a)return!1;if(0===this.$elem.children().length)return this.$elem.append(a),this.setVars(),!1;this.unWrap();e=void 0===b||-1===b?-1:b;e>=this.$userItems.length||-1===e?this.$userItems.eq(-1).after(a):this.$userItems.eq(e).before(a);this.setVars()},removeItem:function(a){if(0===this.$elem.children().length)return!1;a=void 0===a||-1===a?-1:a;this.unWrap();this.$userItems.eq(a).remove();this.setVars()}};f.fn.owlCarousel=function(a){return this.each(function(){if(!0===
f(this).data("owl-init"))return!1;f(this).data("owl-init",!0);var b=Object.create(l);b.init(a,this);f.data(this,"owlCarousel",b)})};f.fn.owlCarousel.options={items:5,itemsCustom:!1,itemsDesktop:[1199,4],itemsDesktopSmall:[979,3],itemsTablet:[768,2],itemsTabletSmall:!1,itemsMobile:[479,1],singleItem:!1,itemsScaleUp:!1,slideSpeed:200,paginationSpeed:800,rewindSpeed:1E3,autoPlay:!1,stopOnHover:!1,navigation:!1,navigationText:["prev","next"],rewindNav:!0,scrollPerPage:!1,pagination:!0,paginationNumbers:!1,
responsive:!0,responsiveRefreshRate:200,responsiveBaseWidth:g,baseClass:"owl-carousel",theme:"owl-theme",lazyLoad:!1,lazyFollow:!0,lazyEffect:"fade",autoHeight:!1,jsonPath:!1,jsonSuccess:!1,dragBeforeAnimFinish:!0,mouseDrag:!0,touchDrag:!0,addClassActive:!1,transitionStyle:!1,beforeUpdate:!1,afterUpdate:!1,beforeInit:!1,afterInit:!1,beforeMove:!1,afterMove:!1,afterAction:!1,startDragging:!1,afterLazyLoad:!1}})(jQuery,window,document);
                                                                        
                                                                        
/*
Plugin: jQuery Parallax
Version 1.1.3
Author: Ian Lunn
Twitter: @IanLunn
Author URL: http://www.ianlunn.co.uk/
Plugin URL: http://www.ianlunn.co.uk/plugins/jquery-parallax/

Dual licensed under the MIT and GPL licenses:
http://www.opensource.org/licenses/mit-license.php
http://www.gnu.org/licenses/gpl.html
*/

(function( $ ){
	var $window = $(window);
	var windowHeight = $window.height();

	$window.resize(function () {
		windowHeight = $window.height();
	});

	$.fn.parallax = function(xpos, speedFactor, outerHeight) {
		var $this = $(this);
		var getHeight;
		var firstTop;
		var paddingTop = 0;
		
		//get the starting position of each element to have parallax applied to it		
		$this.each(function(){
		    firstTop = $this.offset().top;
		});

		if (outerHeight) {
			getHeight = function(jqo) {
				return jqo.outerHeight(true);
			};
		} else {
			getHeight = function(jqo) {
				return jqo.height();
			};
		}
			
		// setup defaults if arguments aren't specified
		if (arguments.length < 1 || xpos === null) xpos = "50%";
		if (arguments.length < 2 || speedFactor === null) speedFactor = 0.1;
		if (arguments.length < 3 || outerHeight === null) outerHeight = true;
		
		// function to be called whenever the window is scrolled or resized
		function update(){
			var pos = $window.scrollTop();				

			$this.each(function(){
				var $element = $(this);
				var top = $element.offset().top;
				var height = getHeight($element);

				// Check if totally above or totally below viewport
				if (top + height < pos || top > pos + windowHeight) {
					return;
				}

				$this.css('backgroundPosition', xpos + " " + Math.round((firstTop - pos) * speedFactor) + "px");
			});
		}		

		$window.bind('scroll', update).resize(update);
		update();
	};
})(jQuery);
;// Resize
jQuery(window).resize(function() {
    "use strict";
    resizeFullElement();
    // Compare Sidebar Height
    var $wavesMain    = jQuery('.waves-main');
    var $wavesSidebar = jQuery('.waves-sidebar');
    $wavesSidebar.parent().css('height','');
    if(jQuery(window).width()>=975 && $wavesMain.height()<$wavesSidebar.height()){
        $wavesSidebar.parent().height($wavesSidebar.height());
    }
    // ThemeWaves Redraw
    jQuery('.tw-redraw').each(function() {
        var $curr = jQuery(this);
        if (!$curr.hasClass('not-drawed')) {
            $curr.trigger('tw-animate');
        }
    });
    // Media Resize
    resizeMediaElement();
//    // Header Background
//    jQuery('.waves-title').each(function() {
//        var $title=jQuery(this);
//        var $text=$title.children('h3');
//        var $bg=$title.children('.title-bg');
//        var $wi=$title.width()-$text.width()-twItemRL($text);
//        if($title.closest('.tw-element').hasClass('center')){
//            $wi=$wi/2;
//            if($title.children('.title-bg').length===1){
//                $title.prepend($bg.clone());
//            }
//            $title.children('.title-bg').width($wi-2);
//        }else{
//            $bg.width($wi-3);
//        }
//    });
    // Mega Menu Resize
    try{
        var $megaHeader    =jQuery('#header>.container>.header');
        var $megaHeaderLeft=0;
        var $megaHeaderWidth=0;
        jQuery('.waves-mega-menu').each(function(){
            var $currMega=jQuery(this);
            var $currMegaWidth=0;
            var $liW=0;
            var $rem=0;
            var $currMegaLeft=0;
            var $colCnt  =parseInt($currMega.data('col').replace('column-', ''), 10);
            
            
            if(jQuery('body').hasClass('theme-boxed')){
                $megaHeaderLeft=jQuery('#theme-layout').offset().left;
                $megaHeaderWidth=jQuery('#theme-layout').width();
            }else{
                $megaHeaderLeft =$megaHeader.closest('.container').offset().left+parseInt($megaHeader.closest('.container').css('padding-left').replace('px', ''), 10);
                $megaHeaderWidth=$megaHeader.closest('.container').width();
            }
            $currMega.css({'display':'block','opacity':'0'});
            jQuery('>li',$currMega).each(function(){if(jQuery(this).width()>$liW){$liW=jQuery(this).width();}}).promise().done(function(){
                $currMega.css('margin-left','0px').css('left','0px');
                $currMegaLeft=$currMega.offset().left;
                if($colCnt<=3){
                    $currMegaWidth=$liW*$colCnt;
                    $rem=($megaHeaderLeft+$megaHeaderWidth)-($currMegaLeft+$currMegaWidth);
                }else{
                    $currMegaWidth=$megaHeaderWidth;
                    $liW=$currMegaWidth/$colCnt;
                    $rem=$megaHeaderLeft-$currMegaLeft;
                }
                jQuery('>li',$currMega).width($liW);
                $currMega.width($currMegaWidth);
                
                if($rem<0){
                    $currMega.css('margin-left',$rem+'px');
                }else{
                    $currMega.css('margin-left','').css('left','');
                }
                
                $currMega.css({'display':'','opacity':'','visibility':''});
            });
        });
    }catch(err){}
    // bg video horizontal
    jQuery('.bg-video-container.bg-video-horizontal h2').each(function(){
        jQuery(this).css('margin-top','-'+parseInt((jQuery(this).height()/2),10)+'px');
    });
    //-------
    headerMTS();
});
jQuery(document).ready(function($) {
    // Animated Background Colors
    jQuery('.btn-border').hover(function(){
        var $currBtn  = jQuery(this);
        var $currSpan = $currBtn.children('span');
        var $currBtnW = $currBtn.width();
        $currBtnW += parseInt($currBtn.css('padding-left').replace('px',''),10)+parseInt($currBtn.css('padding-right').replace('px',''),10);
        var $h=$currBtnW*0.7;
        $currBtn .css('color',$currBtn.hasClass('white-button')?'#000000':'#ffffff');
        $currSpan.css('height',$h+'px').css('background-color',$currBtn.css('border-top-color'));
    },function(){
        var $currBtn=jQuery(this);
        var $currSpan = $currBtn.children('span');
        $currBtn .css('color',$currBtn.css('border-top-color'));
        $currSpan.css('height','0px');
    });
    $(".btn-flat").hover(
            function() {
                var $color = jQuery(this).css('background-color');
                $(this).css('color', $color);
            },
            function() {
                $(this).css('color', '#fff');
            }
    );
    $(".waves-heading i").each(function() {
        var $color = jQuery(this).closest('.row-container').css('background-color');
        if($color===''){
            $color='#ffffff';
        }
        try{
            if($color===''|| $color.replace(/ /gi,'')==='transparent'|| $color.replace(/ /gi,'')==='rgba(0,0,0,0)'){
                $color='#ffffff';
            }
        }catch(err){$color='#ffffff';}
        jQuery(this).css('background-color', $color);
    });
    // Animated Background Colors
    jQuery('.row-container.bg-animated').each(function(){
        var $currContainer=jQuery(this);
        var $currColors=$currContainer.data('bgcolors').split(',');
        if($currColors[0]!==''){
            var $i=1;
            var $length=$currColors.length ;
            setInterval(function(){
                if($i>=$length){$i=0;}
                $currContainer.css('background-color',$currColors[$i++]);
            },5000);
        }
    });
    // Divider
    jQuery('.tw-divider-space').closest('.tw-element').addClass('tw-divider-space-container');
    
    // Accordion And Toggle
    $('.waves-accordion,.waves-toggle').each(function() {
        var $currAccCont = $(this);
        $('>.accordion-group>.accordion-heading>.accordion-toggle', $currAccCont).live('click', function(e) {
            e.preventDefault();
            var $currGroup = $(this).closest('.accordion-group');
            if ($currGroup.hasClass('active') && !$currGroup.hasClass('closing')) {
                $currGroup.removeClass('active').addClass('closing').children('.accordion-body').stop().slideUp("fast", function() {
                    $currGroup.removeClass('closing');
                });
            } else {
                $currGroup.removeClass('closing');
                $currGroup.addClass('active').children('.accordion-body').css({'display': 'none'}).stop().slideDown("fast");
                if ($currAccCont.hasClass('waves-accordion')) {
                    $currGroup.siblings('.accordion-group.active').addClass('closing').removeClass('active').children('.accordion-body').stop().slideUp("fast", function() {
                        $currGroup.removeClass('closing');
                    });
                }
            }
        });
    });

    // Tab
    $('.waves-tab').each(function() {
        var $currTabCont=$(this);
        $currTabCont.find(">li").each(function($i) {
            $(this).appendTo($(this).closest('.waves-tab').find('ul.nav-tabs'));
            if ($i === 0) {
                $(this).addClass('active');
            }
        });
        $currTabCont.find(".tab-pane").each(function($in) {
            jQuery(this).appendTo(jQuery(this).closest('.waves-tab').find('div.tab-content'));
            if ($in === 0) {
                $(this).addClass('active');
            }else{
                $(this).css('display','none');
            }
        });
        $('>ul>li',$currTabCont).each(function($i){
            var $currLi  = $(this);
            var $currCon = $('>.tab-content>.tab-pane',$currTabCont).eq($i);
            $currLi.on('click', function(e) {e.preventDefault();
                if($currLi.not('.active')){
                    $currLi.addClass('active').siblings('.active').removeClass('active');
                    $currCon.siblings('.active').fadeOut().removeClass('active');
                    $currCon.addClass('active').fadeIn();
                }                
            });
        });
        $currTabCont.removeClass('tab-init');
    });
    
    // ThemeWaves Animate General - Init
    jQuery('.tw-animate-gen').each(function() {
        var $curr = jQuery(this);
        var $currChild = $curr.children().eq(-1);
        if ($currChild.attr('id') === 'sidebar' || $currChild.hasClass('tw-pricing') || $currChild.hasClass('tw-our-team') || $currChild.hasClass('tw-blog')) {
            $currChild.children().addClass('tw-animate-gen').attr('data-animation', $curr.attr('data-animation')).attr('data-animation-delay', $curr.attr('data-animation-delay')).attr('data-animation-offset', $curr.attr('data-animation-offset')).css('opacity', '0');
            $curr.removeClass('tw-animate-gen').attr('data-animation', '').attr('data-animation-delay', '').attr('ddata-animation-offset', '').css('opacity', '');
        }
        if ($currChild.hasClass('carousel-anim')) {
            $currChild.find('ul.waves-carousel>li').css('opacity', '0');
            $curr.css('opacity', '');
        }
    });
    jQuery(window).resize();
});
jQuery(window).load(function() {
    "use strict";
    //----------------------------Initial Functions-----------------------------------------------
    wavesReInit(jQuery('#theme-layout'));
    waves_carousel();
    jQuery('.waves-portfolio .overlay-container img').each(function(){
        if(!jQuery(this).closest('.waves-portfolio').hasClass('list_carousel')){
            twPortImgResize(jQuery(this));
        }
    });
    // ThemeWaves Animate Custom
    jQuery('.tw-animate').each(function() {
        var $curr = jQuery(this);
        var $currOffset = $curr.attr('data-animation-offset');
        if ($currOffset === '' || $currOffset === 'undefined' || $currOffset === undefined) {
            $currOffset = 'bottom-in-view';
        }
        if ($currOffset === 'none') {
            $curr.trigger('tw-animate');
        } else {
            $curr.waypoint(function() {
                $curr.trigger('tw-animate');
            }, {triggerOnce: true, offset: $currOffset});
        }
    });
    // ThemeWaves Animate General - Bind
    jQuery('.tw-animate-gen').each(function() {
        var $curr = jQuery(this);
        var $currChild = $curr.children().eq(-1);
        var $removeClass = true;
        if ($curr.data('animation') === 'pulse' || $curr.data('animation') === 'floating' || $curr.data('animation') === 'tossing') {
            $removeClass = false;
        }
        $curr.bind('tw-animate', function() {
            var $currDelay = parseInt($curr.attr('data-animation-delay'), 10);
            if($currDelay<0){$currDelay=0;}
            setTimeout(function(){
                if ($currChild.hasClass('carousel-anim')) {
                    $currChild.find('ul.waves-carousel>li').each(function(i) {
                        var $currLi = jQuery(this);
                        setTimeout(function() {
                            $currLi.css('opacity', '');
                            $currLi.addClass('animated ' + $curr.data('animation'));
                            if ($removeClass) {
                                setTimeout(function() {
                                    $currLi.removeClass('animated');
                                    $currLi.removeClass($curr.data('animation'));
                                }, 3000);
                            }
                        }, 300 * i);
                    });
                } else {
                    $curr.css('opacity', '');
                    $curr.addClass('animated ' + $curr.data('animation'));
                    if ($removeClass) {
                        setTimeout(function() {
                            $curr.removeClass('animated');
                            $curr.removeClass($curr.data('animation'));
                        }, 3000);
                    }
                }
            },$currDelay);
        });
    });
    // ThemeWaves Animate General
    jQuery('.tw-animate-gen').each(function() {
        var $curr = jQuery(this);
        var $currOffset = $curr.attr('data-animation-offset');
        if ($currOffset === '' || $currOffset === 'undefined' || $currOffset === undefined) {
            $currOffset = 'bottom-in-view';
        }
        $curr.waypoint(function() {
            $curr.trigger('tw-animate');
        }, {triggerOnce: true, offset: $currOffset});
    });
    jQuery(window).resize();
    jQuery(window).scroll();
});
jQuery(window).scroll(function() {
    //-------
    headerMTS();
});


function waves_carousel() {
    "use strict";
    jQuery('.list_carousel').each(function() {
        var $items = 1;
        var $singleItem = false;
        var $auto = false;
        var $navigation = true;
        var $pagination = false;
        var $duration = 500;
        var $timeoutDuration = 2500;
        var $currentCrsl = jQuery(this).children('div.waves-carousel');
        //artHoverAnimateCSS($currentCrsl.children('li'));
        if (jQuery(this).hasClass('waves-carousel-portfolio')) {
            $auto  = jQuery(this).data('autoplay');
            $items = parseInt(jQuery(this).data('items'),10);
        } else if (jQuery(this).hasClass('waves-carousel-partner')) {
            $navigation = false;
            $auto  = jQuery(this).data('autoplay');
            $items = 6;
        } else if (jQuery(this).hasClass('waves-carousel-post')) {
            $navigation = false;
            $pagination = true;
            $auto  = jQuery(this).data('autoplay');
            $items = parseInt(jQuery(this).data('items'),10);
        } else if (jQuery(this).hasClass('waves-carousel-twitter')) {
            $singleItem = true;
            $navigation = false;
            $auto  = jQuery(this).data('autoplay');
            $duration           = parseInt(jQuery(this).attr('data-duration'),10);
            $timeoutDuration    = parseInt(jQuery(this).attr('data-timeout'), 10);
        } else if (jQuery(this).hasClass('waves-carousel-testimonial')) {
            $singleItem = true;
            $navigation = false;
            $pagination = true;
            $auto  = jQuery(this).data('autoplay');
            $duration           = parseInt(jQuery(this).attr('data-duration'),10);
            $timeoutDuration    = parseInt(jQuery(this).attr('data-timeout'), 10);
        } else if (jQuery(this).hasClass('waves-carousel-text')) {
            $auto  = jQuery(this).data('autoplay');
            $duration           = parseInt(jQuery(this).attr('data-duration'),10);
            $timeoutDuration    = parseInt(jQuery(this).attr('data-timeout'), 10);
        } else if (jQuery(this).hasClass('image-slider-element')) {
            $navigation = false;
            $pagination = true;
        }
        
        $currentCrsl.owlCarousel({
            items : $items,
            autoPlay: $auto,
            singleItem:$singleItem,
            slideSpeed:$duration,
            pagination:$pagination,
            paginationSpeed:$timeoutDuration,
            navigationText : ["<i class='fa fa-chevron-left'></i>","<i class='fa fa-chevron-right'></i>"],
            autoHeight : false,
//            transitionStyle : 'fade',
//            lazyLoad : true,
            navigation : $navigation,
            afterAction : function(elem){
//              Waves Custom Auto Height
                var $max=0;
                var $visItems=this.owl.visibleItems;
                var n=$visItems.length;
                jQuery('>.owl-wrapper-outer>.owl-wrapper>.owl-item',elem).removeClass('owl-visible-first').removeClass('owl-visible').removeClass('owl-visible-last');
                for (var i = 0; i < n; i++) {
                    var $curr=jQuery('>.owl-wrapper-outer>.owl-wrapper>.owl-item',elem).eq($visItems[i]).addClass('owl-visible');
                    if($curr.height()>$max){$max=$curr.height();}
                    if(i===0){$curr.addClass('owl-visible-first');}
                    if((i+1)===n){$curr.addClass('owl-visible-last');}
                }
                jQuery('>.owl-wrapper-outer',elem).animate({height:$max},500);
            }
        });
        if(jQuery('body').hasClass('single-portfolio')&&jQuery('article.single-portfolio').hasClass('single-portfolio-full')||jQuery('body').hasClass('single-post')){
            $currentCrsl.data('owlCarousel').next();
        }
    });
}

/* Item Right Left Width */
/* ------------------------------------------------------------------- */
function wavesReInit($selector){
    // PrettyPhoto
    jQuery("a[rel^='prettyPhoto']",$selector).prettyPhoto({
        deeplinking: false
    });
    // Milestones
    jQuery('.tw-milestones-box',$selector).each(function() {
        var $curr = jQuery(this);
        var $delay = 1000;
        if($curr.attr('data-animation-delay')!==''){
            $delay += parseInt($curr.attr('data-animation-delay'), 10);
        }
        $curr.bind('tw-animate', function() {
            jQuery('>.tw-milestones-content>.tw-milestones-count>.tw-milestones-show>ul', $curr).each(function() {
                jQuery(this).css('bottom', '-' + jQuery(this).height() + 'px');
            });
            setTimeout(function() {
                jQuery('>.tw-milestones-content>.tw-milestones-count>.tw-milestones-show>ul', $curr).each(function() {
                    jQuery(this).animate({bottom: '5px'}, 800).animate({bottom: '0px'}, 'slow');
                });
            }, $delay);
        });
    });
    // jPlayer
    if (jQuery().jPlayer||jQuery().jPlayer!=undefined||jQuery().jPlayer!='undefined') {
        jQuery('.jp-jplayer-audio',$selector).each(function() {
            jQuery(this).jPlayer({
                ready: function() {
                    jQuery(this).jPlayer("setMedia", {
                        mp3: jQuery(this).data('mp3')
                    });
                },
                swfPath: "",
                cssSelectorAncestor: "#jp_interface_" + jQuery(this).data('pid'),
                supplied: "mp3, all"
            });
        });

        jQuery('.jp-jplayer-video',$selector).each(function(i) {
            jQuery(this).attr('id',"jquery_jplayer_" + i).attr('data-pid',i).siblings('.jp-video-container').find('.jp-interface').attr('id',"jp_interface_" + i);
            jQuery(this).jPlayer({
                ready: function() {
                    jQuery(this).jPlayer("setMedia", {
                        m4v: jQuery(this).data('m4v'),
                        poster: jQuery(this).data('thumb')
                    });
                },
                play: function() {jQuery(this).jPlayer("pauseOthers", 0);},
                size: {
                    width: '100%',
                    height: 'auto'
                },
                swfPath: "",
                cssSelectorAncestor: "#jp_interface_" + i,
                supplied: "m4v, all"
            });
        });
        jQuery('.jp-jplayer-bgvideo',$selector).each(function() {
            var $bgPlayer=jQuery(this);
            var $bgPauseBtn=$bgPlayer.closest('.row-container');
            var $bgPlayBtn =$bgPauseBtn.children('.container').find('.bg-video-play').hasClass('bg-video-play')?$bgPlayer.closest('.row-container').children('.container').find('.bg-video-play'):false;
            $bgPlayer.jPlayer({
                ready: function() {
                    $bgPlayer.jPlayer("setMedia", {
                        m4v: $bgPlayer.data('m4v'),
                        poster: $bgPlayer.data('thumb')
                    });
                    if($bgPlayBtn===false){
                        $bgPlayer.jPlayer("play");
                    }
                },
                size: {
                    width: '100%',
                    height: 'auto'
                },
                muted: true,
                loop: true,
                swfPath: "",
                cssSelectorAncestor: "#jp_interface_" + $bgPlayer.data('pid'),
                supplied: "m4v, all"
            });
            if($bgPlayBtn){
                $bgPlayBtn.unbind('click').bind('click',function(){
                    if($bgPauseBtn.hasClass('paused')){
                        $bgPlayer.jPlayer("play");
                        $bgPauseBtn.removeClass('paused').css({height:$bgPauseBtn.height()+'px',cursor: 'pointer'}).children('.container').fadeOut();
                        return false;
                    }
                });
                $bgPauseBtn.unbind('click').bind('click',function(){
                    if(!$bgPauseBtn.hasClass('paused')){
                        $bgPlayer.jPlayer("pause");
                        $bgPauseBtn.addClass("paused").css({height:'',cursor: ''}).children('.container').fadeIn();
                    }
                });
                $bgPauseBtn.click();
            }
        });
    }
    // Video Responsive
    jQuery('#main iframe').each(function(){
        if(!jQuery(this).closest('.ls-slide').hasClass('ls-slide')&&!jQuery(this).hasClass('fluidvids-elem')){
            jQuery(this).addClass('makeFluid');
        }
    });
    Fluidvids.init({
        selector: '#main iframe.makeFluid',
        players: ['www.youtube.com', 'player.vimeo.com']
    });
    jQuery('#main iframe').removeClass('makeFluid');
}

/* Item Top Bottom Height */
/* ------------------------------------------------------------------- */
function twItemTB($item) {
    "use strict";
    $item = jQuery($item);
    var $itemMarginTB = parseInt($item.css('margin-top').replace('px', ''), 10) + parseInt($item.css('margin-bottom').replace('px', ''), 10);
    var $itemPaddingTB = parseInt($item.css('padding-top').replace('px', ''), 10) + parseInt($item.css('padding-bottom').replace('px', ''), 10);
    var $itemBorderTB  = parseInt($item.css('border-top-width').replace('px',''),10) + parseInt($item.css('border-bottom-width').replace('px',''),10);
    var $itemTB = $itemMarginTB + $itemPaddingTB + $itemBorderTB;
    return $itemTB;
}
/* Item Right Left Width */
/* ------------------------------------------------------------------- */
function twItemRL($item) {
    $item = jQuery($item);
    var $itemMarginRL  = parseInt($item.css('margin-left').replace('px', '')      ,10) + parseInt($item.css('margin-right').replace('px', '')      ,10);
    var $itemPaddingRL = parseInt($item.css('padding-left').replace('px', '')     ,10) + parseInt($item.css('padding-right').replace('px', '')     ,10);
    var $itemBorderRL  = parseInt($item.css('border-left-width').replace('px', ''),10) + parseInt($item.css('border-right-width').replace('px', ''),10);
    var $itemRL = $itemMarginRL + $itemPaddingRL + $itemBorderRL;
    return $itemRL;
}
/* Full Element Resize */
/* ------------------------------------------------------------------- */
function resizeFullElement(){
    jQuery('.waves-full-element').each(function(){
        var $currentWavesFullElement=jQuery(this);
        var $w=jQuery(window).width();
        if(jQuery('body').hasClass('theme-full') || (1183<=$w && $w<=1242) || $w<=974){
            $currentWavesFullElement.css('margin-left','0px').css('margin-right','0px').css('padding-left','0px').css('padding-right','0px').css('width','');
            var $currLayoutWidth = jQuery(window).width();
            var $marginLeft=$currentWavesFullElement.offset().left*-1;
            
            if(jQuery('body').hasClass('menu-left')||jQuery('body').hasClass('menu-right')){
                $currLayoutWidth=jQuery('body').width();
                if(jQuery('body').hasClass('menu-left')){
                    $marginLeft=($currentWavesFullElement.offset().left-jQuery('body').offset().left)*-1;
                }
            }
            $currentWavesFullElement.css('margin-left',$marginLeft+'px');
            $currentWavesFullElement.css('width',($currLayoutWidth)+'px');
        }else{
            $currentWavesFullElement.css('margin-left','').css('margin-right','').css('padding-left','').css('padding-right','').css('width','');
        }
    });
}
/* Media Resize */
/* ------------------------------------------------------------------- */
function resizeMediaElement() {
    // Twitter Post Resize
    jQuery('iframe.twitter-tweet.twitter-tweet-rendered').each(function() {setTimeout(function(){try{jQuery(this).height(jQuery(this).contents().find('html').height());}catch(err){}},1000);});
    // jPlayer Resize
    jQuery('.jp-audio-container, .jp-video-container').each(function() {
        jQuery(this).find('.jp-progress-container').width((jQuery(this).width() - 149 < 0) ? 0 : (jQuery(this).width() - 149));
        jQuery(this).find('.jp-progress').width((jQuery(this).width() - 152 < 0) ? 0 : (jQuery(this).width() - 152));
    });
    // Isotope
    jQuery('.isotope .entry-media.image-slide-container').each(function(){
        var $curr=jQuery(this);
        var $maxH=1000;
        $curr.find('.image-item').each(function(){
           jQuery(this).width($curr.width());
           if($maxH>jQuery(this).height()){$maxH=jQuery(this).height();}
        });
        $curr.css('max-height',$maxH+'px');
    });
}
/* Header Mobile Top Space */
/* ------------------------------------------------------------------- */
function headerMTS(){
    if(jQuery('body').hasClass('admin-bar')){
        if(jQuery('#wpadminbar').css('position')==='absolute'&&jQuery(window).scrollTop()>30){
            jQuery('header').css('top','0px');
        }else{
            jQuery('header').css('top','');
        }
    }
}
/* WC Widget Title */
/* ------------------------------------------------------------------- */
function wcWidgetTitle() {
    jQuery('.widget_shopping_cart_content').each(function() {
        if (jQuery(this).find('.total>.amount').hasClass('amount')) {
            var $total = 0;
            jQuery(this).find('ul>li>.quantity').each(function() {
                var $cln = jQuery(this).clone();
                $cln.find('.amount').remove();
                $total += parseInt($cln.text().replace(' × ', ''), 10);
            });
            jQuery(this).siblings('.top-widget-title').find('span.count-cart').remove();
            jQuery(this).siblings('.top-widget-title').append('<span class="count-cart"> ('+$total+') </span>');
        }
    });
    jQuery('.loading-cart').removeClass('loading-cart');
}
/* Porfolio Element Image container height for UpDownAnimation-MixingTheme*/
/* ------------------------------------------------------------------- */
function twPortImgResize($img){
    var $imgOvCont=$img.closest('.overlay-container');
    $imgOvCont.height($img.height()-40);
}
;jQuery(document).ready(function($){
// SmoothScroll v0.9.9
// Licensed under the terms of the MIT license.

// People involved
// - Balazs Galambosi: maintainer (CHANGELOG.txt)
// - Patrick Brunner (patrickb1991@gmail.com)
// - Michael Herf: ssc_pulse Algorithm

// Scroll Variables (tweakable)
var ssc_framerate = 150; // [Hz]
var ssc_animtime  = 800; // [px]
var ssc_stepsize  = 120; // [px]

// ssc_pulse (less tweakable)
// ratio of "tail" to "acceleration"
var ssc_pulseAlgorithm = true;
var ssc_pulseScale     = 6;
var ssc_pulseNormalize = 1;

// Keyboard Settings
var ssc_keyboardsupport = true;
var ssc_arrowscroll     = 50; // [px]

// Other Variables
var ssc_frame = false;
var ssc_direction = { x: 0, y: 0 };
var ssc_initdone  = false;
var ssc_fixedback = true;
var ssc_root = document.documentElement;
var ssc_activeElement;

var ssc_key = { left: 37, up: 38, right: 39, down: 40, spacebar: 32, pageup: 33, pagedown: 34, end: 35, home: 36 };

/***********************************************
 * INITIALIZE
 ***********************************************/

/**
 * Sets up scrolls array, determines if ssc_frames are involved.
 */
function ssc_init() {
    
    if (!document.body) return;

    var body = document.body;
    var html = document.documentElement;
    var windowHeight = window.innerHeight; 
    var scrollHeight = body.scrollHeight;
    
    // check compat mode for ssc_root element
    ssc_root = (document.compatMode.indexOf('CSS') >= 0) ? html : body;
    ssc_activeElement = body;
    
    ssc_initdone = true;

    // Checks if this script is running in a ssc_frame
    if (top != self) {
        ssc_frame = true;
    }

    /**
     * This fixes a bug where the areas left and right to 
     * the content does not trigger the onmousewheel event
     * on some pages. e.g.: html, body { height: 100% }
     */
    else if (scrollHeight > windowHeight &&
            (body.offsetHeight <= windowHeight || 
             html.offsetHeight <= windowHeight)) {
        ssc_root.style.height = "auto";
        if (ssc_root.offsetHeight <= windowHeight) {
            var underlay = document.createElement("div"); 	
            underlay.style.clear = "both";
            body.appendChild(underlay);
        }
    }
    
    if (!ssc_fixedback) {
        body.style.backgroundAttachment = "scroll";
        html.style.backgroundAttachment = "scroll";
    }
    
    if (ssc_keyboardsupport) {
        ssc_addEvent("keydown", ssc_keydown);
    }
}


/************************************************
 * SCROLLING 
 ************************************************/
 
var ssc_que = [];
var ssc_pending = false;

/**
 * Pushes scroll actions to the scrolling queue.
 */
function ssc_scrollArray(elem, left, top, delay) {
    
    delay || (delay = 1000);
    ssc_directionCheck(left, top);
    
    // push a scroll command
    ssc_que.push({
        x: left, 
        y: top, 
        lastX: (left < 0) ? 0.99 : -0.99,
        lastY: (top  < 0) ? 0.99 : -0.99, 
        start: +new Date
    });
        
    // don't act if there's a ssc_pending queue
    if (ssc_pending) {
        return;
    }
            
    var step = function() {
        
        var now = +new Date;
        var scrollX = 0;
        var scrollY = 0; 
    
        for (var i = 0; i < ssc_que.length; i++) {
            
            var item = ssc_que[i];
            var elapsed  = now - item.start;
            var finished = (elapsed >= ssc_animtime);
            
            // scroll position: [0, 1]
            var position = (finished) ? 1 : elapsed / ssc_animtime;
            
            // easing [optional]
            if (ssc_pulseAlgorithm) {
                position = ssc_pulse(position);
            }
            
            // only need the difference
            var x = (item.x * position - item.lastX) >> 0;
            var y = (item.y * position - item.lastY) >> 0;
            
            // add this to the total scrolling
            scrollX += x;
            scrollY += y;            
            
            // update last values
            item.lastX += x;
            item.lastY += y;
        
            // delete and step back if it's over
            if (finished) {
                ssc_que.splice(i, 1); i--;
            }           
        }

        // scroll left
        if (left) {
            var lastLeft = elem.scrollLeft;
            elem.scrollLeft += scrollX;
            
            // scroll left failed (edge)
            if (scrollX && elem.scrollLeft === lastLeft) {
                left = 0;
            }
        }

        // scroll top
        if (top) {
            var lastTop = elem.scrollTop;
            elem.scrollTop += scrollY;
            
            // scroll top failed (edge)
            if (scrollY && elem.scrollTop === lastTop) {
                top = 0;
            }            
        }
        
        // clean up if there's nothing left to do
        if (!left && !top) {
            ssc_que = [];
        }
        
        if (ssc_que.length) { 
            setTimeout(step, delay / ssc_framerate + 1);
        } else { 
            ssc_pending = false;
        }
    }
    
    // start a new queue of actions
    setTimeout(step, 0);
    ssc_pending = true;
}


/***********************************************
 * EVENTS
 ***********************************************/

/**
 * Mouse ssc_wheel handler.
 * @param {Object} event
 */

function ssc_wheel(event) {

//    if (!ssc_initdone) {
//        init();
//    }
    
    var target = event.target;
    var overflowing = ssc_overflowingAncestor(target);
    
    // use default if there's no overflowing
    // element or default action is prevented    
    if (!overflowing || event.defaultPrevented ||
        ssc_isNodeName(ssc_activeElement, "embed") ||
       (ssc_isNodeName(target, "embed") && /\.pdf/i.test(target.src))) {
        return true;
    }

    var deltaX = event.wheelDeltaX || 0;
    var deltaY = event.wheelDeltaY || 0;
    
    // use wheelDelta if deltaX/Y is not available
    if (!deltaX && !deltaY) {
        deltaY = event.wheelDelta || 0;
    }

    // scale by step size
    // delta is 120 most of the time
    // synaptics seems to send 1 sometimes
    if (Math.abs(deltaX) > 1.2) {
        deltaX *= ssc_stepsize / 120;
    }
    if (Math.abs(deltaY) > 1.2) {
        deltaY *= ssc_stepsize / 120;
    }
    
    ssc_scrollArray(overflowing, -deltaX, -deltaY);
    event.preventDefault();
}

/**
 * ssc_keydown event handler.
 * @param {Object} event
 */
function ssc_keydown(event) {

    var target   = event.target;
    var modifier = event.ctrlKey || event.altKey || event.metaKey;
    
    // do nothing if user is editing text
    // or using a modifier ssc_key (except shift)
    if ( /input|textarea|embed/i.test(target.nodeName) ||
         target.isContentEditable || 
         event.defaultPrevented   ||
         modifier ) {
      return true;
    }
    // spacebar should trigger button press
    if (ssc_isNodeName(target, "button") &&
        event.keyCode === ssc_key.spacebar) {
      return true;
    }
    
    var shift, x = 0, y = 0;
    var elem = ssc_overflowingAncestor(ssc_activeElement);
    var clientHeight = elem.clientHeight;

    if (elem == document.body) {
        clientHeight = window.innerHeight;
    }

    switch (event.keyCode) {
        case ssc_key.up:
            y = -ssc_arrowscroll;
            break;
        case ssc_key.down:
            y = ssc_arrowscroll;
            break;         
        case ssc_key.spacebar: // (+ shift)
            shift = event.shiftKey ? 1 : -1;
            y = -shift * clientHeight * 0.9;
            break;
        case ssc_key.pageup:
            y = -clientHeight * 0.9;
            break;
        case ssc_key.pagedown:
            y = clientHeight * 0.9;
            break;
        case ssc_key.home:
            y = -elem.scrollTop;
            break;
        case ssc_key.end:
            var damt = elem.scrollHeight - elem.scrollTop - clientHeight;
            y = (damt > 0) ? damt+10 : 0;
            break;
        case ssc_key.left:
            x = -ssc_arrowscroll;
            break;
        case ssc_key.right:
            x = ssc_arrowscroll;
            break;            
        default:
            return true; // a ssc_key we don't care about
    }

    ssc_scrollArray(elem, x, y);
    event.preventDefault();
}

/**
 * ssc_mousedown event only for updating ssc_activeElement
 */
function ssc_mousedown(event) {
    ssc_activeElement = event.target;
}


/***********************************************
 * OVERFLOW
 ***********************************************/
 
var ssc_cache = {}; // cleared out every once in while
setInterval(function(){ ssc_cache = {}; }, 10 * 1000);

var ssc_uniqueID = (function() {
    var i = 0;
    return function (el) {
        return el.ssc_uniqueID || (el.ssc_uniqueID = i++);
    };
})();

function ssc_setCache(elems, overflowing) {
    for (var i = elems.length; i--;)
        ssc_cache[ssc_uniqueID(elems[i])] = overflowing;
    return overflowing;
}

function ssc_overflowingAncestor(el) {
    var elems = [];
    var ssc_rootScrollHeight = ssc_root.scrollHeight;
    do {
        var cached = ssc_cache[ssc_uniqueID(el)];
        if (cached) {
            return ssc_setCache(elems, cached);
        }
        elems.push(el);
        if (ssc_rootScrollHeight === el.scrollHeight) {
            if (!ssc_frame || ssc_root.clientHeight + 10 < ssc_rootScrollHeight) {
                return ssc_setCache(elems, document.body); // scrolling ssc_root in WebKit
            }
        } else if (el.clientHeight + 10 < el.scrollHeight) {
            overflow = getComputedStyle(el, "").getPropertyValue("overflow");
            if (overflow === "scroll" || overflow === "auto") {
                return ssc_setCache(elems, el);
            }
        }
    } while (el = el.parentNode);
}


/***********************************************
 * HELPERS
 ***********************************************/

function ssc_addEvent(type, fn, bubble) {
    window.addEventListener(type, fn, (bubble||false));
}

function ssc_removeEvent(type, fn, bubble) {
    window.removeEventListener(type, fn, (bubble||false));  
}

function ssc_isNodeName(el, tag) {
    //return el.nodeName.toLowerCase() === tag.toLowerCase();
}

function ssc_directionCheck(x, y) {
    x = (x > 0) ? 1 : -1;
    y = (y > 0) ? 1 : -1;
    if (ssc_direction.x !== x || ssc_direction.y !== y) {
        ssc_direction.x = x;
        ssc_direction.y = y;
        ssc_que = [];
    }
}


/***********************************************
 * ssc_pulse
 ***********************************************/
 
/**
 * Viscous fluid with a ssc_pulse for part and decay for the rest.
 * - Applies a fixed force over an interval (a damped acceleration), and
 * - Lets the exponential bleed away the velocity over a longer interval
 * - Michael Herf, http://stereopsis.com/stopping/
 */
function ssc_pulse_(x) {
    var val, start, expx;
    // test
    x = x * ssc_pulseScale;
    if (x < 1) { // acceleartion
        val = x - (1 - Math.exp(-x));
    } else {     // tail
        // the previous animation ended here:
        start = Math.exp(-1);
        // simple viscous drag
        x -= 1;
        expx = 1 - Math.exp(-x);
        val = start + (expx * (1 - start));
    }
    return val * ssc_pulseNormalize;
}

function ssc_pulse(x) {
    if (x >= 1) return 1;
    if (x <= 0) return 0;

    if (ssc_pulseNormalize == 1) {
        ssc_pulseNormalize /= ssc_pulse_(1);
    }
    return ssc_pulse_(x);
}

$.browser.chrome = /chrome/.test(navigator.userAgent.toLowerCase()); 
if ( $.browser.chrome ) {
	ssc_addEvent("mousedown", ssc_mousedown);
	ssc_addEvent("mousewheel", ssc_wheel);
	ssc_addEvent("load", ssc_init);
 }
});
;jQuery(window).load(function() {
    // One page
    jQuery('body.page-template-template-onepage-php ul#menu li,body.page-template-template-onepage-php nav#mobile-menu li').removeClass('current-menu-item').removeClass('current_page_item').removeClass('current-menu-ancestor').removeClass('sfHover');
    
    jQuery(window).resize();
});
jQuery(window).resize(function($) {
    if(jQuery('.fixed-footer').hasClass('fixed-footer')){
        var $f_height = jQuery('.fixed-footer').height();
        var $f_bottom = parseInt(jQuery('body').css('margin-bottom').replace('px', '')      ,10);
        $f_height += $f_bottom;
        if(jQuery(window).width() > 800 && (jQuery(window).height()-100) > $f_height) {
            jQuery('.fixed-footer').css('position', '');
            if($f_bottom > 0) {
                jQuery('.fixed-footer').css('margin-bottom', $f_bottom);
            }
            if($f_height > 0) {
                jQuery('#main').css('margin-bottom', $f_height);
            }
        }else {
            jQuery('#main').css('margin-bottom', '');
            jQuery('.fixed-footer').css('position', 'static');
        }
    }
});
jQuery(document).ready(function($) {
    if(waves_script_data.pageloader==='1'){
        try{
            Pace.on('hide', function(){
                jQuery('body').removeClass('loading');
                jQuery('body>.pace').remove();
                jQuery(window).resize();
            });
        }catch(err){}
    }
    mobNav();
    var defLogoH=jQuery('.tw-logo img').height();
    
    // One Page 
    jQuery('body.page-template-template-onepage-php a').click(function(e){
        if($(this).attr('href')){
            //get current
            var targetSection = $(this).attr('href').split("#")[1];
            if (targetSection || targetSection !== '') {
                targetSection = '#' + targetSection;
                if ($(targetSection).attr('id') !== '' && $(targetSection).attr('id') !== 'undefined' && $(targetSection).attr('id') !== undefined) {
                    e.preventDefault();
                    //get pos of target section
                    var targetOffset = $(targetSection).offset().top;
                    
                    if(jQuery('body').hasClass('menu-fixed')){
                        targetOffset-=$('#header').height();
                    }
                    if(jQuery('body').hasClass('admin-bar')){
                        targetOffset-=jQuery('#wpadminbar').height();
                    }
                    
                    //scroll			 
                    $('html,body').animate({scrollTop: targetOffset}, 1000);
                }
            }
        }
    });



    /*nav handling
     -------------------*/
    $(function() {
        jQuery('.page-template-template-onepage-php .row-container').waypoint({
            handler: function(direction) {
                var activeSection = jQuery(this);

                if (direction === "up") {
                    activeSection = activeSection.prev();
                }

                var activeMenuLink = jQuery('ul#menu a[href$=#' + activeSection.attr('id') + ']');
                if(activeMenuLink.html()) {
                    jQuery('ul#menu a').parent('li').removeClass('tw-menu-active');
                    activeMenuLink.parent('li').addClass('tw-menu-active');
                }
                // One Page - Mobile Menu
//                if (!jQuery('html').hasClass('mm-opened')) {
//                    jQuery('nav#mobile-menu a').parent('li').removeClass('mm-selected');
//                    jQuery('nav#mobile-menu a[href$=#' + activeSection.attr('id') + ']').parent('li').addClass('mm-selected');
//                }
            },
            offset: $('#header').height()	//when it should switch on consecutive page
        });
    });
    
    /* navigation */
    $('ul#menu').superfish({
        delay: 200,
        animation: {
            opacity: 'show',
            height: 'show'
        },
        speed: 'fast',
        autoArrows: false,
        dropShadows: false
    });
    
    jQuery(window).scroll(function() {
        var $header = jQuery('#header');
        var $menuContainer = jQuery('#header nav.menu-container');
        var $menuParents   = $menuContainer.find('ul.sf-menu>li>a');
        var $menuWidget    = jQuery('.tw-menu-widget');
        var $scrollTop = jQuery(window).scrollTop();

        // START - One Page Home
        if ($scrollTop <= 50 && jQuery('body.page-template-template-onepage-php ul#menu a[href$=#one-page-home]').closest('li').hasClass('menu-item')) {
                jQuery('ul#menu li.tw-menu-active').removeClass('tw-menu-active');
                jQuery('ul#menu a[href$=#one-page-home]').closest('li').addClass('tw-menu-active');
                // One Page - Mobile Menu
//                if (!jQuery('html').hasClass('mm-opened')) {
//                    jQuery('nav#mobile-menu li.mm-selected').removeClass('mm-selected');
//                    jQuery('nav#mobile-menu a[href$=#one-page-home]').closest('li').addClass('mm-selected');
//                }
        }
        // END   - One Page Home
        
        // START - Header resize        
        if(jQuery('body').hasClass('menu-fixed')) {
        
            var $bodyOffsetTop=jQuery('body').offset().top;
            var $addH=0;
            if(jQuery('.tw-top-bar').hasClass('tw-top-bar')){
                $addH+=jQuery('.tw-top-bar').height();
            }
            if(jQuery('#wpadminbar').attr('id')==='wpadminbar'){
                $addH-=jQuery('#wpadminbar').height();
            }

            var $menuPaddingSmall = waves_script_data.menu_padding;
            var $menuWidMargin = waves_script_data.menu_wid_margin;
            var $headerheight = waves_script_data.header_height;
            var $oldH=0;
            var $oldW=0;
            var $newH=0;
            var $newW=0;
            if ($bodyOffsetTop+$addH < $scrollTop) {
                if($header.hasClass('header-large')){
                    $menuParents.stop().animate({paddingTop: ($menuPaddingSmall-10)+'px',paddingBottom: ($menuPaddingSmall-10)+'px'},300);
                    if($menuWidget.hasClass('tw-menu-widget')){
                        var $tmpMenuWidMar=((($menuPaddingSmall-10)*2+$menuParents.height())-$menuWidget.height())/2;
                        $menuWidget.stop().animate({marginTop: $tmpMenuWidMar+'px',marginBottom: $tmpMenuWidMar+'px'},300);
                    }
                    jQuery('.tw-logo').stop().animate({height: ($headerheight-20)+'px',lineHeight: ($headerheight-20)+'px'},300);
                    if(defLogoH > 40) {
                        $oldH=jQuery('.tw-logo img').height();
                        $oldW=jQuery('.tw-logo img').width();
                        $newH=$oldH-10;
                        $newW=$newH*($oldW/$oldH);
                        jQuery('.tw-logo img').stop().animate({height: $newH+'px',width: $newW+'px'},300);
                    }
                    $header.removeClass('header-large').addClass('header-small');
                    $header.siblings('.header-clone').css('height',$header.height()+'px').stop().animate({height: ($header.height()-20)+'px'},300);
                }
            } else {
                if($header.hasClass('header-small')){
                    $menuParents.stop().animate({paddingTop: $menuPaddingSmall+'px',paddingBottom: $menuPaddingSmall+'px'},300);
                    $menuWidget.stop().animate({marginTop: $menuWidMargin+'px',marginBottom: $menuWidMargin+'px'},300);
                    jQuery('.tw-logo').stop().animate({height: $headerheight+'px',lineHeight: $headerheight+'px'},300);
                    if(defLogoH > 40) {
                        $oldH=jQuery('.tw-logo img').height();
                        $oldW=jQuery('.tw-logo img').width();
                        $newH=$oldH+10;
                        $newW=$newH*($oldW/$oldH);
                        jQuery('.tw-logo img').stop().animate({height: $newH+'px',width: $newW+'px'},300);
                    }
                    $header.removeClass('header-small').addClass('header-large');
                    $header.siblings('.header-clone').css('height','').stop();
                }
            }
        }
        // END   - Header resize
        
        if (jQuery(this).scrollTop() > $header.height()) {
            jQuery('#scrollUp').fadeIn();
        } else {
            jQuery('#scrollUp').fadeOut();
        }
        // Single Portfolio Half, Full
        jQuery('.single-portfolio-half .col-md-3,.single-portfolio-full .col-md-3').each(function() {
            var $currContainer = jQuery(this);
            var $currFetContainer = $currContainer.siblings('.col-md-9');
            $currContainer.removeClass('pos-bottom').removeClass('pos-top').css('left', '').css('width','');
            var $currOffsetTop = $currContainer.offset().top;
            var $currOffsetLeft = $currContainer.offset().left - parseInt($currContainer.css('margin-left'), 10);
            var $currHeight = $currContainer.height();
            var $currWidth  = $currContainer.width()+twItemRL($currContainer);
            if ($currFetContainer.height() > $currHeight && (($currOffsetTop + $currHeight) <= (jQuery(window).scrollTop() + jQuery(window).height()))) {
                $currContainer.addClass('pos-top').css('left', $currOffsetLeft + 'px').css('width', $currWidth + 'px');
                $currOffsetTop = $currContainer.offset().top;
                $currHeight = $currContainer.height();
                var $currFetOffsetTop = $currFetContainer.offset().top;
                var $currFetHeight = $currFetContainer.height();
                if ($currFetOffsetTop + $currFetHeight < $currOffsetTop + $currHeight) {
                    $currContainer.removeClass('pos-top').css('left', '').css('width', '').addClass('pos-bottom');
                } else if ($currOffsetTop < $currFetOffsetTop) {
                    $currContainer.removeClass('pos-bottom').css('left', '').css('width', '').removeClass('pos-top');
                }
            }
        });
    });
    jQuery(window).scroll();
    jQuery('#scrollUp, .divider-top').click(function() {
        jQuery("html, body").animate({scrollTop: 0}, 500);
        return false;
    });
    
    if (jQuery().parallax) {
        jQuery('.bg-parallax').each(function() {
            jQuery(this).parallax("50%", 0.2);
        });
    }
    
    //portfolio like
    jQuery('.likeit').live('click', function() {
        var $this = jQuery(this);
        jQuery.post($this.data('ajaxurl'), {liked_pid: $this.data('pid')})
                .done(function(response) {
            var $aa = jQuery(response).find('#post_liked');
            if ($aa.attr('id') == 'post_liked') {
                $this.addClass('liked');
                var $val = $aa.text();
                $this.find('span').text($val);
            }
        });
    });
    
    //facebook
    function facebookShare(){
            window.open( 'https://www.facebook.com/sharer/sharer.php?u='+window.location, "facebookWindow", "height=380,width=660,resizable=0,toolbar=0,menubar=0,status=0,location=0,scrollbars=0" ); 
            return false;
    }
    $('.facebook-share > a').click(facebookShare);
    
    //twitter
    function twitterShare(){
            window.open( 'http://twitter.com/intent/tweet?text='+$(this).data('title') +' '+window.location, "twitterWindow", "height=380,width=660,resizable=0,toolbar=0,menubar=0,status=0,location=0,scrollbars=0" ); 
            return false;
    }
    $('.twitter-share > a').click(twitterShare);
    
    //pinterest
    function pinterestShare(){
            window.open( 'http://pinterest.com/pin/create/button/?url='+window.location+'&media='+$('#post-area img').first().attr('src')+'&description='+$('.section-title h1').text(), "pinterestWindow", "height=640,width=660,resizable=0,toolbar=0,menubar=0,status=0,location=0,scrollbars=0" ); 
            return false;
    }
    $('.pinterest-share > a').click(pinterestShare);
    
    
    //google
    
    function googleShare(e){e.preventDefault();
        window.open( 'https://plus.google.com/share?url={'+window.location+'}', "googleWindow", "height=640,width=660,resizable=0,toolbar=0,menubar=0,status=0,location=0,scrollbars=0" ); 
    }
    $('.googleplus-share > a').click(googleShare);
   
    //Top Widget Search
    $('.tw-top-widget .button-search,.tw-menu-widget .button-search').click(function() {
        $(this).closest('.input').toggleClass('opened');
    });
    
    //Add to Cart Loader
    $('.tw_product_container>.tw_cart_buttons>.add_to_cart_button').click(function() {
        jQuery(this).closest('.tw_cart_buttons').siblings('a').addClass('loading-cart');
    });

    //Cart On Menu
    $('.tw-top-widget[id^="woocommerce_widget_cart"],.tw-menu-widget[id^="woocommerce_widget_cart"]').hover(function() {
        $(this).children('.widget_shopping_cart_content').addClass('opened').stop().fadeIn('fast');
    }, function() {
        $(this).children('.widget_shopping_cart_content').removeClass('opened').stop().fadeOut('fast');
    });
         
    setTimeout(function() {
        wcWidgetTitle();
    }, 1);
    setTimeout(function() {
        wcWidgetTitle();
    }, 500); 
   jQuery(document).ajaxComplete(function() {
        wcWidgetTitle();
    });
});

/* mobile navigation */
/* ------------------------------------------------------------------- */
function mobNav(){
    jQuery('#waves-loader').remove();
    /* mobile navigation */
    jQuery('.show-mobile-menu').click(function(e){e.preventDefault();
        jQuery('#mobile-menu').slideToggle('fast').promise().done(function() {
//            jQuery('#mobile-menu li').css('width', '100%').css('width', '');
        });
    });
    jQuery('#mobile-menu ul.sub-menu').each(function() {
        var $parentMenu = jQuery(this).parent('li');
        $parentMenu.addClass('has-children').prepend('<div class="action-expand"><span class="opened">-</span><span class="closed">+</span></div>');
        $parentMenu.children('.action-expand').click(function(e){e.preventDefault();
            var $this = jQuery(this).closest('.has-children');
            $this.siblings('li.menu-open').removeClass('menu-open').children('.sub-menu').slideUp('fast');
            $this.toggleClass('menu-open');
            if ($this.hasClass('menu-open')) {
                $this.children('.sub-menu').slideDown('fast');
            } else {
                $this.children('.sub-menu').slideUp('fast');
            }
            return false;
        });
    });
}
;/*!
 * jQuery UI Core 1.11.2
 * http://jqueryui.com
 *
 * Copyright 2014 jQuery Foundation and other contributors
 * Released under the MIT license.
 * http://jquery.org/license
 *
 * http://api.jqueryui.com/category/ui-core/
 */
!function(a){"function"==typeof define&&define.amd?define(["jquery"],a):a(jQuery)}(function(a){function b(b,d){var e,f,g,h=b.nodeName.toLowerCase();return"area"===h?(e=b.parentNode,f=e.name,b.href&&f&&"map"===e.nodeName.toLowerCase()?(g=a("img[usemap='#"+f+"']")[0],!!g&&c(g)):!1):(/input|select|textarea|button|object/.test(h)?!b.disabled:"a"===h?b.href||d:d)&&c(b)}function c(b){return a.expr.filters.visible(b)&&!a(b).parents().addBack().filter(function(){return"hidden"===a.css(this,"visibility")}).length}a.ui=a.ui||{},a.extend(a.ui,{version:"1.11.2",keyCode:{BACKSPACE:8,COMMA:188,DELETE:46,DOWN:40,END:35,ENTER:13,ESCAPE:27,HOME:36,LEFT:37,PAGE_DOWN:34,PAGE_UP:33,PERIOD:190,RIGHT:39,SPACE:32,TAB:9,UP:38}}),a.fn.extend({scrollParent:function(b){var c=this.css("position"),d="absolute"===c,e=b?/(auto|scroll|hidden)/:/(auto|scroll)/,f=this.parents().filter(function(){var b=a(this);return d&&"static"===b.css("position")?!1:e.test(b.css("overflow")+b.css("overflow-y")+b.css("overflow-x"))}).eq(0);return"fixed"!==c&&f.length?f:a(this[0].ownerDocument||document)},uniqueId:function(){var a=0;return function(){return this.each(function(){this.id||(this.id="ui-id-"+ ++a)})}}(),removeUniqueId:function(){return this.each(function(){/^ui-id-\d+$/.test(this.id)&&a(this).removeAttr("id")})}}),a.extend(a.expr[":"],{data:a.expr.createPseudo?a.expr.createPseudo(function(b){return function(c){return!!a.data(c,b)}}):function(b,c,d){return!!a.data(b,d[3])},focusable:function(c){return b(c,!isNaN(a.attr(c,"tabindex")))},tabbable:function(c){var d=a.attr(c,"tabindex"),e=isNaN(d);return(e||d>=0)&&b(c,!e)}}),a("<a>").outerWidth(1).jquery||a.each(["Width","Height"],function(b,c){function d(b,c,d,f){return a.each(e,function(){c-=parseFloat(a.css(b,"padding"+this))||0,d&&(c-=parseFloat(a.css(b,"border"+this+"Width"))||0),f&&(c-=parseFloat(a.css(b,"margin"+this))||0)}),c}var e="Width"===c?["Left","Right"]:["Top","Bottom"],f=c.toLowerCase(),g={innerWidth:a.fn.innerWidth,innerHeight:a.fn.innerHeight,outerWidth:a.fn.outerWidth,outerHeight:a.fn.outerHeight};a.fn["inner"+c]=function(b){return void 0===b?g["inner"+c].call(this):this.each(function(){a(this).css(f,d(this,b)+"px")})},a.fn["outer"+c]=function(b,e){return"number"!=typeof b?g["outer"+c].call(this,b):this.each(function(){a(this).css(f,d(this,b,!0,e)+"px")})}}),a.fn.addBack||(a.fn.addBack=function(a){return this.add(null==a?this.prevObject:this.prevObject.filter(a))}),a("<a>").data("a-b","a").removeData("a-b").data("a-b")&&(a.fn.removeData=function(b){return function(c){return arguments.length?b.call(this,a.camelCase(c)):b.call(this)}}(a.fn.removeData)),a.ui.ie=!!/msie [\w.]+/.exec(navigator.userAgent.toLowerCase()),a.fn.extend({focus:function(b){return function(c,d){return"number"==typeof c?this.each(function(){var b=this;setTimeout(function(){a(b).focus(),d&&d.call(b)},c)}):b.apply(this,arguments)}}(a.fn.focus),disableSelection:function(){var a="onselectstart"in document.createElement("div")?"selectstart":"mousedown";return function(){return this.bind(a+".ui-disableSelection",function(a){a.preventDefault()})}}(),enableSelection:function(){return this.unbind(".ui-disableSelection")},zIndex:function(b){if(void 0!==b)return this.css("zIndex",b);if(this.length)for(var c,d,e=a(this[0]);e.length&&e[0]!==document;){if(c=e.css("position"),("absolute"===c||"relative"===c||"fixed"===c)&&(d=parseInt(e.css("zIndex"),10),!isNaN(d)&&0!==d))return d;e=e.parent()}return 0}}),a.ui.plugin={add:function(b,c,d){var e,f=a.ui[b].prototype;for(e in d)f.plugins[e]=f.plugins[e]||[],f.plugins[e].push([c,d[e]])},call:function(a,b,c,d){var e,f=a.plugins[b];if(f&&(d||a.element[0].parentNode&&11!==a.element[0].parentNode.nodeType))for(e=0;e<f.length;e++)a.options[f[e][0]]&&f[e][1].apply(a.element,c)}}});
;/*!
 * jQuery UI Widget 1.11.2
 * http://jqueryui.com
 *
 * Copyright 2014 jQuery Foundation and other contributors
 * Released under the MIT license.
 * http://jquery.org/license
 *
 * http://api.jqueryui.com/jQuery.widget/
 */
!function(a){"function"==typeof define&&define.amd?define(["jquery"],a):a(jQuery)}(function(a){var b=0,c=Array.prototype.slice;return a.cleanData=function(b){return function(c){var d,e,f;for(f=0;null!=(e=c[f]);f++)try{d=a._data(e,"events"),d&&d.remove&&a(e).triggerHandler("remove")}catch(g){}b(c)}}(a.cleanData),a.widget=function(b,c,d){var e,f,g,h,i={},j=b.split(".")[0];return b=b.split(".")[1],e=j+"-"+b,d||(d=c,c=a.Widget),a.expr[":"][e.toLowerCase()]=function(b){return!!a.data(b,e)},a[j]=a[j]||{},f=a[j][b],g=a[j][b]=function(a,b){return this._createWidget?void(arguments.length&&this._createWidget(a,b)):new g(a,b)},a.extend(g,f,{version:d.version,_proto:a.extend({},d),_childConstructors:[]}),h=new c,h.options=a.widget.extend({},h.options),a.each(d,function(b,d){return a.isFunction(d)?void(i[b]=function(){var a=function(){return c.prototype[b].apply(this,arguments)},e=function(a){return c.prototype[b].apply(this,a)};return function(){var b,c=this._super,f=this._superApply;return this._super=a,this._superApply=e,b=d.apply(this,arguments),this._super=c,this._superApply=f,b}}()):void(i[b]=d)}),g.prototype=a.widget.extend(h,{widgetEventPrefix:f?h.widgetEventPrefix||b:b},i,{constructor:g,namespace:j,widgetName:b,widgetFullName:e}),f?(a.each(f._childConstructors,function(b,c){var d=c.prototype;a.widget(d.namespace+"."+d.widgetName,g,c._proto)}),delete f._childConstructors):c._childConstructors.push(g),a.widget.bridge(b,g),g},a.widget.extend=function(b){for(var d,e,f=c.call(arguments,1),g=0,h=f.length;h>g;g++)for(d in f[g])e=f[g][d],f[g].hasOwnProperty(d)&&void 0!==e&&(b[d]=a.isPlainObject(e)?a.isPlainObject(b[d])?a.widget.extend({},b[d],e):a.widget.extend({},e):e);return b},a.widget.bridge=function(b,d){var e=d.prototype.widgetFullName||b;a.fn[b]=function(f){var g="string"==typeof f,h=c.call(arguments,1),i=this;return f=!g&&h.length?a.widget.extend.apply(null,[f].concat(h)):f,this.each(g?function(){var c,d=a.data(this,e);return"instance"===f?(i=d,!1):d?a.isFunction(d[f])&&"_"!==f.charAt(0)?(c=d[f].apply(d,h),c!==d&&void 0!==c?(i=c&&c.jquery?i.pushStack(c.get()):c,!1):void 0):a.error("no such method '"+f+"' for "+b+" widget instance"):a.error("cannot call methods on "+b+" prior to initialization; attempted to call method '"+f+"'")}:function(){var b=a.data(this,e);b?(b.option(f||{}),b._init&&b._init()):a.data(this,e,new d(f,this))}),i}},a.Widget=function(){},a.Widget._childConstructors=[],a.Widget.prototype={widgetName:"widget",widgetEventPrefix:"",defaultElement:"<div>",options:{disabled:!1,create:null},_createWidget:function(c,d){d=a(d||this.defaultElement||this)[0],this.element=a(d),this.uuid=b++,this.eventNamespace="."+this.widgetName+this.uuid,this.bindings=a(),this.hoverable=a(),this.focusable=a(),d!==this&&(a.data(d,this.widgetFullName,this),this._on(!0,this.element,{remove:function(a){a.target===d&&this.destroy()}}),this.document=a(d.style?d.ownerDocument:d.document||d),this.window=a(this.document[0].defaultView||this.document[0].parentWindow)),this.options=a.widget.extend({},this.options,this._getCreateOptions(),c),this._create(),this._trigger("create",null,this._getCreateEventData()),this._init()},_getCreateOptions:a.noop,_getCreateEventData:a.noop,_create:a.noop,_init:a.noop,destroy:function(){this._destroy(),this.element.unbind(this.eventNamespace).removeData(this.widgetFullName).removeData(a.camelCase(this.widgetFullName)),this.widget().unbind(this.eventNamespace).removeAttr("aria-disabled").removeClass(this.widgetFullName+"-disabled ui-state-disabled"),this.bindings.unbind(this.eventNamespace),this.hoverable.removeClass("ui-state-hover"),this.focusable.removeClass("ui-state-focus")},_destroy:a.noop,widget:function(){return this.element},option:function(b,c){var d,e,f,g=b;if(0===arguments.length)return a.widget.extend({},this.options);if("string"==typeof b)if(g={},d=b.split("."),b=d.shift(),d.length){for(e=g[b]=a.widget.extend({},this.options[b]),f=0;f<d.length-1;f++)e[d[f]]=e[d[f]]||{},e=e[d[f]];if(b=d.pop(),1===arguments.length)return void 0===e[b]?null:e[b];e[b]=c}else{if(1===arguments.length)return void 0===this.options[b]?null:this.options[b];g[b]=c}return this._setOptions(g),this},_setOptions:function(a){var b;for(b in a)this._setOption(b,a[b]);return this},_setOption:function(a,b){return this.options[a]=b,"disabled"===a&&(this.widget().toggleClass(this.widgetFullName+"-disabled",!!b),b&&(this.hoverable.removeClass("ui-state-hover"),this.focusable.removeClass("ui-state-focus"))),this},enable:function(){return this._setOptions({disabled:!1})},disable:function(){return this._setOptions({disabled:!0})},_on:function(b,c,d){var e,f=this;"boolean"!=typeof b&&(d=c,c=b,b=!1),d?(c=e=a(c),this.bindings=this.bindings.add(c)):(d=c,c=this.element,e=this.widget()),a.each(d,function(d,g){function h(){return b||f.options.disabled!==!0&&!a(this).hasClass("ui-state-disabled")?("string"==typeof g?f[g]:g).apply(f,arguments):void 0}"string"!=typeof g&&(h.guid=g.guid=g.guid||h.guid||a.guid++);var i=d.match(/^([\w:-]*)\s*(.*)$/),j=i[1]+f.eventNamespace,k=i[2];k?e.delegate(k,j,h):c.bind(j,h)})},_off:function(b,c){c=(c||"").split(" ").join(this.eventNamespace+" ")+this.eventNamespace,b.unbind(c).undelegate(c),this.bindings=a(this.bindings.not(b).get()),this.focusable=a(this.focusable.not(b).get()),this.hoverable=a(this.hoverable.not(b).get())},_delay:function(a,b){function c(){return("string"==typeof a?d[a]:a).apply(d,arguments)}var d=this;return setTimeout(c,b||0)},_hoverable:function(b){this.hoverable=this.hoverable.add(b),this._on(b,{mouseenter:function(b){a(b.currentTarget).addClass("ui-state-hover")},mouseleave:function(b){a(b.currentTarget).removeClass("ui-state-hover")}})},_focusable:function(b){this.focusable=this.focusable.add(b),this._on(b,{focusin:function(b){a(b.currentTarget).addClass("ui-state-focus")},focusout:function(b){a(b.currentTarget).removeClass("ui-state-focus")}})},_trigger:function(b,c,d){var e,f,g=this.options[b];if(d=d||{},c=a.Event(c),c.type=(b===this.widgetEventPrefix?b:this.widgetEventPrefix+b).toLowerCase(),c.target=this.element[0],f=c.originalEvent)for(e in f)e in c||(c[e]=f[e]);return this.element.trigger(c,d),!(a.isFunction(g)&&g.apply(this.element[0],[c].concat(d))===!1||c.isDefaultPrevented())}},a.each({show:"fadeIn",hide:"fadeOut"},function(b,c){a.Widget.prototype["_"+b]=function(d,e,f){"string"==typeof e&&(e={effect:e});var g,h=e?e===!0||"number"==typeof e?c:e.effect||c:b;e=e||{},"number"==typeof e&&(e={duration:e}),g=!a.isEmptyObject(e),e.complete=f,e.delay&&d.delay(e.delay),g&&a.effects&&a.effects.effect[h]?d[b](e):h!==b&&d[h]?d[h](e.duration,e.easing,f):d.queue(function(c){a(this)[b](),f&&f.call(d[0]),c()})}}),a.widget});
;/*!
 * jQuery UI Mouse 1.11.2
 * http://jqueryui.com
 *
 * Copyright 2014 jQuery Foundation and other contributors
 * Released under the MIT license.
 * http://jquery.org/license
 *
 * http://api.jqueryui.com/mouse/
 */
!function(a){"function"==typeof define&&define.amd?define(["jquery","./widget"],a):a(jQuery)}(function(a){var b=!1;return a(document).mouseup(function(){b=!1}),a.widget("ui.mouse",{version:"1.11.2",options:{cancel:"input,textarea,button,select,option",distance:1,delay:0},_mouseInit:function(){var b=this;this.element.bind("mousedown."+this.widgetName,function(a){return b._mouseDown(a)}).bind("click."+this.widgetName,function(c){return!0===a.data(c.target,b.widgetName+".preventClickEvent")?(a.removeData(c.target,b.widgetName+".preventClickEvent"),c.stopImmediatePropagation(),!1):void 0}),this.started=!1},_mouseDestroy:function(){this.element.unbind("."+this.widgetName),this._mouseMoveDelegate&&this.document.unbind("mousemove."+this.widgetName,this._mouseMoveDelegate).unbind("mouseup."+this.widgetName,this._mouseUpDelegate)},_mouseDown:function(c){if(!b){this._mouseMoved=!1,this._mouseStarted&&this._mouseUp(c),this._mouseDownEvent=c;var d=this,e=1===c.which,f="string"==typeof this.options.cancel&&c.target.nodeName?a(c.target).closest(this.options.cancel).length:!1;return e&&!f&&this._mouseCapture(c)?(this.mouseDelayMet=!this.options.delay,this.mouseDelayMet||(this._mouseDelayTimer=setTimeout(function(){d.mouseDelayMet=!0},this.options.delay)),this._mouseDistanceMet(c)&&this._mouseDelayMet(c)&&(this._mouseStarted=this._mouseStart(c)!==!1,!this._mouseStarted)?(c.preventDefault(),!0):(!0===a.data(c.target,this.widgetName+".preventClickEvent")&&a.removeData(c.target,this.widgetName+".preventClickEvent"),this._mouseMoveDelegate=function(a){return d._mouseMove(a)},this._mouseUpDelegate=function(a){return d._mouseUp(a)},this.document.bind("mousemove."+this.widgetName,this._mouseMoveDelegate).bind("mouseup."+this.widgetName,this._mouseUpDelegate),c.preventDefault(),b=!0,!0)):!0}},_mouseMove:function(b){if(this._mouseMoved){if(a.ui.ie&&(!document.documentMode||document.documentMode<9)&&!b.button)return this._mouseUp(b);if(!b.which)return this._mouseUp(b)}return(b.which||b.button)&&(this._mouseMoved=!0),this._mouseStarted?(this._mouseDrag(b),b.preventDefault()):(this._mouseDistanceMet(b)&&this._mouseDelayMet(b)&&(this._mouseStarted=this._mouseStart(this._mouseDownEvent,b)!==!1,this._mouseStarted?this._mouseDrag(b):this._mouseUp(b)),!this._mouseStarted)},_mouseUp:function(c){return this.document.unbind("mousemove."+this.widgetName,this._mouseMoveDelegate).unbind("mouseup."+this.widgetName,this._mouseUpDelegate),this._mouseStarted&&(this._mouseStarted=!1,c.target===this._mouseDownEvent.target&&a.data(c.target,this.widgetName+".preventClickEvent",!0),this._mouseStop(c)),b=!1,!1},_mouseDistanceMet:function(a){return Math.max(Math.abs(this._mouseDownEvent.pageX-a.pageX),Math.abs(this._mouseDownEvent.pageY-a.pageY))>=this.options.distance},_mouseDelayMet:function(){return this.mouseDelayMet},_mouseStart:function(){},_mouseDrag:function(){},_mouseStop:function(){},_mouseCapture:function(){return!0}})});
;/*!
 * jQuery UI Slider 1.11.2
 * http://jqueryui.com
 *
 * Copyright 2014 jQuery Foundation and other contributors
 * Released under the MIT license.
 * http://jquery.org/license
 *
 * http://api.jqueryui.com/slider/
 */
!function(a){"function"==typeof define&&define.amd?define(["jquery","./core","./mouse","./widget"],a):a(jQuery)}(function(a){return a.widget("ui.slider",a.ui.mouse,{version:"1.11.2",widgetEventPrefix:"slide",options:{animate:!1,distance:0,max:100,min:0,orientation:"horizontal",range:!1,step:1,value:0,values:null,change:null,slide:null,start:null,stop:null},numPages:5,_create:function(){this._keySliding=!1,this._mouseSliding=!1,this._animateOff=!0,this._handleIndex=null,this._detectOrientation(),this._mouseInit(),this._calculateNewMax(),this.element.addClass("ui-slider ui-slider-"+this.orientation+" ui-widget ui-widget-content ui-corner-all"),this._refresh(),this._setOption("disabled",this.options.disabled),this._animateOff=!1},_refresh:function(){this._createRange(),this._createHandles(),this._setupEvents(),this._refreshValue()},_createHandles:function(){var b,c,d=this.options,e=this.element.find(".ui-slider-handle").addClass("ui-state-default ui-corner-all"),f="<span class='ui-slider-handle ui-state-default ui-corner-all' tabindex='0'></span>",g=[];for(c=d.values&&d.values.length||1,e.length>c&&(e.slice(c).remove(),e=e.slice(0,c)),b=e.length;c>b;b++)g.push(f);this.handles=e.add(a(g.join("")).appendTo(this.element)),this.handle=this.handles.eq(0),this.handles.each(function(b){a(this).data("ui-slider-handle-index",b)})},_createRange:function(){var b=this.options,c="";b.range?(b.range===!0&&(b.values?b.values.length&&2!==b.values.length?b.values=[b.values[0],b.values[0]]:a.isArray(b.values)&&(b.values=b.values.slice(0)):b.values=[this._valueMin(),this._valueMin()]),this.range&&this.range.length?this.range.removeClass("ui-slider-range-min ui-slider-range-max").css({left:"",bottom:""}):(this.range=a("<div></div>").appendTo(this.element),c="ui-slider-range ui-widget-header ui-corner-all"),this.range.addClass(c+("min"===b.range||"max"===b.range?" ui-slider-range-"+b.range:""))):(this.range&&this.range.remove(),this.range=null)},_setupEvents:function(){this._off(this.handles),this._on(this.handles,this._handleEvents),this._hoverable(this.handles),this._focusable(this.handles)},_destroy:function(){this.handles.remove(),this.range&&this.range.remove(),this.element.removeClass("ui-slider ui-slider-horizontal ui-slider-vertical ui-widget ui-widget-content ui-corner-all"),this._mouseDestroy()},_mouseCapture:function(b){var c,d,e,f,g,h,i,j,k=this,l=this.options;return l.disabled?!1:(this.elementSize={width:this.element.outerWidth(),height:this.element.outerHeight()},this.elementOffset=this.element.offset(),c={x:b.pageX,y:b.pageY},d=this._normValueFromMouse(c),e=this._valueMax()-this._valueMin()+1,this.handles.each(function(b){var c=Math.abs(d-k.values(b));(e>c||e===c&&(b===k._lastChangedValue||k.values(b)===l.min))&&(e=c,f=a(this),g=b)}),h=this._start(b,g),h===!1?!1:(this._mouseSliding=!0,this._handleIndex=g,f.addClass("ui-state-active").focus(),i=f.offset(),j=!a(b.target).parents().addBack().is(".ui-slider-handle"),this._clickOffset=j?{left:0,top:0}:{left:b.pageX-i.left-f.width()/2,top:b.pageY-i.top-f.height()/2-(parseInt(f.css("borderTopWidth"),10)||0)-(parseInt(f.css("borderBottomWidth"),10)||0)+(parseInt(f.css("marginTop"),10)||0)},this.handles.hasClass("ui-state-hover")||this._slide(b,g,d),this._animateOff=!0,!0))},_mouseStart:function(){return!0},_mouseDrag:function(a){var b={x:a.pageX,y:a.pageY},c=this._normValueFromMouse(b);return this._slide(a,this._handleIndex,c),!1},_mouseStop:function(a){return this.handles.removeClass("ui-state-active"),this._mouseSliding=!1,this._stop(a,this._handleIndex),this._change(a,this._handleIndex),this._handleIndex=null,this._clickOffset=null,this._animateOff=!1,!1},_detectOrientation:function(){this.orientation="vertical"===this.options.orientation?"vertical":"horizontal"},_normValueFromMouse:function(a){var b,c,d,e,f;return"horizontal"===this.orientation?(b=this.elementSize.width,c=a.x-this.elementOffset.left-(this._clickOffset?this._clickOffset.left:0)):(b=this.elementSize.height,c=a.y-this.elementOffset.top-(this._clickOffset?this._clickOffset.top:0)),d=c/b,d>1&&(d=1),0>d&&(d=0),"vertical"===this.orientation&&(d=1-d),e=this._valueMax()-this._valueMin(),f=this._valueMin()+d*e,this._trimAlignValue(f)},_start:function(a,b){var c={handle:this.handles[b],value:this.value()};return this.options.values&&this.options.values.length&&(c.value=this.values(b),c.values=this.values()),this._trigger("start",a,c)},_slide:function(a,b,c){var d,e,f;this.options.values&&this.options.values.length?(d=this.values(b?0:1),2===this.options.values.length&&this.options.range===!0&&(0===b&&c>d||1===b&&d>c)&&(c=d),c!==this.values(b)&&(e=this.values(),e[b]=c,f=this._trigger("slide",a,{handle:this.handles[b],value:c,values:e}),d=this.values(b?0:1),f!==!1&&this.values(b,c))):c!==this.value()&&(f=this._trigger("slide",a,{handle:this.handles[b],value:c}),f!==!1&&this.value(c))},_stop:function(a,b){var c={handle:this.handles[b],value:this.value()};this.options.values&&this.options.values.length&&(c.value=this.values(b),c.values=this.values()),this._trigger("stop",a,c)},_change:function(a,b){if(!this._keySliding&&!this._mouseSliding){var c={handle:this.handles[b],value:this.value()};this.options.values&&this.options.values.length&&(c.value=this.values(b),c.values=this.values()),this._lastChangedValue=b,this._trigger("change",a,c)}},value:function(a){return arguments.length?(this.options.value=this._trimAlignValue(a),this._refreshValue(),void this._change(null,0)):this._value()},values:function(b,c){var d,e,f;if(arguments.length>1)return this.options.values[b]=this._trimAlignValue(c),this._refreshValue(),void this._change(null,b);if(!arguments.length)return this._values();if(!a.isArray(arguments[0]))return this.options.values&&this.options.values.length?this._values(b):this.value();for(d=this.options.values,e=arguments[0],f=0;f<d.length;f+=1)d[f]=this._trimAlignValue(e[f]),this._change(null,f);this._refreshValue()},_setOption:function(b,c){var d,e=0;switch("range"===b&&this.options.range===!0&&("min"===c?(this.options.value=this._values(0),this.options.values=null):"max"===c&&(this.options.value=this._values(this.options.values.length-1),this.options.values=null)),a.isArray(this.options.values)&&(e=this.options.values.length),"disabled"===b&&this.element.toggleClass("ui-state-disabled",!!c),this._super(b,c),b){case"orientation":this._detectOrientation(),this.element.removeClass("ui-slider-horizontal ui-slider-vertical").addClass("ui-slider-"+this.orientation),this._refreshValue(),this.handles.css("horizontal"===c?"bottom":"left","");break;case"value":this._animateOff=!0,this._refreshValue(),this._change(null,0),this._animateOff=!1;break;case"values":for(this._animateOff=!0,this._refreshValue(),d=0;e>d;d+=1)this._change(null,d);this._animateOff=!1;break;case"step":case"min":case"max":this._animateOff=!0,this._calculateNewMax(),this._refreshValue(),this._animateOff=!1;break;case"range":this._animateOff=!0,this._refresh(),this._animateOff=!1}},_value:function(){var a=this.options.value;return a=this._trimAlignValue(a)},_values:function(a){var b,c,d;if(arguments.length)return b=this.options.values[a],b=this._trimAlignValue(b);if(this.options.values&&this.options.values.length){for(c=this.options.values.slice(),d=0;d<c.length;d+=1)c[d]=this._trimAlignValue(c[d]);return c}return[]},_trimAlignValue:function(a){if(a<=this._valueMin())return this._valueMin();if(a>=this._valueMax())return this._valueMax();var b=this.options.step>0?this.options.step:1,c=(a-this._valueMin())%b,d=a-c;return 2*Math.abs(c)>=b&&(d+=c>0?b:-b),parseFloat(d.toFixed(5))},_calculateNewMax:function(){var a=(this.options.max-this._valueMin())%this.options.step;this.max=this.options.max-a},_valueMin:function(){return this.options.min},_valueMax:function(){return this.max},_refreshValue:function(){var b,c,d,e,f,g=this.options.range,h=this.options,i=this,j=this._animateOff?!1:h.animate,k={};this.options.values&&this.options.values.length?this.handles.each(function(d){c=(i.values(d)-i._valueMin())/(i._valueMax()-i._valueMin())*100,k["horizontal"===i.orientation?"left":"bottom"]=c+"%",a(this).stop(1,1)[j?"animate":"css"](k,h.animate),i.options.range===!0&&("horizontal"===i.orientation?(0===d&&i.range.stop(1,1)[j?"animate":"css"]({left:c+"%"},h.animate),1===d&&i.range[j?"animate":"css"]({width:c-b+"%"},{queue:!1,duration:h.animate})):(0===d&&i.range.stop(1,1)[j?"animate":"css"]({bottom:c+"%"},h.animate),1===d&&i.range[j?"animate":"css"]({height:c-b+"%"},{queue:!1,duration:h.animate}))),b=c}):(d=this.value(),e=this._valueMin(),f=this._valueMax(),c=f!==e?(d-e)/(f-e)*100:0,k["horizontal"===this.orientation?"left":"bottom"]=c+"%",this.handle.stop(1,1)[j?"animate":"css"](k,h.animate),"min"===g&&"horizontal"===this.orientation&&this.range.stop(1,1)[j?"animate":"css"]({width:c+"%"},h.animate),"max"===g&&"horizontal"===this.orientation&&this.range[j?"animate":"css"]({width:100-c+"%"},{queue:!1,duration:h.animate}),"min"===g&&"vertical"===this.orientation&&this.range.stop(1,1)[j?"animate":"css"]({height:c+"%"},h.animate),"max"===g&&"vertical"===this.orientation&&this.range[j?"animate":"css"]({height:100-c+"%"},{queue:!1,duration:h.animate}))},_handleEvents:{keydown:function(b){var c,d,e,f,g=a(b.target).data("ui-slider-handle-index");switch(b.keyCode){case a.ui.keyCode.HOME:case a.ui.keyCode.END:case a.ui.keyCode.PAGE_UP:case a.ui.keyCode.PAGE_DOWN:case a.ui.keyCode.UP:case a.ui.keyCode.RIGHT:case a.ui.keyCode.DOWN:case a.ui.keyCode.LEFT:if(b.preventDefault(),!this._keySliding&&(this._keySliding=!0,a(b.target).addClass("ui-state-active"),c=this._start(b,g),c===!1))return}switch(f=this.options.step,d=e=this.options.values&&this.options.values.length?this.values(g):this.value(),b.keyCode){case a.ui.keyCode.HOME:e=this._valueMin();break;case a.ui.keyCode.END:e=this._valueMax();break;case a.ui.keyCode.PAGE_UP:e=this._trimAlignValue(d+(this._valueMax()-this._valueMin())/this.numPages);break;case a.ui.keyCode.PAGE_DOWN:e=this._trimAlignValue(d-(this._valueMax()-this._valueMin())/this.numPages);break;case a.ui.keyCode.UP:case a.ui.keyCode.RIGHT:if(d===this._valueMax())return;e=this._trimAlignValue(d+f);break;case a.ui.keyCode.DOWN:case a.ui.keyCode.LEFT:if(d===this._valueMin())return;e=this._trimAlignValue(d-f)}this._slide(b,g,e)},keyup:function(b){var c=a(b.target).data("ui-slider-handle-index");this._keySliding&&(this._keySliding=!1,this._stop(b,c),this._change(b,c),a(b.target).removeClass("ui-state-active"))}}})});
;/*!
 * jQuery UI Touch Punch 0.2.3
 *
 * Copyright 2011–2014, Dave Furfero
 * Dual licensed under the MIT or GPL Version 2 licenses.
 *
 * Depends:
 *  jquery.ui.widget.js
 *  jquery.ui.mouse.js
 */
!function(a){function b(a,b){if(!(a.originalEvent.touches.length>1)){a.preventDefault();var c=a.originalEvent.changedTouches[0],d=document.createEvent("MouseEvents");d.initMouseEvent(b,!0,!0,window,1,c.screenX,c.screenY,c.clientX,c.clientY,!1,!1,!1,!1,0,null),a.target.dispatchEvent(d)}}if(a.support.touch="ontouchend"in document,a.support.touch){var c,d=a.ui.mouse.prototype,e=d._mouseInit,f=d._mouseDestroy;d._touchStart=function(a){var d=this;!c&&d._mouseCapture(a.originalEvent.changedTouches[0])&&(c=!0,d._touchMoved=!1,b(a,"mouseover"),b(a,"mousemove"),b(a,"mousedown"))},d._touchMove=function(a){c&&(this._touchMoved=!0,b(a,"mousemove"))},d._touchEnd=function(a){c&&(b(a,"mouseup"),b(a,"mouseout"),this._touchMoved||b(a,"click"),c=!1)},d._mouseInit=function(){var b=this;b.element.bind({touchstart:a.proxy(b,"_touchStart"),touchmove:a.proxy(b,"_touchMove"),touchend:a.proxy(b,"_touchEnd")}),e.call(b)},d._mouseDestroy=function(){var b=this;b.element.unbind({touchstart:a.proxy(b,"_touchStart"),touchmove:a.proxy(b,"_touchMove"),touchend:a.proxy(b,"_touchEnd")}),f.call(b)}}}(jQuery);