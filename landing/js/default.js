//0埋め関数
function zeroPadding(num,length){
    return ('0000000000' + num).slice(-length);
}

// DatePicker
$(function() {

  var oldest_date	= $("#oldest_datepicker_date_common").val();  //最古のデータ日時
  var latest_date	= $("#latest_datepicker_date").val();   //最新のデータ日時
  if(oldest_date !== null){ oldest_date = new Date(oldest_date) };    //最古のデータ日時が未定義なら0を入れて今日を選択
  latest_date     = latest_date == null ? 0 : new Date(latest_date);  //最新データ日時が未定義なら0を入れて今日を選択

  var dp_options = {
    gotoCurrent: false,
    minDate:oldest_date,  //各ページで最古のデータ日時を設定
    maxDate:latest_date,  //前日より後は指定不可
    dateFormat: "yy-mm-dd",
    numberOfMonths: 1,
    monthNames: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月'],
    dayNames: ['日', '月', '火', '水', '木', '金', '土'],
    dayNamesMin: ['日', '月', '火', '水', '木', '金', '土'],
    onSelect:function(date, obj){
      var from	= $("#from").val();
      var to		= $("#to").val();

      //Datepickerを使用した場合、「●日間」のナビリンクからフォーカス装飾を外す
      $('.serch_date_a').removeClass('fitter_active');

      //開始日と終了日が逆転した場合の回避
      if (from >= to) {
        switch (obj["id"]){
          case "to":
              to		= new Date(to);
              from	= new Date(to.getFullYear(), to.getMonth(), to.getDate()-7);
              $("#from").val(from.getFullYear() + "-" + zeroPadding((from.getMonth()+1), 2) + "-" + from.getDate());
              break;
          case "from":
              from	= new Date(from);
              to		= new Date(from.getFullYear(), from.getMonth(), from.getDate()+7);
              $("#to").val(to.getFullYear() + "-" + zeroPadding((to.getMonth()+1), 2) + "-" + to.getDate());
              break;
          default :
              break;
        }

        from	= from.getFullYear()+"-"+(from.getMonth()+1)+"-"+from.getDate();
        to		= to.getFullYear()+"-"+(to.getMonth()+1)+"-"+to.getDate();

      }

      //投稿一覧ページの並び替えリンクの装飾
      $(".compact-sort").find(".fitter_active").removeClass("fitter_active");

      var per_page;
      var sort_by = "media_post_datetime"; //default
      var asc_desc;
      data_loader(from, to, per_page, sort_by, asc_desc);


    }
  };

  $("#from").datepicker(dp_options);
  $("#to").datepicker(dp_options);

});


