<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="dh_css/FestivalSlide.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<link rel="stylesheet" href="mj_css/home_jp.css">
<link href='mj_calendar/lib/main.css' rel='stylesheet' />
<script src='mj_calendar/lib/main.js'></script>
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet">
<style>

</style>
<script type="text/javascript">
	// 현재 창 width를 구하기

	// 그게 800 이하가 되면? 버튼 생성

	// 그 버튼 누르면?display 속성 조절
	$(function() {

		var size = document.getElementById("size");

		window.onresize = function(event) {
			var innerWidth = window.innerWidth;
			 console.log(innerWidth); 

			if (innerWidth < 700) {
				$("#addBtn").css("display", "block");
			} else {
				$("#addBtn").css("display", "none");

			}

		}

		$("#plusBtn").click(function() {
			$("#img_content").css("display", "block");
			$("#addBtn").css("display", "none");
		});

		$("#xBtn").click(function() {
			$("#img_content").css("display", "none");
			$("#addBtn").css("display", "block");
		});

	})
</script>

<script>
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			initialDate : '2022-06-12',
			editable : true,
			selectable : true,
			businessHours : true,
			dayMaxEvents : true, // allow "more" link when too many events
			events : [{
				title : '[ソウル文化財団］6月春散歩プロジェクト「夏迎え」',
				start : '2022-06-25',
				url : 'festivalInfoCon_jp?m_no=1',
				color : '#ff99c8'
			}, {
				title : '[所々方々 文化共感事業] ウンピョンにほれるHELLO! RHYTHM!',
				start : '2022-06-23',
				end : '2022-06-26',
				url : 'festivalInfoCon_jp?m_no=2',
				color : '#ff99c8'

			}, {
				title : '2022 ナルストリートダンスフェスティバル[ナルブレーキングバトル2on2]',
				start : '2022-06-18',
				url : 'festivalInfoCon_jp?m_no=3',
				color : '#ff99c8'
			}, {
				title : 'アート手作りマーケット (06/14 ~ 06/16)',
				start : '2022-06-14',
				end : '2022-06-16',
				url : 'festivalInfoCon_jp?m_no=4',
				color : '#ff99c8'
			}, {
				title : 'デザートコンサート (06/14 ~ 06/16)',
				start : '2022-06-14',
				end : '2022-06-16',
				url : 'festivalInfoCon_jp?m_no=5',
				color : '#a2d2ff'
			}, {
				title : '名物の雲峴宮',
				start : '2022-06-11',
				end : '2022-07-30',
				url : 'festivalInfoCon_jp?m_no=6',
				color : '#fcf6bd'
			}, {
				title : '教えちゃる！[トボンマーケット]',
				start : '22022-05-27',
				end : '2022-05-28',
				url : 'festivalInfoCon_jp?m_no=8',
				color : '#ff99c8'
			}, {
				title : '2022 敦義門マーケット',
				start : '2022-05-05',
				end : '2022-05-08',
				url : 'festivalInfoCon_jp?m_no=9',
				color : '#ff99c8'
			}, {
				title : '2022 ドゥーリーミュージアム こどもの日 行事',
				start : '2022-05-05',
				url : 'festivalInfoCon_jp?m_no=10',
				color : '#ff99c8'
			}, {
				title : '2022 こどもの日 博物館 祭り',
				start : '2022-05-05',
				url : 'festivalInfoCon_jp?m_no=11',
				color : '#a2d2ff'
			}, {
				title : '2022 ソウルバラ祭り',
				start : '2022-05-02',
				end : '2022-05-15',
				url : 'festivalInfoCon_jp?m_no=12',
				color : '#fcf6bd'
			}, {
				title : '2022 月刊ミュージック',
				start : '2022-04-30',
				end : '2022-11-30',
				url : 'festivalInfoCon_jp?m_no=13',
				color : 'cbc0d3'
			}, {
				title : '[ソウル文化財団] 西ソウル芸術教育センター春散歩プロジェクト「春・春・春」',
				start : '2022-04-30',
				end : '2022-05-28',
				url : 'festivalInfoCon_jp?m_no=14',
				color : '#ff99c8'
			}, {
				title : 'ハンソン百済博物館開館10周年記念音楽会',
				start : '2022-04-30',
				url : 'festivalInfoCon_jp?m_no=15',
				color : '#ff99c8'
			}, {
				title : '文化がある日「みずみずしいソンドンー目」',
				start : '2022-04-27',
				url : 'festivalInfoCon_jp?m_no=16',
				color : '#ff99c8'
			}, {
				title : '2022 セビッ島 春花祭り セビッ ブルーミング ガーデン',
				start : '2022-04-25',
				end : '2022-05-29',
				url : 'festivalInfoCon_jp?m_no=17',
				color : '#ff99c8'
			}, {
				title : 'キョンチュン線の森路ギャラリー音楽会',
				start : '2022-04-23',
				url : 'festivalInfoCon_jp?m_no=18',
				color : '#fcf6bd'
			},{
				title : '国家指定無形文化財マッコリchallenge',
				start : '2022-03-19',
				end : '2022-03-26',
				url : 'festivalInfoCon_jp?m_no=20',
				color : '#ff99c8'
			}, {
				title : '笙でみる音ー空間音',
				start : '2022-03-10',
				url : 'festivalInfoCon_jp?m_no=21',
				color : '#ff99c8'
			}, {
				title : '[MBN Y FORUM] 2030 青年メンタリングフェスティバルMBN Y フォーラム 2022',
				start : '2022-02-16',
				url : 'festivalInfoCon_jp?m_no=22',
				color : '#ff99c8'
			}, {
				title : 'ビックムーブ with Lia KIM',
				start : '2022-01-08',
				end : '2022-02-20',
				url : 'festivalInfoCon_jp?m_no=23',
				color : '#fcf6bd'
			}, {
				title : 'カンナムネットフェスティバル : カンナム区生活文化活性化事業',
				start : '2022-01-03',
				end : '2022-01-28',
				url : 'festivalInfoCon_jp?m_no=24',
				color : '#ff99c8'
			}, {
				title : ' [ソウルアニメーションセンター] 都会の文化体験空間！漫画図書館＆アニメ散歩',
				start : '2022-01-01',
				end : '2022-01-30',
				url : 'festivalInfoCon_jp?m_no=25',
				color : '#d0f4de'
			}, {
				title : '[DDP] 集合理論展',
				start : '2021-12-23',
				end : '2022-02-27',
				url : 'festivalInfoCon_jp?m_no=26',
				color : '#ff99c8'
			}, {
				title : '2021 ソギョ生活文化フェスタ：活活',
				start : '2021-12-17',
				end : '2021-12-19',
				url : 'festivalInfoCon_jp?m_no=27',
				color : '#ff99c8'
			}, {
				title : '2021 ソウル光灯籠祭り',
				start : '2021-11-26',
				end : '2021-12-05',
				url : 'festivalInfoCon_jp?m_no=28',
				color : '#fec89a'
			}, {
				title : '11月火の用心強調の月市民参与安全文化行事「火の用心ゲーム」',
				start : '2021-11-16',
				end : '2021-11-19',
				url : 'festivalInfoCon_jp?m_no=29',
				color : '#ff99c8'
			},{
				title : '2021ネットでチョンドン夜行',
				start : '2021-11-02',
				end : '2021-11-07',
				url : 'festivalInfoCon_jp?m_no=31',
				color : '#fcf6bd'
			}, {
				title : '第6回マポ M クラシックフェスティバル「クラシックon Live #5」',
				start : '2021-10-28',
				url : 'festivalInfoCon_jp?m_no=32',
				color : '#ff99c8'
			}, {
				title : '第6回マポ M クラシックフェスティバル「クラシックon Live #4」',
				start : '2021-10-27',
				url : 'festivalInfoCon_jp?m_no=33',
				color : '#a2d2ff'
			}, {
				title : '第6回マポ M クラシックフェスティバル「クラシック',
				start : '2021-10-26',
				url : 'festivalInfoCon_jp?m_no=34',
				color : '#fcf6bd'
			}, {
				title : '第6回マポ M クラシックフェスティバルスペシャル- with アミの塩辛閉幕',
				start : '2021-10-24',
				url : 'festivalInfoCon_jp?m_no=35',
				color : '#d0f4de'
			}, {
				title : '第6回マポ M クラシックフェスティバルスペシャル-マリオネット アンサンブルM',
				start : '2021-10-23',
				end : '2021-10-30',
				url : 'festivalInfoCon_jp?m_no=36',
				color : '#fec89a'
			}, {
				title : '第6回マポ M クラシックフェスティバル',
				start : '2021-10-21',
				url : 'festivalInfoCon_jp?m_no=37',
				color : '#c8b6ff'
			}, {
				title : '第6回マポ M クラシックフェスティバル',
				start : '2021-10-19',
				url : 'festivalInfoCon_jp?m_no=38',
				color : '#ff99c8'
			}, {
				title : '第6回マポ M クラシックフェスティバル',
				start : '2021-10-15',
				url : 'festivalInfoCon_jp?m_no=39',
				color : '#fcf6bd'
			}, {
				title : '第6回マポ M クラシックフェスティバル',
				start : '2021-10-12',
				url : 'festivalInfoCon_jp?m_no=40',
				color : '#fec89a'
			}, {
				title : '2021 トボン山フェスティバル',
				start : '2021-10-11',
				end : '2021-10-17',
				url : 'festivalInfoCon_jp?m_no=41',
				color : '#ffadad'
			}, {
				title : '第6回マポ M クラシックフェスティバル',
				start : '2021-10-09',
				url : 'festivalInfoCon_jp?m_no=42',
				color : '#d0f4de'
			}, {
				title : '第26回カンドン先史文化祭り',
				start : '2021-10-08',
				end : '2021-10-10',
				url : 'festivalInfoCon_jp?m_no=43',
				color : '#ff99c8'
			}, {
				title : '第6回マポ M クラシックフェスティバルクラシック on Live #1',
				start : '2021-10-07',
				url : 'festivalInfoCon_jp?m_no=44',
				color : '#ffadad'
			}, {
				title : '第6回マポ M クラシックフェスティバル\'マポ四季 \' <冬>',
				start : '2021-10-05',
				url : 'festivalInfoCon_jp?m_no=45',
				color : '#a2d2ff'
			}, {
				title : '2021 チャンシン町祭り',
				start : '2021-10-01',
				end : '2021-11-07',
				url : 'festivalInfoCon_jp?m_no=46',
				color : '#e4c1f9'
			}, {
				title : '雲峴宮「チュソク民族ハンマダン」',
				start : '2021-09-20',
				end : '2021-09-22',
				url : 'festivalInfoCon_jp?m_no=47',
				color : '#ff99c8'
			}, {
				title : '[2021クムチョン家族芸術フェスティバル]光の海 : 光を抱きしめたクムチョン',
				start : '2021-09-01',
				end : '2021-09-15',
				url : 'festivalInfoCon_jp?m_no=48',
				color : '#e4c1f9'
			}, {
				title : ' [ソウルアニメーションセンター] 都会の文化体験空間！漫画図書館＆アニメ散歩',
				start : '2021-08-01',
				end : '2021-08-31',
				url : 'festivalInfoCon_jp?m_no=49',
				color : '#fcf6bd'
			}, {
				title : '第5回韓国昆虫コンテスト',
				start : '2021-07-29',
				end : '2021-08-01',
				url : 'festivalInfoCon_jp?m_no=50',
				color : '#d0f4de'
			}, {
				title : '第3回ソウルタップダンスフェスティバル「ブラックダンスバラエティー」',
				start : '2021-07-20',
				end : '2021-07-21',
				url : 'festivalInfoCon_jp?m_no=51',
				color : '#ff99c8'
			}, {
				title : '第3回ソウルタップダンスフェスティバル-タップダンススウィング46',
				start : '2021-07-13',
				end : '2021-07-14',
				url : 'festivalInfoCon_jp?m_no=52',
				color : '#a2d2ff'
			}, {
				title : 'ソウル夜お化け夜市場2021',
				start : '2021-07-09',
				end : '2021-09-25',
				url : 'festivalInfoCon_jp?m_no=54',
				color : '#a0c4ff'
			}, {
				title : ' [ソウルアニメーションセンター] 都会の文化体験空間！漫画図書館＆アニメ散歩',
				start : '2021-07-01',
				end : '2021-07-31',
				url : 'festivalInfoCon_jp?m_no=55',
				color : '#fcf6bd'
			}, {
				title : '[ソウルアニメーションセンター] トイプラネットペーパトイ',
				start : '2021-07-01',
				end : '2021-07-31',
				url : 'festivalInfoCon_jp?m_no=56',
				color : '#d0f4de'
			}, {
				title : '2021 第3回 マポ国楽フェスティバル　韓国リズムタッチ#2 -エオゲボンサン大遊び',
				start : '2021-06-30',
				url : 'festivalInfoCon_jp?m_no=57',
				color : '#a2d2ff'
			}, {
				title : 'クァナク文化財団「GIG(Groove In Gwanak) FESTA」開催',
				start : '2022-07-15',
				end : '2022-07-31',
				url : 'festivalInfoCon_jp?m_no=59',
				color : '#a2d2ff'
			}, {
				title : 'クァナク文化財団[人文学青年と遊ぶ]トークコンサート',
				start : '2022-06-18',
				url : 'festivalInfoCon_jp?m_no=60',
				color : '#feeafa'
			}, {
				title : '2022 Seoul Drum Festival',
				start : '2022-06-17',
				end : '2022-06-18',
				url : 'festivalInfoCon_jp?m_no=61',
				color : '#fcf6bd'
			}, {
				title : '[ソウル生活歴史博物館]子供体験室連携教育「私たちは町冒険隊」',
				start : '2022-06-10',
				end : '2022-09-17',
				url : 'festivalInfoCon_jp?m_no=62',
				color : '#e4c1f9'
			}, {
				title : '[メディアセンタークァナク] 6月メディアセンタークァナクオリエンテーション',
				start : '2022-06-10',
				end : '2022-06-22',
				url : 'festivalInfoCon_jp?m_no=63',
				color : '#a2d2ff'
			}, {
				title : 'STAF (START TRACK ART FESTIVAL)',
				start : '2022-05-26',
				end : '2022-06-10',
				url : 'festivalInfoCon_jp?m_no=64',
				color : '#c8b6ff'
			}, {
				title : '[2022 世界文化芸術教育週間] 夢のオケストラ公演およびワンデークラス参与申し込み',
				start : '2022-05-23',
				end : '2022-05-29',
				url : 'festivalInfoCon_jp?m_no=65',
				color : '#ffadad'
			}, {
				title : '2022世界文化芸術教育週間国際シンポジウム',
				start : '2022-05-23',
				url : 'festivalInfoCon_jp?m_no=66',
				color : '#a2d2ff'
			}, {
				title : '2022 ナンサンコルハンオクコンサート「春.越.家」',
				start : '2022-05-06',
				end : '2022-07-08',
				url : 'festivalInfoCon_jp?m_no=67',
				color : '#fec89a'
			}, {
				title : 'カンセン路文化プラットホーム S1472 [2022 S1472 子供週間]開催',
				start : '2022-05-05',
				end : '2022-05-08',
				url : 'festivalInfoCon_jp?m_no=68',
				color : '#fcf6bd'
			}, {
				title : '[ソウル文化財団] 2022 サーカスシーズンプログラム サーカスキャラバン「春」',
				start : '2022-05-05',
				end : '2022-05-08',
				url : 'festivalInfoCon_jp?m_no=69',
				color : '#d0f4de'
			}, {
				title : '2022 南山コル子供の町「幸せなネズミの南山見回り」',
				start : '2022-05-05',
				url : 'festivalInfoCon_jp?m_no=70',
				color : '#a2d2ff'
			},{
				title : '[ソウル文化財団] 2022 街芸術シーズンプログラム「街芸術キャラバン「春」',
				start : '2022-04-23',
				end : '2022-05-22',
				url : 'festivalInfoCon_jp?m_no=72',
				color : '#e4c1f9'
			}, {
				title : 'ソウルエネルギー夢センター 2022家族環境描き大会',
				start : '2022-04-22',
				end : '2022-05-22',
				url : 'festivalInfoCon_jp?m_no=73',
				color : '#ff99c8'
			}, {
				title : 'ナルとバスキング',
				start : '2022-04-07',
				end : '2022-10-28',
				url : 'festivalInfoCon_jp?m_no=74',
				color : '#d0f4de'
			},{
				title : '国際ソウル音楽コンクール',
				start : '2022-03-06',
				end : '2022-05-14',
				url : 'festivalInfoCon_jp?m_no=76',
				color : '#fcf6bd'
			}, {
				title : '2022 寅年雲峴宮旧正月大宴会',
				start : '2022-01-31',
				end : '2022-02-02',
				url : 'festivalInfoCon_jp?m_no=77',
				color : '#ff99c8'
			}, {
				title : '[ソウル文化財団後援] 2022ソウルアシテジ冬祭り',
				start : '2022-01-04',
				end : '2022-01-16',
				url : 'festivalInfoCon_jp?m_no=78',
				color : '#ffadad'
			}, {
				title : '2021 オールデーミュージックフェスティバル',
				start : '2021-12-29',
				url : 'festivalInfoCon_jp?m_no=79',
				color : '#a0c4ff'
			}, {
				title : '2021 京義線本街冬光祭り',
				start : '2021-12-17',
				end : '2022-02-28',
				url : 'festivalInfoCon_jp?m_no=80',
				color : '#e4c1f9'
			}, {
				title : '2021 ソウルライト',
				start : '2021-12-17',
				end : '2022-01-02',
				url : 'festivalInfoCon_jp?m_no=81',
				color : '#ff99c8'
			}, {
				title : '青年提案事業 バンバングッグッフェスティバル',
				start : '2021-12-17',
				end : '2021-12-22',
				url : 'festivalInfoCon_jp?m_no=82',
				color : '#d0f4de'
			}, {
				title : '12月文化が流れるチョンゲチョンの夜ーチョンゲチョンと文化空間',
				start : '2021-12-08',
				url : 'festivalInfoCon_jp?m_no=83',
				color : '#fcf6bd'
			}, {
				title : 'クァナク星の光祭り',
				start : '2021-11-23',
				end : '2021-12-14',
				url : 'festivalInfoCon_jp?m_no=84',
				color : '#fcf6bd'
			}, {
				title : '「青春光る舞台上へ」2021 青春マイクフェスティバル開催',
				start : '2021-11-20',
				end : '2021-11-20',
				url : 'festivalInfoCon_jp?m_no=85',
				color : '#a2d2ff'
			}, {
				title : '2021 クムチョンハモニフェスティバル',
				start : '2021-11-10',
				end : '2021-11-14',
				url : 'festivalInfoCon_jp?m_no=86',
				color : '#ff99c8'
			}, {
				title : ' [ソウルアニメーションセンター] 都会の文化体験空間！漫画図書館＆アニメ散歩',
				start : '2021-11-01',
				end : '2021-11-30',
				url : 'festivalInfoCon_jp?m_no=87',
				color : '#fec89a'
			}, {
				title : ' 2021 ソウル知識つなぎフェスティバルフォーラム開催',
				start : '2021-10-22',
				end : '2021-10-29',
				url : 'festivalInfoCon_jp?m_no=88',
				color : '#d0f4de'
			}, {
				title : '京義線本街5周年記念著者デー本フェスティバル',
				start : '2021-10-19',
				end : '2021-10-24',
				url : 'festivalInfoCon_jp?m_no=89',
				color : '#fcf6bd'
			},{
				title : 'SIDance2021第24回ソウル世界舞踊祭り',
				start : '2021-10-16',
				end : '2021-11-14',
				url : 'festivalInfoCon_jp?m_no=91',
				color : '#a2d2ff'
			}, {
				title : '2021「ソウルは美術館」公共美術フェスティバルー 「ノドゥル風が吹く」',
				start : '2021-10-15',
				end : '2021-11-30',
				url : 'festivalInfoCon_jp?m_no=92',
				color : '#e4c1f9'
			}, {
				title : '2021 クァナクカン・ガムチャン祭り',
				start : '2021-10-14',
				end : '2021-10-17',
				url : 'festivalInfoCon_jp?m_no=93',
				color : '#ff99c8'
			}, {
				title : '2021 ソウル無形文化祭り',
				start : '2021-10-11',
				end : '2021-10-16',
				url : 'festivalInfoCon_jp?m_no=94',
				color : '#c8b6ff'
			}, {
				title : '2021 チョンノハンボク祭り',
				start : '2021-10-09',
				end : '2021-10-24',
				url : 'festivalInfoCon_jp?m_no=95',
				color : '#fec89a'
			}, {
				title : '2021 第1回クァンジン芸術祭',
				start : '2021-10-08',
				end : '2021-11-03',
				url : 'festivalInfoCon_jp?m_no=96',
				color : '#fcf6bd'
			}, {
				title : '[ソウル文化財団] 2021 ソウル国際作家フェスティバル',
				start : '2021-10-08',
				end : '2021-10-24',
				url : 'festivalInfoCon_jp?m_no=97',
				color : '#a0c4ff'
			}, {
				title : '第21回ハンソン百済文化祭「大百済展」',
				start : '2021-10-08',
				end : '2021-10-10',
				url : 'festivalInfoCon_jp?m_no=98',
				color : '#ff99c8'
			}, {
				title : 'アートスンビ 2021 美術週間「ウンピョンの顔」',
				start : '2021-10-07',
				end : '2021-10-17',
				url : 'festivalInfoCon_jp?m_no=99',
				color : '#d0f4de'
			}, {
				title : 'Water Seoul 2021 : 気候変動メガシティ、そして水',
				start : '2021-10-07',
				end : '2021-10-09',
				url : 'festivalInfoCon_jp?m_no=100',
				color : '#a2d2ff'
			}, {
				title : '2021 ソウル世界都市文化フェスティバル(Seoul Friendship Festival)',
				start : '2022-10-01',
				end : '2021-10-10',
				url : 'festivalInfoCon_jp?m_no=101',
				color : '#c8b6ff'
			}, {
				title : '第25回ソウル国際漫画アニメーションフェスティバル(SICAF2021)',
				start : '2021-10-01',
				end : '2021-10-04',
				url : 'festivalInfoCon_jp?m_no=102',
				color : '#cbc0d3'
			}, {
				title : '第17回ソウルワウ本フェスティバル',
				start : '2021-09-27',
				end : '2021-10-03',
				url : 'festivalInfoCon_jp?m_no=103',
				color : '#fec89a'
			}, {
				title : '敦義門チュソク特別プログラム運営',
				start : '2021-09-18',
				end : '2021-09-22',
				url : 'festivalInfoCon_jp?m_no=104',
				color : '#c8b6ff'
			}, {
				title : '2021 ソウル都市建築ビエンナーレ「クロスロード、どんな都市に住むべきか」',
				start : '2021-09-16',
				end : '2021-10-31',
				url : 'festivalInfoCon_jp?m_no=105',
				color : '#a2d2ff'
			}, {
				title : '2021 距離芸術シーズンプログラム（キャラバン）',
				start : '2021-09-11',
				end : '2021-10-10',
				url : 'festivalInfoCon_jp?m_no=106',
				color : '#fec89a'
			}, {
				title : '2021 ソウルサーカスフェスティバルおよびシーズンプログラム',
				start : '2021-09-03',
				end : '2021-09-26',
				url : 'festivalInfoCon_jp?m_no=107',
				color : '#c8b6ff'
			}, {
				title : 'ソウルイラストレーションフェア- V.11',
				start : '2021-08-25',
				end : '2021-08-28',
				url : 'festivalInfoCon_jp?m_no=108',
				color : '#ffadad'
			}, {
				title : '文化がある日 - あなたを覚える賢い文化生活',
				start : '2021-07-28',
				end : '2021-09-25',
				url : 'festivalInfoCon_jp?m_no=109',
				color : '#fcf6bd'
			}, {
				title : '202ソウルブールフェスティバル[SOUL CITY LIMITS]',
				start : '2021-07-15',
				end : '2021-07-18',
				url : 'festivalInfoCon_jp?m_no=110',
				color : '#fec89a'
			}, {
				title : '敦義門博物館村特別行事「敦義門倶楽部浪漫祭」',
				start : '2021-06-26',
				url : 'festivalInfoCon_jp?m_no=111',
				color : '#d0f4de'
			}, {
				title : 'ソウル文化財団2020芸術創作支援活動多元芸術選定作 POTENT CITY',
				start : '2021-10-01',
				end : '2021-10-04',
				url : 'festivalInfoCon_jp?m_no=112',
				color : '#a0c4ff'
			}, {
				title : '[クァナク区民と生活芸術家が一緒にする「2021気分良い寄付ウィーク」',
				start : '2021-12-10',
				end : '2021-12-11',
				url : 'festivalInfoCon_jp?m_no=113',
				color : '#a0c4ff'
			}, {
				title : 'バンベゴル1080ダアウリム祭り「バンベゴル(Goal)イン(In)歩き祭り」',
				start : '2021-10-30',
				url : 'festivalInfoCon_jp?m_no=114',
				color : '#e4c1f9'
			}, {
				title : '[ソウル文化財団]地域祭り「緒に出会い　一緒に芸術する」',
				start : '2021-10-22',
				end : '2021-10-24',
				url : 'festivalInfoCon_jp?m_no=115',
				color : '#a2d2ff'
			}, {
				title : '2021 NEXTAR COMPETITION VOL.3  [K-POP ダンスコンテスト]',
				start : '2021-09-04',
				url : 'festivalInfoCon_jp?m_no=116',
				color : '#ff99c8'
			}, {
				title : '第76周年光復節記念行事「解放の喜び」',
				start : '2021-08-14',
				end : '2021-08-16',
				url : 'festivalInfoCon_jp?m_no=117',
				color : '#ffadad'
			}, {
				title : '紅葉踏みに散歩行こう！ホンノン紅葉道スタンプツーア',
				start : '2021-11-06',
				end : '2021-11-14',
				url : 'festivalInfoCon_jp?m_no=118',
				color : '#d0f4de'
			}, {
				title : '近現代史推理旅行消えた鍵を探せ',
				start : '2021-09-01',
				end : '2021-12-31',
				url : 'festivalInfoCon_jp?m_no=119',
				color : '#fec89a'
			}, {
				title : 'TikTok:ナレ一周-教科書の中の世界民謡旅行',
				start : '2022-05-27',
				url : 'festivalInfoCon_jp?m_no=120',
				color : '#fec89a'
			}, {
				title : '2022 センノンダン祭開催',
				start : '2022-04-23',
				url : 'festivalInfoCon_jp?m_no=121',
				color : '#fcf6bd'
			},{
				title : 'ナンサンコル伝統体験',
				start : '2022-04-05',
				end : '2022-11-13',
				url : 'festivalInfoCon_jp?m_no=123',
				color : '#e4c1f9'
			}, {
				title : '2022 ナンサンコルオンライン旧正月祭り「豪気の旧正月」',
				start : '2022-01-31',
				end : '2022-02-13',
				url : 'festivalInfoCon_jp?m_no=124',
				color : '#d0f4de'
			}, {
				title : '2021 「冬至_虎婚」',
				start : '2021-12-22',
				url : 'festivalInfoCon_jp?m_no=125',
				color : '#c8b6ff'
			}, {
				title : '[2021クァナクカン・カムチャン祭り] イ・イクジュ教授とともにするマスタークラス高麗',
				start : '2021-10-15',
				url : 'festivalInfoCon_jp?m_no=126',
				color : '#fec89a'
			}, {
				title : '2021 訓練図鑑武芸再現イベント漢陽都城伝統武芸と出会う',
				start : '2021-10-02',
				end : '2021-10-03',
				url : 'festivalInfoCon_jp?m_no=127',
				color : '#ff99c8'
			}, {
				title : '第9回漢陽都城文化祭',
				start : '2021-10-01',
				end : '2021-10-10',
				url : 'festivalInfoCon_jp?m_no=128',
				color : '#a2d2ff'
			}, {
				title : '時代別伝統複式ハンボクファッションショー',
				start : '2021-09-27',
				end : '2021-11-13',
				url : 'festivalInfoCon_jp?m_no=129',
				color : '#fcf6bd'
			}, {
				title : 'ナンサンコル韓屋村の伝統体験(7~8月)プログラムOPEN!',
				start : '2021-07-01',
				end : '2021-08-29',
				url : 'festivalInfoCon_jp?m_no=130',
				color : '#d0f4de'
			} ]
		});

		calendar.render();
	});
