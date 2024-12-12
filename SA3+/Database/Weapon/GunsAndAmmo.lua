declare_weapon({
	category 				= CAT_SHELLS,
	name 					= "SM_20_45", 
	user_name 				= _("SM-20 45mm"),
	model_name    			= "tracer_bullet_red",
	v0    					= 1080.0,
	Dv0   					= 0.0072,
	Da0     				= 0.00075,
	Da1     				= 0.0,
	mass      				= 1.41,
	round_mass 				= 1.61,
	explosive     			= 0.052,
	life_time     			= 7,
	caliber     			= 45.0,
	s         				= 0.0,
	j         				= 0.0,
	l         				= 0.0,
	charTime    			= 0,
	cx        				= {0.5,0.61,0.80,0.270,1.90},
	k1        				= 1.2e-08,
	tracer_off    			= 100,
	smoke_tail_life_time 	= 0.0,
	rotation_freq  			= 0,
	cartridge 				= 0,
	
});

GT_t.LN_t.SM_20_ZIF = {name = "SM-20-ZIF 45mm", display_name = _("SM-20 45")}
GT_t.LN_t.SM_20_ZIF.type = 3
GT_t.LN_t.SM_20_ZIF.distanceMin = 1
GT_t.LN_t.SM_20_ZIF.distanceMax = 11100
GT_t.LN_t.SM_20_ZIF.max_trg_alt = 11100
GT_t.LN_t.SM_20_ZIF.reactionTime = 0.5
GT_t.LN_t.SM_20_ZIF.sensor = {}
set_recursive_metatable(GT_t.LN_t.SM_20_ZIF.sensor, GT_t.WSN_t[11])
GT_t.LN_t.SM_20_ZIF.PL = {}
GT_t.LN_t.SM_20_ZIF.PL[1] = {}
GT_t.LN_t.SM_20_ZIF.PL[1].ammo_capacity = 17200
GT_t.LN_t.SM_20_ZIF.PL[1].shell_name = {"SM_20_45"};
GT_t.LN_t.SM_20_ZIF.PL[1].shot_delay = 60/135
GT_t.LN_t.SM_20_ZIF.PL[1].switch_on_delay = 10;
GT_t.LN_t.SM_20_ZIF.BR = { {pos = {0, 0, 0} },
						   {pos = {1, 0, 0} },
						   {pos = {0, 0, 1} },
						   {pos = {1, 0, 1} },						   }
for i=2,4 do
    GT_t.LN_t.SM_20_ZIF.PL[i] = {};
    set_recursive_metatable(GT_t.LN_t.SM_20_ZIF.PL[i], GT_t.LN_t.SM_20_ZIF.PL[1]);
end;

GT_t.WS_t.ZIF_101 = {name = "ZIF-101"};
--[[GT_t.WS_t.ZIF_101_mech = { {math.rad(180), math.rad(-180), math.rad(0), math.rad(89) }, 
								  --{math.rad(-180), math.rad(180), math.rad(0), math.rad(89) },
							  }--]]
GT_t.WS_t.ZIF_101.angles = {{math.rad(-180), math.rad(180), math.rad(0), math.rad(56)},};
GT_t.WS_t.ZIF_101.reference_angle_Z = math.rad(0);
GT_t.WS_t.ZIF_101.reference_angle_Y = math.rad(0);
GT_t.WS_t.ZIF_101.omegaY = 0.323599;
GT_t.WS_t.ZIF_101.omegaZ = 0.174533;
GT_t.WS_t.ZIF_101.LN = {}
GT_t.WS_t.ZIF_101.LN[1] = {}
GT_t.WS_t.ZIF_101.LN[1].type = 4
GT_t.WS_t.ZIF_101.LN[1].distanceMin = 500
GT_t.WS_t.ZIF_101.LN[1].distanceMax = 50000
GT_t.WS_t.ZIF_101.LN[1].max_trg_alt = 10000
GT_t.WS_t.ZIF_101.LN[1].reactionTime = 2
GT_t.WS_t.ZIF_101.LN[1].launch_delay = 2;
GT_t.WS_t.ZIF_101.LN[1].max_number_of_missile_channels = 1;
GT_t.WS_t.ZIF_101.LN[1].beamWidth = math.rad (90)
GT_t.WS_t.ZIF_101.LN[1].sensor = {}
set_recursive_metatable(GT_t.WS_t.ZIF_101.LN[1].sensor, GT_t.WSN_t[0])
GT_t.WS_t.ZIF_101.LN[1].PL = {}
GT_t.WS_t.ZIF_101.LN[1].PL[1] = {}
GT_t.WS_t.ZIF_101.LN[1].PL[1].ammo_capacity = 2;
GT_t.WS_t.ZIF_101.LN[1].PL[1].type_ammunition = V600P.wsTypeOfWeapon;
GT_t.WS_t.ZIF_101.LN[1].PL[1].reload_time = 50; 
GT_t.WS_t.ZIF_101.LN[1].BR = {}
GT_t.WS_t.ZIF_101.LN[1].BR = { {pos = {0, 0, 0} } },
GT_t.WS_t.ZIF_101.LN[1].show_external_missile = true;