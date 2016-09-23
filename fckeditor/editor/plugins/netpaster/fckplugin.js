var NetPasterCommand = function()
{
	//create our own command, we dont want to use the FCKDialogCommand because it uses the default fck layout and not our own
};
NetPasterCommand.GetState = function()
{
	return FCK_TRISTATE_OFF; //we dont want the button to be toggled
};
NetPasterCommand.Execute = function()
{
	var mgr = parent.window.pasterMgr;
	mgr.UploadNetImg();
};

// 注册相关的命令.
FCKCommands.RegisterCommand('netpaster', NetPasterCommand);

// 创建 "WordPaster" 工具栏按钮.
var plugin = new FCKToolbarButton('netpaster', FCKLang.NetPaster);
plugin.IconPath = FCKConfig.PluginsPath + 'netpaster/ico.png';

FCKToolbarItems.RegisterItem('netpaster', plugin); // 'WordPaster' is the name used in the Toolbar config.