//ToolTips
//HTML側のclassに「tooltip_click」または「tooltip_hover」を指定→必須、タグタイプの指定は無し
//data-tooltip-textプロパティにツールチップ表示内容を指定→必須（例）data-tooltip-text="ツールチップ表示内容"
//data-tooltip-textプロパティにJquery等で動的に日付などを入れた場合かつ、data-tooltip-text内に「 datetime_exchange_text 」（前後半角スペース必須）の文字列が存在する場合、日付を置換して表示
//（上記例）<label class="tooltip_click" data-tooltip-text="ツールチップ内容 datetime_exchange_text " data-tooltip-datetime="2000-02-01"></label>
//（上記表示例）ツールチップ内容2000-02-01
$(function() {
    $('.tooltip_click').html('<i class="far fa-question-circle m_l5 color-pink"></i>');
    $('.tooltip_hover').html('<i class="far fa-question-circle m_l5 color-pink"></i>');
    $('.tooltip_click').tooltipster({
      animation			: 'fade',
      delay					: 300,
      arrow					: false,
      theme					: 'tooltipster-shadow',
      trigger				: 'custom',
      triggerOpen		:
      {
        click				: true,
        tap					: true
      },
      triggerClose	:
      {
        click				: true,
        mouseleave	: true,
        scroll			: true,
        tap					: true
      },
      distance			: 10, //ツールチップと要素の距離
      // side					: 'bottom',
      contentAsHTML : true,
      contentCloning: false,
      multiple      : true,
      //timer:300, //指定時間で消えるツールチップ
    }).on("mouseover", function(){
      var $tooltip_text = $(this).attr('data-tooltip-text'); //ツールチップで表示するテキスト
      //ツールチップ内に動的にテキストを表示する
      if ($tooltip_text.match(/ datetime_exchange_text /)) {
        //ツールチップ内に時間を表示させる
        var $tooltip_datetime_text = $(this).attr('date-tooltip-datetime');
        // $tooltip_text = !$tooltip_datetime_text ? $tooltip_text.replace('( datetime_exchange_text )', 'データ取得できませんでした。') : $tooltip_text.replace('( datetime_exchange_text )', $tooltip_datetime_text+"時点");
        $tooltip_text = !$tooltip_datetime_text ? $tooltip_text.replace('（ datetime_exchange_text ）', '') : $tooltip_text.replace('（ datetime_exchange_text ）', '（'+$tooltip_datetime_text+"時点）");
      }
      $(this).tooltipster('content', $tooltip_text);
    });

    //ホバーツールチップ
    $('.tooltip_hover').tooltipster({
      animation			: 'fade',
      delay					: 300,
      arrow					: false,
      theme					: 'tooltipster-shadow',
      trigger				: 'custom',
      triggerOpen		:
      {
       touchstart 	: true,
       hvoer				: true
      },
      triggerClose	  :
      {
       mouseleave	  : true,
       scroll			  : true,
       tap				  : true,
       touchleave   : true
      },
      distance			: 10, //ツールチップと要素の距離
      side					: 'right',
      contentAsHTML : true,
      contentCloning: false,
      multiple      : true,
      //timer:300, //指定時間で消えるツールチップ
    }).on("mouseover", function(){
      var $tooltip_text = $(this).attr('data-tooltip-text'); //ツールチップで表示するテキスト
      //ツールチップ内に動的にテキストを表示する
      if ($tooltip_text.match(/ datetime_exchange_text /)) {
        //ツールチップ内に時間を表示させる
        var $tooltip_datetime_text = $(this).attr('date-tooltip-datetime');
        $tooltip_text = !$tooltip_datetime_text ? $tooltip_text.replace(' datetime_exchange_text ', '閲覧数不足のためデータ取得できませんでした。') : $tooltip_text.replace(' datetime_exchange_text ', $tooltip_datetime_text+"時点");
      }
      $(this).tooltipster('content', $tooltip_text);
    });
});


//モーダル表示制御
$(function(){
	$('.izimodal').iziModal({
		width: '80%',
		fullscreen: true,
		padding: 20,
		loop: true,
		theme: 'light',
		overlayColor: 'rgba(0, 0, 0, 0.7)',
		transitionIn: 'fadeInRight',
		transitionOut: 'fadeOutUp',
		iframe: true,
	});
});

// 投稿詳細用モーダル
$(function(){
  $('.media_detail_modal').iziModal({
    width: '80vw',
    iframeHeight: '90vh',
    fullscreen: true,
    loop: true,
    theme: '',
    overlayColor: 'rgba(0, 0, 0, 0.7)',
    transitionIn: 'fadeInRight',
    transitionOut: 'fadeOutUp',
    iframe: true,
  });
});


//インフォメーション用モーダル
$(function(){
  //詳細画面表示
  $('.izimodal_info').iziModal({
    width: '80vw',
    iframeHeight: '70vh',
    fullscreen: true,
    loop: true,
    theme: '',
    overlayColor: 'rgba(0, 0, 0, 0.7)',
    transitionIn: 'fadeInRight',
    transitionOut: 'fadeOutUp',
    iframe: true,
  });

  //非表示確認confirm
  $("#info_invisible_confirm_dialog").iziModal({
    top: 80,
    background: '#f7f7f7',
    overlayColor: 'rgba(0, 0, 0, 0.7)',
    transitionIn: 'fadeIn',
    transitionOut: 'fadeOut',
  });
});


