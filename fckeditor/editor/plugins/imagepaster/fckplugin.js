var ImagePasterCommand = function()
{
	//create our own command, we dont want to use the FCKDialogCommand because it uses the default fck layout and not our own
};
ImagePasterCommand.GetState = function()
{
	return FCK_TRISTATE_OFF; //we dont want the button to be toggled
};
ImagePasterCommand.Execute = function()
{
	var mgr = parent.window.pasterMgr;
	mgr.Paste();
};

// 注册相关的命令.
FCKCommands.RegisterCommand('imagepaster', ImagePasterCommand);

// 创建 "WordPaster" 工具栏按钮.
var plugin = new FCKToolbarButton('imagepaster', FCKLang.ImagePaster);
plugin.IconPath = FCKConfig.PluginsPath + 'imagepaster/paster.png';

FCKToolbarItems.RegisterItem('imagepaster', plugin); // 'WordPaster' is the name used in the Toolbar config.