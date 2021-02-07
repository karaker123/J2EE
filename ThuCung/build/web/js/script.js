function textbox(box, boxval){
	$(box).val(boxval);
	$(box).focus(function(){
		if($(this).val()== boxval) {
			$(this).val('');
			}
		})
	$(box).blur(function(){
		if($(this).val()== '') {
			$(this).val(boxval);
			}
		})
	};
	
			var mouse_is_inside=false;
			function clickOutside(clickselector,hideselector){
		$(clickselector).hover(function(){
		mouse_is_inside=true;
		}, function(){
		mouse_is_inside=false;
		});
		$("body").mouseup(function(){
		if(!mouse_is_inside){ $(hideselector).css("display","none").animate({height: 0}); }
		});
		};
	
	function checkLength(box, value){
	if ($(box).val().length > value){
		return true;
		}else{return false;}
	}
	
function checkMail(mailForm){
	var mailFilter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	return mailFilter.test($(mailForm).val());
	}	
	
	function checkContact(){
		
	$('.error').removeClass('error');
	errorMessage = "";
	var name = true;
	var mail = true;
	var phone = true;
	var content = true; 
		
	
	
	if(!checkLength('.name', 0) || $('.name').val() == 'Name'){ 
		$('.name').addClass('error');
		$('#name').attr("title","filefield is required")
		name = false;
		}else if(!checkLength('.name', 5)){
			$('.name').addClass('error');
	
			name = false;
			}
	
	if(!checkLength('.email', 0) || $('.email').val() == 'Email'){ 
		$('.email').addClass('error');
		$('#email').attr("title","please enter valid email")
		
		mail = false;
		}else if (!checkMail('.email')){
			$('.email').addClass('error');
			mail = false;
			};
			
			
	if(!checkLength('.content', 0) || $('.content').val() == 'Comment'){ 
		$('.content').addClass('error');
			$('#content').attr("title","filefield is required")
		
		content = false;
		}else if(!checkLength('.content', 10)){
			$('#content').addClass('error');
			content = false;
			};
			
			
	
	var ketqua = name && mail && content;	
		
	if(!ketqua)	{
		return false;
		}	
	};
	
	
		function checkContact2(){
		
	$('.error').removeClass('error');
	errorMessage = "";
	var name = true;
	var mail = true;
	var phone = true;
	var content = true; 
	if(!checkLength('.name', 0) || $('.name').val() == 'Name'){ 
		$('.name').addClass('error');
		$('#name').attr("title","filefield is required")
		name = false;
		}else if(!checkLength('.name', 5)){
			$('.name').addClass('error');
			$('#name').attr("title","your name id too short")
	
			name = false;
			}
	
	if(!checkLength('.email', 0) || $('.email').val() == 'Email'){ 
		$('.email').addClass('error');
		$('#email').attr("title","please enter valid email")
		
		mail = false;
		}else if (!checkMail('.email')){
			$('.email').addClass('error');
			$('#email').attr("title","please enter valid email")
			mail = false;
			};
			
			
	if(!checkLength('.content', 0) || $('.content').val() == 'Comment'){ 
		$('.content').addClass('error');
			$('#content').attr("title","filefield is required")
		
		content = false;
		}else if(!checkLength('.content', 10)){
			$('#content').addClass('error');
			$('#content').attr("title","your comment too short")
			content = false;
			};
			
			if(!checkLength('#phone', 0) || $('#phone').val() == 'Phone'){ 
		$('#phone').addClass('error');
		$('#phone').attr("title","plesase enter valid phone number");
		phone = false;}
	else if(isNaN($('#phone').val()) || $('#phone').val().length < 7){
		$('#phone').addClass('error');
		$('#phone').attr("title","plesase enter valid phone number");
		phone = false;
		};	
	
	var ketqua = name && mail && content && phone;	
		
	if(!ketqua)	{
		return false;
		}	
	};
	
	
			//dropdown menu
		function dropDownmenu(select){
				$(select).click(function(){
					if($(this).find(".select").css("display")=="none"){
						$(".input").find(".select").css("display","none").stop().animate({height:0});
						$(this).find(".select").css("display","block");
						$(this).find(".select").stop().animate({height:$(this).find(".select li").length*23},"fast");
						$(this).find(".select").find("li").click(function(){
						var val =$(this).text();
						var val2 = $(this).attr("value");
						$(this).parent().parent().find(".show-text").attr("value",val);
						$(this).parent().parent().find(".hidden-value").attr("value",val2);
						});
					}
				else{
						$(this).find("ul").stop().animate({height:0});
						$(this).find("ul").css("display","none");
				}
				});
		} 
	
	
$(document).ready(function(){
	
	
		dropDownmenu(".input");
	clickOutside(".input",".input ul");
	$(".fi > li").hover(
	function(){
		$(this).find(".fii").css("display","block").stop().animate({"margin-top":0,"opacity":1})
		},
		function(){
			var top =  $(this).find(".fii").height();
			$(this).find(".fii").stop().animate({"margin-top":-top,"opacity":0})
			}
	);
	
	$(".fi > li").each(function(index, element) {
        var left = parseInt($(this).find(".cover-fii").width() - $(this).width());
		$(this).find(".cover-fii").css("left",-left/2);
    });
	$(".fii").each(function(index, element) {
        $(this).css("margin-top",-$(this).height())
    });
	
	$("#some-img").carouFredSel({
		pagination  : "#pagination",
		next :"#next-bt",
		prev :"#prev-bt",
		scroll :{ fx :"fade"}
		});
		
		$(".tab-menu a").click(function(){
			$(".tab-menu a").removeClass("opened");
			$(this).addClass("opened");
			var open = $(this).attr("href");
			$("#best-sell").css("display","none");
			$("#new-items").css("display","none");
			$(open).css("display","block");
			
			return false;
			});
			
			$(".items").hover(function(){
				$(this).css({"border-color":"#c3c3c3","border-bottom-color":"#a8a8a8"});
				$(this).find(".add-to-cart").css("display","block");
				},
				function(){
				$(this).css({"border-color":"#fff"});
				$(this).find(".add-to-cart").css("display","none");
				}
				);
				
		$("#cover-logo").carouFredSel({
			next :"#nextbt",
			prev :"#prevbt",
			scroll :{
			duration : 1000,
			items :1,
			easing : "linear",
			}
			}); 
	


});