//インフォメーションの非表示制御（初回、通常用共通）
$(function(){
  $(".btn_info_invisible").on("click", function(){

      var $this = $(this);
      $("#info_invisible_confirm_dialog").iziModal();

      //非表示にする
      $("#info_invisible_confirm_ok").on('click', function(){
        $("#info_invisible_confirm_dialog").iziModal('close');
        $this.parent('li').hide();
        var $info_id = $this.attr("data-information-id");
        $.get("/information/invisible_information_by_info_id/"+$info_id);
      });

      //非表示にしない
      $("#info_invisible_confirm_no").on('click', function(){
        $("#info_invisible_confirm_dialog").iziModal('close');
      });

  });
});



// ------------- Apache Echarts ----------------
// eChart表示用のチャート設定をチャートごとに設定するための関数
    function create_single_chart_option(chart_type="bar", title, ticks, ticks_name, data, min_value, max_value, media_list, media_display=true) {
          
      var yaxis_min_value = ((min_value-Math.ceil((max_value-(min_value))/7)) < 0 && min_value >= 0) ? 0 : (min_value-Math.ceil((max_value-(min_value))/7));
      var yaxis_max_value = (max_value+Math.ceil((max_value-min_value)/5));

      // エリアチャート用設定
          var areaStyle;
          switch (chart_type) {
            case "line":
              areaStyle = null;
              break;
            case "area":
              chart_type = "line";
              areaStyle = {
                color: new echarts.graphic.LinearGradient(0,1,0,0,[
                    {
                      offset: 0,
                      color: 'rgba(89,81,216, 0.4)'
                    },
                    {
                      offset: 0.6,
                      color: 'rgba(89,81,216, 0.0)'
                    }
                ]),
              }
              break;
            default:
              break;
          }

      // タイトルの設定
          var title_option;
          if (title) {
            title_option = {
              text: title,
              textStyle: {
                fontSize: 11.5,
                fontWight: 200,
                fontFamily: 'meirio, Meiryo UI, monospace',
                color: '#333333',
              },
            };
          }

      // ツールチップに関する設定
          var tooltip_option = {
              trigger: 'axis',
              axisPointer: {
                label: {
                  backgroundColor: '#6a7985'
                }
              },
              show: true,
              position: ["10%", "10%"],
              backgroundColor: 'rgb(0,0,0, 0.4)',
              borderColor: 'rgb(196, 196, 196, 0.2)',
              textStyle: {
                fontSize: 11.5,
                fontWight: 200,
                fontFamily: 'meirio, Meiryo UI, monospace',
                color: '#ffffff',
              },
              formatter: function (params, ticket, callback) {
                let target_date = params[0].name;
                let graph_value = params[0].value;
                let media = media_list[target_date] ? media_list[target_date] : null;

                content = "<div style='text-align:left;'>";
                content += "<div style='margin-bottom:5px;'>" + target_date + "<br /><span style='color:rgb(89,81,216)'>●</span> " + graph_value + "</div>";
                if (media && media_display === true) {
                  content += "<div style='margin-bottom:10px;'><img src='" + media.media_url + "' style='width:70px;' onerror='imgError(this);' /></div>";
                  content += "<div>";
                  content += "<i class='bi bi-heart-fill'></i>　" + formatToUnit(media.like_count) + "<br />";
                  content += "<i class='bi bi-chat'></i>　" + formatToUnit(media.comments_count) + "<br />";
                  content += "<i class='bi bi-eye'></i>　" + formatToUnit(media.impressions) + "<br />";
                  content += "</div>";
                } else {
                  content += "";
                }
                content += "</div>";
                return content;
                callback(ticket, content);
                // return 'Loading';
              }
          }
      // チャート全体の設定（個別設定をマージ）
          let option = {
            title: title_option,
            toolbox: {
              show: true,
            },
            tooltip: tooltip_option,
            xAxis: {
              type: 'category',
              data: ticks,
            },
            yAxis: {
              type: 'value',
              max: yaxis_max_value,
              min: yaxis_min_value,
              axisLabel: {
                formatter: function (value, index) {
                  return formatToUnit(value, 1);
                }
              }
            },
            series: [
              {
                data: data,
                type: 'line',
                areaStyle: areaStyle,
                showSymbol: false,
                itemStyle: {
                  color: 'rgba(89,81,216, 0.5)',
                },
                connectNulls: true,
              }
            ]
          };
      return option;
    }

