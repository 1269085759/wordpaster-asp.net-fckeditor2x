var ScreenCaptureCommand = function()
{
	//create our own command, we dont want to use the FCKDialogCommand because it uses the default fck layout and not our own
};
ScreenCaptureCommand.GetState = function()
{
	return FCK_TRISTATE_OFF; //we dont want the button to be toggled
};
ScreenCaptureCommand.Execute = function()
{
	parent.window.scpMgr.Capture();
};

// 注册相关的命令.
FCKCommands.RegisterCommand('screencapture', ScreenCaptureCommand);

// 创建 "WordPaster" 工具栏按钮.
var plug = new FCKToolbarButton('screencapture', FCKLang.ScreenCapture);
plug.IconPath = FCKConfig.PluginsPath + 'screencapture/screencapture.gif';

FCKToolbarItems.RegisterItem('screencapture', plug); // 'WordPaster' is the name used in the Toolbar config.
