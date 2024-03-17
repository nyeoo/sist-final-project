$(function () {

  /* ====================== 공통 ====================== */
  // html include
  function includeHtml() {
    if ($('[data-include]').length) {
      $.each($('[data-include]'), function () {
        var self, url;
        self = $(this);
        url = self.data("include");
        self.load(url, function () {
          self.removeAttr("data-include");
        });
      });
    };
  }

  // self.css("background", "yellow");

  /* ====================== 서브 ====================== */
  // PostList - 마감 스와이퍼
  if ($('.deadline-box .deadlineSwiper').length) {
    var swiper = new Swiper(".deadline-box .deadlineSwiper", {
      slidesPerView: 1,
      spaceBetween: 10,
      autoplay: {
        delay: 5000,
      },
      breakpoints: {
        576: {  // >= 320px
          slidesPerView: 2,
          spaceBetween: 20
        },
        768: {
          slidesPerView: 3,
          spaceBetween: 15
        },
        992: {
          slidesPerView: 4,
          spaceBetween: 20
        }
      },
      pagination: {
        el: ".deadline-box .swiper-pagination",
        clickable: true,
      },
      navigation: {
        nextEl: ".deadline-box .swiper-btn .swiper-button-next",
        prevEl: ".deadline-box .swiper-btn .swiper-button-prev",
      },
    });
  };

  // 찜하기
  if ($('.form-check.zzim:not(.notzz)').length) {
	  $.each($('.form-check.zzim:not(.notzz)'), function () {
      var self = $(this).find("input");
      self.click(function () {
        self.parents(".card").toggleClass("add-zzim");
      });
      if (self.is(':checked')) {
        self.parents(".card").addClass("add-zzim");
      } else {
        self.parents(".card").removeClass("add-zzim");
      }

    });
  };

  // 스킬
  if ($('.skill-check:not(.not-action) .skill-item .form-check-input').length) {
    $.each($('.skill-check:not(.not-action) .skill-item .form-check-input'), function () {
      var self = $(this);
      self.click(function () {
        self.parents(".skill-item").toggleClass("add-skill");
      });
      if (self.is(':checked')) {
        self.parents(".skill-item").addClass("add-skill");
      } else {
        self.parents(".skill-item").removeClass("add-skill");
      }

    });
  };

  // 달력(기본)
  if($( ".datepicker" ).length){
    $.each($( ".datepicker" ),function () {
      var self = $(this);
      self.datepicker();

    });
    $.datepicker.setDefaults({
    	showMonthAfterYear: true,
    	showOtherMonths: true,
    	prevText: '이전 달',
    	nextText: '다음 달',
    	// dateFormat: "yy-mm-dd",
    	firstDay : 1,
    	dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
    	dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
    	monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
    	monthNames: ['01','02','03','04','05','06','07','08','09','10','11','12'],
    	yearSuffix: '.',
    	showButtonPanel: true,
    });
  }

  // 달력 대형
  if($( ".calendar-datepicker" ).length){
    $.each($( ".calendar-datepicker" ),function () {
      var self = $(this);
      self.datepicker({
        // changeMonth: true,
        // changeYear: true,
      });

    });
    $.datepicker.setDefaults({
    	showMonthAfterYear: true,
    	showOtherMonths: true,
    	prevText: '이전 달',
    	nextText: '다음 달',
    	// dateFormat: "yy-mm-dd",
    	firstDay : 1,
    	dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
    	dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
    	monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
    	monthNames: ['01','02','03','04','05','06','07','08','09','10','11','12'],
    	yearSuffix: '.',
    	showButtonPanel: true,
    });
  }

  // 달력(from - to)
  if($(".range-datepicker").length){
    $.each($( ".range-datepicker" ),function () {
      var dateFrom = $(this).find(".date-from");
      var dateTo = $(this).find(".date-to");
      var dateFormat = "mm/dd/yy",
      from = dateFrom
        .datepicker({
          defaultDate: "+1w",
          // changeMonth: true,
          numberOfMonths: 1
        })
        .on( "change", function() {
          to.datepicker( "option", "minDate", getDate( this ) );
        }),
      to = dateTo.datepicker({
        defaultDate: "+1w",
        // changeMonth: true,
        numberOfMonths: 1
      })
      .on( "change", function() {
        from.datepicker( "option", "maxDate", getDate( this ) );
      });
 
      function getDate( element ) {
        var date;
        try {
          date = $.datepicker.parseDate( dateFormat, element.value );
        } catch( error ) {
          date = null;
        }
  
        return date;
      }
    });
  }
  
  // 회원가입 달력
  if($(".range-datepicker02").length){
    $.each($( ".range-datepicker02" ),function () {
      var dateFrom = $(this).find(".job-date-from");
      var dateTo = $(this).find(".job-date-to");
      var format = "yy-mm-dd",
      from = dateFrom
        .datepicker({
          defaultDate: "+1w",
          // changeMonth: true,
          numberOfMonths: 1,
          language: 'kr',
          dateFormat: "yy-mm-dd"
        })
        .on( "change", function() {
          to.datepicker( "option", "minDate", getDate( this ) );
        }),
      to = dateTo.datepicker({
        defaultDate: "+1w",
        // changeMonth: true,
        numberOfMonths: 1,
        language: 'kr',
        dateFormat: "yy-mm-dd"
      })
      .on( "change", function() {
        from.datepicker( "option", "maxDate", getDate( this ) );
      });

      function getDate( element ) {
        var date;
        try {
          date = $.datepicker.parseDate( dateFormat, element.value );
        } catch( error ) {
          date = null;
        }

        return date;
      }
    });
  }
  
  // MeetGroup 사이드 토글
  if ($('.toggle-sidebar-btn')) {
      $('.toggle-sidebar-btn').on('click', function(e) {
      $('body').toggleClass('toggle-sidebar')
      })
  }
  
  // 댓글 펼치기/접기-------------------------------------------
  $('.comment_more').on('click', function(){
      if(!$(this).parents('.comment_area_wrap').hasClass('open')){
          $('.comment_area_wrap').removeClass("open")
          $(this).parents('.comment_area_wrap').addClass("open")

          // 댓글 펼쳤을때 스크롤 위로 올라가도록
          var hArr = $(this).parents('.pop_con').children().not('.comment_area_wrap');
          var h = 0;
          
          for(var i = 0; i < hArr.length; i++){
              h += hArr.eq(i).outerHeight();
              h += parseInt(hArr.eq(i).css('marginTop').split('px')[0]);
              h += parseInt(hArr.eq(i).css('marginBottom').split('px')[0]);
          }

          $('.pop_con').animate({scrollTop:  h}, 800);

      } else{
          $(this).parents('.comment_area_wrap').removeClass("open")
      }
  })

  // 답글 펼치기/접기-------------------------------------------
  $('.btn_cmnt').on('click', function(){
      if(!$(this).parents('.comment_group').hasClass('open')){
          $(this).parents('.comment_group').addClass("open")
      } else{
          $(this).parents('.comment_group').removeClass("open")
      }
  })
  
  // textarea 카운트
  $('[data-textarea]').each(function(index, item){
    var textareaName = $(this).data('textarea');
    var lengthCnt = $(this).parents('.comment_reg').find('[data-textarea-cnt="' + textareaName + '"]');

    lengthCnt.html($(this).val().length);
    
    $(item).on('input', function(){
        lengthCnt.html($(this).val().length);
    })
  })
  
  // 회원가입 스와이퍼
  if($(".join-swiper").length) {
	  // console.log("aaa");
	  var joinSwiper = new Swiper(".join-swiper", {
	      pagination: {
	          el: ".join-swiper .swiper-pagination",
	          clickable: true,
	          renderBullet: function (index, className) {
	            return '<button class="' + className + '"><span>' + (index + 1) + "</span></button>";
	          },
	        },
	      navigation: {
	        nextEl: ".join-swiper .swiper-button-next",
	        prevEl: ".join-swiper .swiper-button-prev",
	      },
	    });
	  
	  joinSwiper.slideTo(1, 0, true);
	  
	  /*
		 * $(".join-step01").on('click', function(e) { joinSwiper.slideNext();
		 * }); $(".join-step02").on('click', function(e) {
		 * joinSwiper.slideNext(); });
		 */
	  
	  
  }
    
  // 그룹홈 이동
  // grouphome.action?memCode=${sessionScope.loginDTO.piMemCode}
  if($("#groupHomeLink").length) {
     var sessionScopePiMemCode = $("#sessionScopePiMemCode").val();
     var opCode = $("#opCode").val();
     var leaveTeamPcCodes = $("#leaveTeamPcCodes").val();
     console.log("opCode : "+opCode);
     console.log("leaveTeamPcCodes : "+opCode);
     
     if (opCode == "0")
     {
    	 $("#ingGroupModal").modal("show");
    	 
     }
     if (leaveTeamPcCodes == "1") {
    	 $("#leaveGroupModal").modal("show");
     }
     $("#groupHomeLink").on("click", function(){
        if(sessionScopePiMemCode != "" ){
           $(location).attr("href", "grouphome.action?memCode=" + sessionScopePiMemCode);
        }
        else
        {
        	alert("로그인을 해주세요.");
        	$(location).attr("href", "../IT_MeetUp/login.action");
        }
        
     })
     
     
  };
 /* if($(".navbar").length) {
	    var sessionScopeadmin = $("#sessionScopeadmin").val();
	    // 페이지 로드 시에 실행되도록 변경
	    $(document).ready(function() {
	        if(sessionScopeadmin != "0" ){    // 관리자
	            // user-nav 안보이게
	            $(".user-nav").hide();
	            // admin-nav 보이게
	            $(".admin-nav").show();
	        }
	        else {
	            // user-nav 보이게
	            $(".user-nav").show();
	            // admin-nav 안보이게
	            $(".admin-nav").hide();
	        }
	    });
	}

  */
  
  
  
  
  
  
  


  // html include
  includeHtml();


});

// 유효하지 않은 필드 입력시 양식 제출 비활성화
(() => {
  'use strict'

  const forms = document.querySelectorAll('.needs-validation')

  Array.from(forms).forEach(form => {
    form.addEventListener('submit', event => {
      if (!form.checkValidity()) {
        event.preventDefault()
        event.stopPropagation()
      }

      form.classList.add('was-validated')
    }, false)
  })
})()

// 부트스트랩 툴팁
let tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
let tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))