</script>

</head>
<body id="size">


<div style="position: relative; height: 100%;" id="contain">
		<!-- 슬라이더 영역 -->
		<div class="bxslider" id="slider">
			<div>
			<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=117"><img src="dh_festival_slide_img/강북구.png"></a>
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=8"><img src="dh_festival_slide_img/도봉구.png"></a>
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=18"><img src="dh_festival_slide_img/노원구.png"></a>
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=2"><img src="dh_festival_slide_img/은평구.png"></a>
			</div>
			<div>
				<img src="dh_festival_slide_img/slideBlanc_jp.jpg">
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=77"><img src="dh_festival_slide_img/종로구.png"></a>
			</div>
			<div>
				<img src="dh_festival_slide_img/slideBlanc_jp.jpg">
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=72"><img src="dh_festival_slide_img/동대문구.png"></a>
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=12"><img src="dh_festival_slide_img/중랑구.png"></a>
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=73"><img src="dh_festival_slide_img/마포구.png"></a>
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=61"><img src="dh_festival_slide_img/용산구.png"></a>
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=22"><img src="dh_festival_slide_img/중구.png"></a>
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=75"><img src="dh_festival_slide_img/성동구.png"></a>
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=74"><img src="dh_festival_slide_img/광진구.png"></a>
			</div>
			<div>
				<img src="dh_festival_slide_img/slideBlanc_jp.jpg">
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=1"><img src="dh_festival_slide_img/양천구.png"></a>
			</div>
			<div>
				<img src="dh_festival_slide_img/slideBlanc_jp.jpg">
			</div>
			<div>
				<img src="dh_festival_slide_img/slideBlanc_jp.jpg">
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=120"><img src="dh_festival_slide_img/금천구.png"></a>
			</div>
			<div>
				<img src="dh_festival_slide_img/slideBlanc_jp.jpg">
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=59"><img src="dh_festival_slide_img/관악구.png"></a>
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=4"><img src="dh_festival_slide_img/서초구.png"></a>
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=76"><img src="dh_festival_slide_img/강남구.png"></a>
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=11"><img src="dh_festival_slide_img/송파구.png"></a>
			</div>
			<div>
				<a href="http://localhost:8080/semiPro_Team4/festivalInfoCon?m_no=43"><img src="dh_festival_slide_img/강동구.png"></a>
			</div>
		</div>
		<!-- bxslider 닫음 -->
		<!-- 지도 영역 -->
		<div id="img_content">
			<!-- 텍스트 영역  -->
			<div class="plan_tit" style="position: relative;">
				<p class="tit">ソウル地図</p>
				<p class="dsc">
					地図をクリックするとその地域の祭り情報をご覧になれます。<span id="xBtn"
						style="position: absolute; right: 20px; bottom: 5px;"> <img
						src="dh_map_img/btn_close.png">
					</span>
				</p>
			</div>
			<!-- 텍스트 닫음 -->




			<!-- img 영역   -->

			<div class="map-1">
				<img src="dh_area_img/서울지도.png" alt="자치구별 관련축제정보"
					usemap="#autonomyMap" id="imgId1">

				<map name="autonomyMap">

					<area shape="poly"
						coords="226,17,217,19,203,44,207,57,215,68,227,75,240,84,251,85,265,75,241,49,233,32"
						href="javascript:custom_function(0);" alt="강북구">

					<area shape="poly"
						coords="240,29,227,13,246,1,265,10,268,26,272,55,260,64,245,52,237,41"
						href="javascript:custom_function(1);" alt="도봉구">

					<area shape="poly"
						coords="269,13,284,7,296,4,302,10,311,15,307,20,309,29,306,40,309,52,323,55,324,65,310,76,280,79,260,68,273,58,271,41"
						href="javascript:custom_function(2);" alt="노원구">

					<area shape="poly"
						coords="160,47,172,41,183,47,195,63,177,71,174,85,165,92,153,101,146,109,132,114,117,106,141,55"
						href="javascript:custom_function(3);" alt="은평구">

					<area shape="poly"
						coords="132,118,147,125,154,132,163,136,186,133,191,125,178,117,182,99,173,89"
						href="javascript:custom_function(4);" alt="서대문구">

					<area shape="poly"
						coords="178,73,195,67,202,75,206,83,206,90,201,97,242,122,212,123,195,124,181,120,185,107,179,87"
						href="javascript:custom_function(5);" alt="종로구">

					<area shape="poly"
						coords="205,59,239,87,270,83,286,88,265,96,255,105,242,111,228,106,204,99,213,93,198,66"
						href="javascript:custom_function(6);" alt="성북구">

					<area shape="poly"
						coords="244,115,248,122,261,120,287,131,293,121,286,105,286,89"
						href="javascript:custom_function(7);" alt="동대문구">

					<area shape="poly"
						coords="286,81,305,79,332,79,331,92,328,102,320,112,317,119,295,121,288,103"
						href="javascript:custom_function(8);" alt="중랑구">

					<area shape="poly"
						coords="94,119,143,148,155,148,164,149,170,156,175,155,187,143,185,135,161,137,147,125,129,119,112,105"
						href="javascript:custom_function(9);" alt="마포구">

					<area shape="poly"
						coords="173,157,179,167,205,173,220,167,229,159,234,153,222,145,205,139,192,139"
						href="javascript:custom_function(10);" alt="용산구">

					<area shape="poly"
						coords="188,134,196,125,207,127,220,125,242,125,242,134,229,144"
						href="javascript:custom_function(11);" alt="중구">

					<area shape="poly"
						coords="230,146,236,150,246,148,277,155,288,134,262,123,246,123,243,133"
						href="javascript:custom_function(12);" alt="성동구">

					<area shape="poly"
						coords="277,157,302,163,324,145,327,134,317,131,319,122,294,123"
						href="javascript:custom_function(13);" alt="광진구">

					<area shape="poly"
						coords="1,138,23,148,29,156,41,151,54,151,60,145,67,149,73,162,93,161,93,149,94,141,108,143,73,120,40,100,25,119"
						href="javascript:custom_function(14);" alt="강서구">

					<area shape="poly"
						coords="61,149,55,156,60,163,58,173,57,180,63,181,67,186,78,181,92,181,97,184,109,175,108,166,117,159,111,146,97,144,94,162,72,164"
						href="javascript:custom_function(15);" alt="양천구">

					<area shape="poly"
						coords="48,190,56,200,53,207,48,214,52,217,62,214,71,213,79,215,81,207,98,197,109,201,121,208,127,208,131,205,126,199,121,186,112,175,102,183,95,186,85,182,68,187,58,182"
						href="javascript:custom_function(16);" alt="구로구">

					<area shape="poly"
						coords="122,181,130,202,140,193,148,188,154,175,167,170,159,162,140,156,109,140,117,157,110,166,114,175"
						href="javascript:custom_function(17);" alt="영등포구">

					<area shape="poly"
						coords="101,202,113,218,115,230,122,234,127,242,127,249,139,248,147,245,155,236,150,229,141,230,141,221,136,216,140,211,134,207,124,210"
						href="javascript:custom_function(18);" alt="금천구">

					<area shape="poly"
						coords="135,203,151,197,156,193,161,197,181,195,186,194,188,201,194,209,203,209,203,199,205,189,198,184,173,174,158,178,150,188"
						href="javascript:custom_function(19);" alt="동작구">

					<area shape="poly"
						coords="136,205,142,211,139,216,143,225,150,227,156,234,158,240,165,248,175,246,188,245,191,239,199,239,203,229,209,229,209,220,201,212,188,206,184,195,162,197,156,195"
						href="javascript:custom_function(20);" alt="관악구">

					<area shape="poly"
						coords="207,190,205,213,210,218,211,227,220,224,224,217,235,231,250,224,253,219,255,227,257,244,267,249,291,248,299,242,309,228,300,213,271,220,261,207,252,202,236,169"
						href="javascript:custom_function(21);" alt="서초구">

					<area shape="poly"
						coords="236,166,254,200,261,202,271,219,288,214,301,210,311,224,323,224,331,227,339,222,320,198,291,189,283,172,272,164,249,158"
						href="javascript:custom_function(22);" alt="강남구">

					<area shape="poly"
						coords="286,175,291,188,314,194,321,198,339,220,349,220,344,214,350,214,362,204,372,198,372,190,366,185,360,189,353,183,352,170,333,165,335,156,330,152,318,168,305,173"
						href="javascript:custom_function(23);" alt="송파구">

					<area shape="poly"
						coords="331,149,337,153,335,163,351,168,357,172,373,148,386,147,393,146,391,136,385,114,361,126,344,129"
						href="javascript:custom_function(24);" alt="강동구">

				</map>
			</div>

		</div>
	</div>

	<!-- bxslider 닫음 -->

	<!-- bxslider설정 -->
	<script>
		let slider = $('.bxslider').bxSlider({
			auto : true,
			autoControls : false,
			stopAutoOnClick : false,
			pager : false,
			controls : false,
			adaptiveHeight : true,
		    touchEnabled :false 
		});
	</script>

	<script>
		function custom_function(index) {

			if (typeof slider.goToSlide === 'function') {
				slider.goToSlide(index); // 해당 슬라이더로 이동 
			} else { //무엇인가 잘못됬으면
				alert('에러');
			}

			if (index == 0) {
				document.getElementById("imgId1").src = "dh_area_img/강북구.png";
			}
			if (index == 1) {
				document.getElementById("imgId1").src = "dh_area_img/도봉구.png";
			}
			if (index == 2) {
				document.getElementById("imgId1").src = "dh_area_img/노원구.png";
			}
			if (index == 3) {
				document.getElementById("imgId1").src = "dh_area_img/은평구.png";
			}
			if (index == 4) {
				document.getElementById("imgId1").src = "dh_area_img/서대문구.png";
			}
			if (index == 5) {
				document.getElementById("imgId1").src = "dh_area_img/종로구.png";
			}
			if (index == 6) {
				document.getElementById("imgId1").src = "dh_area_img/성북구.png";
			}
			if (index == 7) {
				document.getElementById("imgId1").src = "dh_area_img/동대문구.png";
			}
			if (index == 8) {
				document.getElementById("imgId1").src = "dh_area_img/중랑구.png";
			}
			if (index == 9) {
				document.getElementById("imgId1").src = "dh_area_img/마포구.png";
			}
			if (index == 10) {
				document.getElementById("imgId1").src = "dh_area_img/용산구.png";
			}
			if (index == 11) {
				document.getElementById("imgId1").src = "dh_area_img/중구.png";
			}
			if (index == 12) {
				document.getElementById("imgId1").src = "dh_area_img/성동구.png";
			}
			if (index == 13) {
				document.getElementById("imgId1").src = "dh_area_img/광진구.png";
			}
			if (index == 14) {
				document.getElementById("imgId1").src = "dh_area_img/강서구.png";
			}
			if (index == 15) {
				document.getElementById("imgId1").src = "dh_area_img/양천구.png";
			}
			if (index == 16) {
				document.getElementById("imgId1").src = "dh_area_img/구로구.png";
			}
			if (index == 17) {
				document.getElementById("imgId1").src = "dh_area_img/영등포구.png";
			}
			if (index == 18) {
				document.getElementById("imgId1").src = "dh_area_img/금천구.png";
			}
			if (index == 19) {
				document.getElementById("imgId1").src = "dh_area_img/동작구.png";
			}
			if (index == 20) {
				document.getElementById("imgId1").src = "dh_area_img/관악구.png";
			}
			if (index == 21) {
				document.getElementById("imgId1").src = "dh_area_img/서초구.png";
			}
			if (index == 22) {
				document.getElementById("imgId1").src = "dh_area_img/강남구.png";
			}
			if (index == 23) {
				document.getElementById("imgId1").src = "dh_area_img/송파구.png";
			}
			if (index == 24) {
				document.getElementById("imgId1").src = "dh_area_img/강동구.png";
			}

		}
	</script>

	<script type="text/javascript" src="dh_css/jquery.js"></script>

	<script type="text/javascript">
		$(function() {
			var observer = new MutationObserver(
					function(mutations) {
						target = document.getElementById('slider');
						let child = $(target).find("div");
						for (var i = 0; i < 26; i++) {
							let includeFalse = $(child[i]).attr("aria-hidden");
							if (includeFalse == 'false') {
								/* alert(i);  */

								if (i == 1) {
									document.getElementById("imgId1").src = "dh_area_img/강북구.png";
								}
								if (i == 2) {
									document.getElementById("imgId1").src = "dh_area_img/도봉구.png";
								}
								if (i == 3) {
									document.getElementById("imgId1").src = "dh_area_img/노원구.png";
								}
								if (i == 4) {
									document.getElementById("imgId1").src = "dh_area_img/은평구.png";
								}
								if (i == 5) {
									document.getElementById("imgId1").src = "dh_area_img/서대문구.png";
								}
								if (i == 6) {
									document.getElementById("imgId1").src = "dh_area_img/종로구.png";
								}
								if (i == 7) {
									document.getElementById("imgId1").src = "dh_area_img/성북구.png";
								}
								if (i == 8) {
									document.getElementById("imgId1").src = "dh_area_img/동대문구.png";
								}
								if (i == 9) {
									document.getElementById("imgId1").src = "dh_area_img/중랑구.png";
								}
								if (i == 10) {
									document.getElementById("imgId1").src = "dh_area_img/마포구.png";
								}
								if (i == 11) {
									document.getElementById("imgId1").src = "dh_area_img/용산구.png";
								}
								if (i == 12) {
									document.getElementById("imgId1").src = "dh_area_img/중구.png";
								}
								if (i == 13) {
									document.getElementById("imgId1").src = "dh_area_img/성동구.png";
								}
								if (i == 14) {
									document.getElementById("imgId1").src = "dh_area_img/광진구.png";
								}
								if (i == 15) {
									document.getElementById("imgId1").src = "dh_area_img/강서구.png";
								}
								if (i == 16) {
									document.getElementById("imgId1").src = "dh_area_img/양천구.png";
								}
								if (i == 17) {
									document.getElementById("imgId1").src = "dh_area_img/구로구.png";
								}
								if (i == 18) {
									document.getElementById("imgId1").src = "dh_area_img/영등포구.png";
								}
								if (i == 19) {
									document.getElementById("imgId1").src = "dh_area_img/금천구.png";
								}
								if (i == 20) {
									document.getElementById("imgId1").src = "dh_area_img/동작구.png";
								}
								if (i == 21) {
									document.getElementById("imgId1").src = "dh_area_img/관악구.png";
								}
								if (i == 22) {
									document.getElementById("imgId1").src = "dh_area_img/서초구.png";
								}
								if (i == 23) {
									document.getElementById("imgId1").src = "dh_area_img/강남구.png";
								}
								if (i == 24) {
									document.getElementById("imgId1").src = "dh_area_img/송파구.png";
								}
								if (i == 25) {
									document.getElementById("imgId1").src = "dh_area_img/강동구.png";
								}

							} // if문 닫음							

						} // for문 닫음

					}); // function mutations 닫음

			let target = document.getElementById('slider');
			observer.observe(target, {
				attributes : true,
				attributeFilter : [ 'style' ]
			});

		}); // function 닫음

		/* let ss = $("#slider");
		$(ss).csschange(function() {
		let child = $(ss).children();
		$(child).each(function () {
			console.log($(child).attr("aria-hidden"));
		});
			
		
		
		}); */
	</script>
	<!--  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
  
  <script src="./jquery.rwdImageMaps.min.js"></script> -->

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jQuery-rwdImageMaps/1.6/jquery.rwdImageMaps.js"></script>

	<script type="text/javascript">
		$(function() {
			$('img[usemap]').rwdImageMaps();

		});
	</script>
	<script type="text/javascript">
		$(function() {

			// Menu Tabular
			var $menu_tabs = $('.menu__tabs li a');
			$menu_tabs.on('click', function(e) {
				e.preventDefault();
				$menu_tabs.removeClass('active');
				$(this).addClass('active');

				$('.menu__item').fadeOut(300);
				$(this.hash).delay(300).fadeIn();
			});

		});
	</script>

	<div id="addBtn"
		style="position: fixed; right: 20px; bottom: 20px; z-index: 3; cursor:pointer;">
		<span id="plusBtn"> <img src="dh_map_img/info_map_btn.png">
		</span>
	</div>