// チャートタイトル設定
    function get_chart_title_by_metric_name(metric_name) {
      var result;
      switch(metric_name) {
        case 'followers_count':
          result = '累計フォロワー数';
          break;
        case 'follower_count':
          result = '新規フォロワー数';
          break;
        case 'impressions':
        case 'impressions_count':
          result = 'インプレッション数';
          break;
        case 'reach':
        case 'reach_count':
          result = 'リーチ数';
          break;
        case 'profile_views':
          result = 'プロフィール閲覧数';
          break;
        case 'website_clicks':
          result = 'ウェブサイトクリック数';
          break;
        case 'email_contacs':
          result = 'メールアドレスクリック数';
          break;
        case 'get_directions_clicks':
          result = '道順クリック数';
          break;
        case 'phone_call_clicks':
          result = '電話番号クリック数';
          break;
        case 'text_message_clicks':
          result = '紹介文クリック数';
          break;
        case 'diff_followers_count':
          result = 'フォロワー増減数';
          break;
        case 'like_count':
          result = 'いいね数';
          break;
        case 'comments_count':
          result = 'コメント数';
          break;
        case 'engagement':
        case 'engagement_count':
          result = 'エンゲージメント数';
          break;
        case 'saved':
        case 'saved_count':
          result = '保存数';
          break;
        default:
          result = metric_name;
          break;
      }
      return result;
    }

// ------------- Apache Echarts ----------------




function tooltip_common_script() {
	//ツールチップ
    $('.tooltip_click').html('<i class="far fa-question-circle color-pink"></i>');
    $('.tooltip_hover').html('<i class="far fa-question-circle color-pink"></i>');
	$('.tooltip_click').tooltipster({
	  animation			: 'fade',
	  delay					: 300,
	  arrow					: false,
	  theme					: 'tooltipster-shadow',
	  trigger				: 'custom',
	  triggerOpen		:
	  {
	    click				: true,
	    tap					: true
	  },
	  triggerClose	:
	  {
	    click				: true,
	    mouseleave	: true,
	    scroll			: true,
	    tap					: true
	  },
	  distance			: 10, //ツールチップと要素の距離
	  side					: 'right',
	  contentAsHTML : true,
	  contentCloning: false,
	  multiple      : true,
	  //timer:300, //指定時間で消えるツールチップ
	}).on("mouseover", function(){
	  var $tooltip_text = $(this).attr('data-tooltip-text'); //ツールチップで表示するテキスト
	  //ツールチップ内に動的にテキストを表示する
	  if ($tooltip_text.match(/ datetime_exchange_text /)) {
	    //ツールチップ内に時間を表示させる
	    var $tooltip_datetime_text = $(this).attr('date-tooltip-datetime');
	    // $tooltip_text = !$tooltip_datetime_text ? $tooltip_text.replace('（ datetime_exchange_text ）', '閲覧数不足のためデータ取得できませんでした。') : $tooltip_text.replace(' datetime_exchange_text ', $tooltip_datetime_text+"時点");
	    $tooltip_text = !$tooltip_datetime_text ? $tooltip_text.replace('（ datetime_exchange_text ）', '') : $tooltip_text.replace('（ datetime_exchange_text ）', '（'+$tooltip_datetime_text+"時点）");
	  }
	  $(this).tooltipster('content', $tooltip_text);
	});

	//ホバーツールチップ
	$('.tooltip_hover').tooltipster({
	  animation			: 'fade',
	  delay					: 300,
	  arrow					: false,
	  theme					: 'tooltipster-shadow',
	  trigger				: 'custom',
	  triggerOpen		:
	  {
	   touchstart 	: true,
	   hover				: true
	  },
	  triggerClose	  :
	  {
	   mouseleave	  : true,
	   scroll			  : true,
	   tap				  : true,
	   touchleave   : true
	  },
	  distance			: 10, //ツールチップと要素の距離
	  side					: 'right',
	  contentAsHTML : true,
	  contentCloning: false,
	  multiple      : true,
	  //timer:300, //指定時間で消えるツールチップ
	}).on("mouseover", function(){
	  var $tooltip_text = $(this).attr('data-tooltip-text'); //ツールチップで表示するテキスト
	  //ツールチップ内に動的にテキストを表示する
	  if ($tooltip_text.match(/ datetime_exchange_text /)) {
	    //ツールチップ内に時間を表示させる
	    var $tooltip_datetime_text = $(this).attr('date-tooltip-datetime');
	    // $tooltip_text = !$tooltip_datetime_text ? $tooltip_text.replace('（ datetime_exchange_text ）', '閲覧数不足のためデータ取得できませんでした。') : $tooltip_text.replace(' datetime_exchange_text ', $tooltip_datetime_text+"時点");
	    $tooltip_text = !$tooltip_datetime_text ? $tooltip_text.replace('（ datetime_exchange_text ）', '') : $tooltip_text.replace('（ datetime_exchange_text ）', '（'+$tooltip_datetime_text+"時点）");
	  }
	  $(this).tooltipster('content', $tooltip_text);
	});
	//ツールチップ


  $('.tooltip_btn_hover').tooltipster({
    animation			: 'fade',
    delay					: 300,
    arrow					: false,
    theme					: 'tooltipster-shadow',
    trigger				: 'hover',
    triggerOpen		:
    {
     touchstart 	: true,
     hover				: true
   },
    triggerClose	  :
    {
     mouseleave	  : true,
     scroll			  : true,
     tap				  : true,
     touchleave   : true
    },
    distance			: 10, //ツールチップと要素の距離
    side					: 'right',
    contentAsHTML : true,
    contentCloning: false,
    multiple      : true,
    //timer:300, //指定時間で消えるツールチップ
  }).on("mouseover", function(){
    var tooltip_text = $(this).data('tooltip-text'); //ツールチップで表示するテキスト
    //ツールチップ内に動的にテキストを表示する
    $(this).tooltipster('content', tooltip_text);
  });

}


