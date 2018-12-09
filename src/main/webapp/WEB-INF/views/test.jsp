<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery-ui.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/ui.jqgrid.css" />
  <script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.jqGrid.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/grid.locale-ja.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
  <script>
  $(function() {
	  var mydata = [
	                {comp_code:"CD1", comp_name:"株式会社シー", comp_kana:"カブシキカイシャシー"},
	                {comp_code:"CD2", comp_name:"ビー株式会社", comp_kana:"ビーカブシキカイシャ"},
	                {comp_code:"CD3", comp_name:"有限会社エー", comp_kana:"ユウゲンガイシャエー"},
	              ];

	              jQuery("#list").jqGrid({
	                data: mydata,
	                datatype: "local",
	                colNames:['コード', '会社名', 'カナ'],
	                colModel:[
	                  {index:'comp_code', name:'comp_code', width:'60px'},
	                  {index:'comp_name', name:'comp_name', width:'150px'},
	                  {index:'comp_kana', name:'comp_kana', width:'200px'},
	                ],
	                height: 'auto',
	                sortname: 'comp_code',
	                sortorder: "ASC",
	                multiselect: false,
	                caption: '会社一覧'
	              });
  });
  </script>
</head>
<body>
  <table id="list">
  </table>
</body>
</html>
