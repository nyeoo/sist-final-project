$(function () {

  /* ====================== 공통 ====================== */
  //html include
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

  //self.css("background", "yellow");

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
        nextEl: ".deadline-swiper-btn .swiper-button-next",
        prevEl: ".deadline-swiper-btn .swiper-button-prev",
      },
    });
  };

  //찜하기
  if ($('.form-check.zzim').length) {
    $.each($('.form-check.zzim'), function () {
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

  //스킬
  if ($('.skill-check .skill-item .form-check-input').length) {
    $.each($('.skill-check .skill-item .form-check-input'), function () {
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
  }
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

  // 달력 대형
  if($( ".calendar-datepicker" ).length){
    $.each($( ".calendar-datepicker" ),function () {
      var self = $(this);
      self.datepicker({
        // changeMonth: true,
        // changeYear: true,
      });

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
  


  //html include
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
const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))