function formatToUnit(number) {
  
  let num_length = String(number).length;
  if (num_length > 0 && num_length < 4) {
    return number;
  } else if (num_length >= 4 && num_length < 8) {
    return Math.round(number / 1000 * 10) / 10 + 'K';
  } else if (num_length >= 8 && num_length < 12) {
    return Math.round(number / 1000000 * 10) / 10 + 'M';
  } else if (num_length >= 12 && num_length < 16) {
    return Math.round(number / 1000000000 * 10) / 10 + 'G';
  } else {
    return number;
  }

}

function isEmail(email) {
  var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  return regex.test(email);
}

function imgError(image) {
    image.onerror = "";
    image.src = "/images/no_image.png"; //置き換えたい画像のURL
    return true;
}

// 1桁の数字を0埋めで2桁にする
var toDoubleDigits = function(num) {
  num += "";
  if (num.length === 1) {
    num = "0" + num;
  }
 return num;     
};

// 日付をYYYY/MM/DD HH:DD:MI:SS形式で取得
var getDateTimeSecString = function(dateTimeString) {
  var date = new Date(dateTimeString);
  var yyyy = date.getFullYear();
  var mm = toDoubleDigits(date.getMonth() + 1);
  var dd = toDoubleDigits(date.getDate());
  var hh = toDoubleDigits(date.getHours());
  var mi = toDoubleDigits(date.getMinutes());
  var ss = toDoubleDigits(date.getSeconds());
  return yyyy + '/' + mm + '/' + dd + ' ' + hh + ':' + mi + ':' + ss;
};

var getDateTimeString = function(dateTimeString) {
  var date = new Date(dateTimeString);
  var yyyy = date.getFullYear();
  var mm = toDoubleDigits(date.getMonth() + 1);
  var dd = toDoubleDigits(date.getDate());
  var hh = toDoubleDigits(date.getHours());
  var mi = toDoubleDigits(date.getMinutes());
  return yyyy + '/' + mm + '/' + dd + ' ' + hh + ':' + mi;
};

var getDateString = function(dateTimeString) {
  var date = new Date(dateTimeString);
  var yyyy = date.getFullYear();
  var mm = toDoubleDigits(date.getMonth() + 1);
  var dd = toDoubleDigits(date.getDate());
  return yyyy + '-' + mm + '-' + dd;
};

