declare_plugin("SA3+",
{
installed 	 	  = true,
state		 	  = "installed",
developerName	  = "Dillie",
version		 	  = "1",
encyclopedia_path = current_mod_path .. '/Encyclopedia',
})

mount_vfs_model_path    (current_mod_path ..  "/Shapes")
mount_vfs_texture_path	(current_mod_path ..  "/Textures")

local function vehicle_file(f)
	if dofile(current_mod_path..f) then
		error("can't load file "..f)
		return
	end
	if(GT) then
		GT.shape_table_data = 
		{
			{
				file  	    = GT.visual.shape;
				username    = GT.Name;
				desrt       = GT.visual.shape_dstr;
			    classname 	= "lLandVehicle";
				positioning = "BYNORMAL";
				life		= GT.life or 5;
			},
			{
				name  = GT.visual.shape_dstr;
				file  = GT.visual.shape_dstr;
			},
		}
		add_surface_unit(GT)
		GT = nil;
	else
		error("GT empty in file "..f)
	end;
end

local function weapon_file(f)
	if dofile(current_mod_path..f) then
		error("can't load file "..f)
		return
	end
end

weapon_file("/Database/Weapon/5V24.lua")

vehicle_file("/Database/SAM/5P73_V-600P_LN.lua")

plugin_done()