<div id="MainContainer">

	<div id="leftInformation">

		<!-- 축제정보 보러가기 영역 -->
		<div class="photo">
			<span id="FestivalTxt">祭り情報を<br>見に行く　</span> 
			<a href='festivalHC'><img alt="축제정보" src="mj_img/sakura.jpg"
				style="width: 100%;" id="gotoFesInfoImg">
				<div class="glow-wrap" >
					<i class="glow"></i>
				</div></a>
			<p id="click">→　クリック!</p>
		</div>
		<!-- 게시판 노출 영역 -->
		<div class="menu" style="width: 100%;">
		
			<ul class="menu__tabs" >
			    <li><a class="active item1" href="#item-1"><i class="fa fa-star"></i>全体</a></li>
				<li><a class="item2" href="#item-2"><i class="fa fa-link"></i>フリー</a></li>
				<li><a class="item3" href="#item-3"><i class="fa fa-photo"></i>レビュー</a></li>
			</ul>
			<section class="menu__wrapper" >
				<table id="item-1" class="menu__item item-active"
					style="border: 1px solid gray; width: 100%;">
					<tr class="showTbTitle">
						<td class="showListNo">番号</td>
						<td class="showListCate">カテゴリー</td>
						<td class="showListTitle">タイトル</td>
					</tr>
					<c:forEach items="${boards}" var="b">
						<tr class="showList"
							onclick="location.href='BoardViewHC?number=${b.no}'">
							<td class="showListNo">${b.no}</td>
							<td class="showListCate">${b.cate}</td>
							<td class="showListTitle">${b.title}</td>
						</tr>
					</c:forEach>
				</table>
				<table id="item-2" class="menu__item"
					style="border: 1px solid gray; width: 100%;">
					<tr class="showTbTitle">
						<td class="showListNo">番号</td>
						<td class="showListCate">カテゴリー</td>
						<td class="showListTitle">タイトル</td>
					</tr>
					<c:forEach items="${freeBoards }" var="b">
						<tr class="showList"
							onclick="location.href='BoardViewHC?number=${b.no}'">
							<td class="showListNo">${b.no }</td>
							<td class="showListCate">${b.cate }</td>
							<td class="showListTitle">${b.title }</td>
						</tr>
					</c:forEach>
				</table>
				<table id="item-3" class="menu__item"
					style="border: 1px solid gray; width: 100%;">
					<tr class="showTbTitle">
						<td class="showListNo">番号</td>
						<td class="showListCate">カテゴリー</td>
						<td class="showListTitle">タイトル</td>
					</tr>
					<c:forEach items="${reviewBoards }" var="b">
						<tr class="showList"
							onclick="location.href='BoardViewHC?number=${b.no}'">
							<td class="showListNo">${b.no }</td>
							<td class="showListCate">${b.cate }</td>
							<td class="showListTitle">${b.title }</td>
						</tr>
					</c:forEach>
				</table>
				<a class="btnClickBoard"
					onclick="location.href='BoardViewHC?cate=all'">▶ +MORE</a>
			</section>
			<div class="menu--shadow"></div>
		</div>



	</div>
	
	
	
	<!-- 캘린더 영역 -->
	<div id='calendar'>
		<a href='fesCalendarCon_jp'> もっと見る </a>
	</div>
	</div>
	<!-- 날씨 위젯이랑 딱 달라붙는 이슈 해결을 위해 만든 빈 테이블 -->
	<table style="width: 100%; height: 30px;">
		<tr>
			<td></td>
		</tr>
	</table>

</body>
</html>