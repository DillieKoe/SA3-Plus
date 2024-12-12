GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_ship)

GT.visual = {}
GT.visual.shape = "Bal5"
GT.visual.shape_dstr = ""

GT.IR_emission_coeff = 0.35

GT.life = 1000
GT.mass = 3447000
GT.max_velocity = 18.26278
GT.race_velocity = 6.17333
GT.economy_velocity = 9.260000
GT.economy_distance = 1.59272e+007
GT.race_distance = 1.59272e+007
GT.shipLength = 117.9
GT.Width = 12.76
GT.Height = 34.5
GT.Length = 126.1
GT.DeckLevel = 4.2
GT.X_nose = 85
GT.X_tail = -90
GT.Tail_Width = 20
GT.Gamma_max = 1.0
GT.Om = 0.02
GT.speedup = 0.101986
GT.R_min = 400.0
GT.distFindObstacles = 500
GT.RCS = 100000  -- estimated RCS in square meters / оценочная ЭПР в кв.м.

GT.animation_arguments.radar1_rotation = 2; -- Radar 1 Rotation
GT.radar1_period = 5;

GT.exhaust = {
	  [1] = { size = 0.4 , pos = {-55.5, 34, 0 }}			-- Smoke Origin from Funnel (Y, Z, X : where +Y=port, -Y=stbd)
}

GT.DM = {
    { area_name = "Cube", 		area_arg = 70, area_life = 200, area_fire = { pos = {60.8, 0, 4.0}, size = 0.5}},
    { area_name = "Cube.003", 	area_arg = 71, area_life = 200, area_fire = { pos = {10, 0, 4}, size = 0.5}},
    { area_name = "Cube.004", 		area_arg = 72, area_life = 200, area_fire = { pos = {-45.0, 0, 11.5}, size = 0.5}},
}

GT.WS = {}
GT.WS.maxTargetDetectionRange = 25000;
GT.WS.radar_type = 109 --optical in wstypes
GT.WS.searchRadarMaxElevation = math.rad(70);

ws = GT_t.inc_ws();
GT.WS[ws] = {};
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ZIF_101);
GT.WS[ws].area = 'Cube.004'
GT.WS[ws].center = 'ZIF-101-Base-Connector'
GT.WS[ws].drawArgument1 = 3
GT.WS[ws].drawArgument2 = 4
GT.WS[ws].angles = {
					 {math.rad(165), math.rad(-165), math.rad(-10), math.rad(95)},
				   }
GT.WS[ws].reference_angle_z = math.rad(180);
--GT.WS[ws].LN[1].BR = { { connector_name = 'ZIF-101-Arm-1', },
--					   { connector_name = 'ZIF-101-Arm-2', }, }

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].center = 'Gannoe'
GT.WS[ws].drawArgument1 = 1   
GT.WS[ws].drawArgument2 = 2  
GT.WS[ws].omegaY = math.rad(90);
GT.WS[ws].omegaZ = math.rad(90);  
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-10), math.rad(85)},
                    };
GT.WS[ws].reference_angle_Y = 0;	
GT.WS[ws].reference_angle_Z = 0;							

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.SM_20_ZIF);
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[11]);
GT.WS[ws].LN[1].BR[1] = { { connector_name = 'Piempa1', }, 
						  { connector_name = 'Piempa2', },
						  { connector_name = 'Piempa3', }, 
						  { connector_name = 'Piempa4', }, } 

GT.airWeaponDist = 0
GT.airFindDist = 0
-- weapon systems

GT.Name = "Bal"
GT.DisplayName = _("Bal")
GT.DisplayNameShort = _("Bal")
GT.Rate = 100

GT.Sensors = {  OPTIC = {"long-range naval optics", "long-range naval LLTV", "long-range naval FLIR",},
                RADAR = {
                    "Patriot str",
                    "ticonderoga search radar",
                }
            }; 

GT.DetectionRange  = GT.airFindDist;
GT.ThreatRange = GT.airWeaponDist;
GT.Singleton   ="no";
GT.mapclasskey = "P0091000068";
GT.attribute = {wsType_Navy,wsType_Ship,wsType_ArmedShip,REZKY,
				"Destroyers",
				};
GT.Categories = {
                    {name = "Armed Ship"},
                };

GT.tags  =
{
	"Destroyer",
};				
 
GT.Countries = {"Russia"};
 
add_surface_unit(GT)
