// Change the default plugin path.
//FCKConfig.PluginsPath = FCKConfig.BasePath.substr(0, FCKConfig.BasePath.length - 7) + '/editor/plugins/';

// Add our plugin to the plugins list.
// FCKConfig.Plugins.Add( pluginName, availableLanguages )
// pluginName: The plugin name. The plugin directory must match this name.
// availableLanguages: a list of available language files for the plugin (separated by a comma).
//FCKConfig.Plugins.Add('findreplace', 'en,it,fr');
//FCKConfig.Plugins.Add('wordpaster')

// If you want to use plugins found on other directories, just use the third parameter.
//var sOtherPluginPath = FCKConfig.BasePath.substr(0, FCKConfig.BasePath.length - 7) + 'editor/plugins/';
//FCKConfig.Plugins.Add('placeholder', 'en,it,de,fr', sOtherPluginPath);
//FCKConfig.Plugins.Add('tablecommands', null, sOtherPluginPath);
FCKConfig.Plugins.Add('wordpaster');