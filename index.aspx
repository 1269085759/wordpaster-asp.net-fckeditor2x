<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WordImages.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <title>WordPaster For FCKEditor-2.x</title>
    <link type="text/css" rel="Stylesheet" href="WordPaster/css/WordPaster.css"/>
    <link type="text/css" rel="Stylesheet" href="WordPaster/js/skygqbox.css" />
    <script type="text/javascript" src="WordPaster/js/json2.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="WordPaster/js/jquery-1.4.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="WordPaster/js/WordPaster.js" charset="utf-8"></script>
    <script type="text/javascript" src="WordPaster/js/skygqbox.js" charset="utf-8"></script>
	<script type="text/javascript" src="fckeditor/fckeditor.js"></script>
</head>
<body>
	<div style=" font-size:medium; line-height:130%;">
		<p>��ʾ������</p>
		<ul style="list-style-type:decimal;">
			<li>��Word�ĵ������ƶ���ͼƬ��Ȼ���ڱ༭���а� Ctrl+V ճ�����༭�����Զ��ϴ�����ͼƬ��</li>
			<li>���Ƶ���������ͼƬ�ļ���Ȼ�����༭���е�ͼƬճ����ť��</li>
			<li>ͨ��QQ��������������������ͼƬ��Ȼ�����༭���е�ͼƬճ����ť��</li>
		</ul>
		<p>������⣺</p>
		<ul style="list-style-type:decimal;">
			<li>����exe��װ���ֶ���װ���֧��IE/Firefox/Chrome��<a target="_blank" href="http://yunpan.cn/lk/sVv4WAq9rSCec?sid=301">exe��װ��</a></li>
			<li>����޷���װ�ؼ������ؽ��а�װ<a target="_blank" href="http://www.microsoft.com/downloads/details.aspx?FamilyID=9b2da534-3e03-4391-8a4d-074b9f2bc1bf%20">Microsoft Visual C++ 2008 Redistributable Package (x86)</a></li>
			<li>������κ����������������<a target="_blank" href="http://www.ncmem.com/blog/guestbook.asp">����</a></li>
		</ul>
	</div>
	<!--����FCKEditor�ؼ�-->
	<script language="javascript" type="text/javascript">
	    var pasterMgr = new WordPasterManager();
	    pasterMgr.Fields["UserName"] = "test";
	    //pasterMgr.Config["PostUrl"] = "http://www.ncmem.com/products/upload_ori.aspx"
	    pasterMgr.Config["PostUrl"] = "http://localhost:4317/asp.net/upload.aspx";
	    pasterMgr.Config["Cookie"] = 'ASP.NET_SessionId=<%=Session.SessionID%>';
	    pasterMgr.Load();//���ؿؼ�

	    var oFCKeditor = new FCKeditor('FCKeditor1');
	    oFCKeditor.BasePath = "fckeditor/";
	    //oFCKeditor.ToolbarSet = "Basic";
	    oFCKeditor.Height = 300;
	    oFCKeditor.Value = '';
	    oFCKeditor.Create();

	    //��ʼ����Э�༭��
	    function FCKeditor_OnComplete(editorInstance)
	    {
	        pasterMgr.SetEditor(editorInstance);
	    }

	    $(document).ready(function ()
	    {
	        $("#btnPost").click(function ()
	        {
	            alert(FCKeditorAPI.GetInstance('FCKeditor1').GetHTML());
	        });

	    });
	</script>
    <input type="button" id="btnPost" value="�ύ"/>
</body>
</html>