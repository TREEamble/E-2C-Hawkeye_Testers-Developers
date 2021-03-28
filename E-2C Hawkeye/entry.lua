self_ID = "E-2C+_Hawkeye"

declare_plugin(self_ID,
{
image		  = "FC3.bmp",
installed 	  = true, -- if false that will be place holder , or advertising
dirName	  	  = current_mod_path,
developerName = _("TREEamble"),
fileMenuName  = _("E-2C+"),
displayName   = _("E-2C+"),
shortName  	  = _("E-2C+"),
version		  = "0.01",
state		  = "installed",
update_id     = "E-2C+",
info		  = _("E-2C+ Hawkeye by TREEamble_\n\nA mod for those who want to fly the E-2C hawkeye in DCS.\n\nDiscord is https://discord.gg/DBbhbujN "),
encyclopedia_path = current_mod_path..'/Encyclopedia',

-- binaries 	 =
-- {
-- 	'F22_EFM'
-- },

Skins	=
	{
		{
		    name	= _("E-2C+"),
			dir		= "Theme"
		},
	},
Missions =
	{
		{
			name		    = _("E-2C+"),
			dir			    = "Missions",
  		},
	},
LogBook =
	{
		{
			name		= _("E-2C+"),
			type		= "E-2C+",
		},
	},	
		
InputProfiles =
	{
		["E-2C+"] = current_mod_path .. '/Input/E-2C+',
	},
	
})
----------------------------------------------------------------------------------------
mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_model_path    (current_mod_path.."/Cockpit/Shape") 
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_texture_path  (current_mod_path.."/Textures")
mount_vfs_texture_path  (current_mod_path.."/Textures/F-22A.zip")
mount_vfs_texture_path  (current_mod_path.."/Textures/F-22A_Cockpit.zip")
mount_vfs_texture_path  (current_mod_path.."/Textures/Clipboards")
mount_vfs_texture_path  (current_mod_path.."/Textures/Cockpit Photo")
-------------------------------------------------------------------------------------
dofile(current_mod_path.."/Views.lua")
make_view_settings('F-22A', ViewSettings, SnapViews)
-------------------------------------------------------------------------------------
make_flyable('F-22A',current_mod_path..'/Cockpit/Scripts/',{nil, old = 6}, current_mod_path..'/Comm.lua')--F-15 = 6  ------this is the F-15 SFM VERSION
-------------------------------------------------------------------------------------
dofile(current_mod_path..'/F-22A.lua')
-------------------------------------------------------------------------------------
plugin_done()
