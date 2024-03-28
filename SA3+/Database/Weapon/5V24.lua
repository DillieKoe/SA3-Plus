V600P = {
    category        = CAT_MISSILES,
    name            = "V-600P",
	display_name 	= _("V-600P SA-3A Goa"),
	wsTypeOfWeapon 	= {wsType_Weapon,wsType_Missile,wsType_SA_Missile,WSTYPE_PLACEHOLDER},

    Escort       = 3,
    Head_Type    = 6,
    sigma        = {50, 50, 50}, --aiming error on target
    M            = 912.0, --missile mass in KG
    H_max        = 10000.0, --maximum flight altitude
    H_min        = 200,  --minimum flight altitude
    Diam         = 550.0, --diameter
    Cx_pil       = 1,
    D_max        = 13000.0,  -- maximum launch range at 0 height
    D_min        = 6000.0, --minimum launch range
    Head_Form    = 1,
    Life_Time    = 26.0,
    Nr_max       = 8,
    v_min        = 170.0, --minimum speed
    v_mid        = 430.0, --average speed
    Mach_max     = 2.0,
    t_b          = 0.0, --engine start delay time
    t_acc        = -1, --engine operating time
    t_marsh      = -1, --time in flight
    Range_max    = 25000.0, -- maximum launch range at maximum height (HHQ9: 100km range)
    H_min_t      = 200.0, --minimum target height
    Fi_start     = 3.14152, -- angle of tracking at firing
    Fi_rak       = 3.14152,
    Fi_excort    = 1.0,
    Fi_search    = 99.9, --search angle limit
    OmViz_max    = 99.9, --search line speed limit
	exhaust1 	 = { 1.0, 1.0, 1.0, 0.8 },
    X_back       = -0.6,
    Y_back       = 0.0,
    Z_back       = 0.0,	
	exhaust2 	 = { 0.9, 0.9, 0.9, 0.2 },
	X_back_acc 	 = -2.49,
    Y_back_acc 	 = 0.0,
    Z_back_acc 	 = 0.0,		
    Reflection   = 0.2, --effective surface of radio reflection, square meters (like 5V55)
    KillDistance = 40.0,
    ccm_k0       = 2.0,
	
	warhead = enhanced_a2a_warhead(60),

    shape_table_data = {
		{
			name	 = "5v24";
			file  	 = "5v24";
			life  	 = 1;
			fire  	 = { 0, 1};
			username = "SAV600P";
			index = WSTYPE_PLACEHOLDER;
		},
	},
	
	
    ModelData = {
        58 ,  -- model params count
        1.0 ,   -- characteristic square (характеристическая площадь) 
        
        -- параметры зависимости Сx
		0.047 , -- The plateau of Cx0 at subsonic speeds (when M << 1).
		0.082 , -- The height of the wave drag peak.
		0.018 , -- The slope of the shock front approaching the wave drag peak.
		0.041 , -- The plateau of Cx0 at supersonic speeds (when M >> 1).)
		0.2  , -- The slope of the drag reduction after the wave drag peak. 
		0.9  , -- The coefficient of the polar curve drop-off (proportional to sqrt(M^2-1)).
	
		-- параметры зависимости Cy
		0.385, -- Cya plateau in subsonic flow (M << 1) 4.15
		0.300, -- Cya bump at supersonic speeds (M >> 1) 3.75
		0.085, -- Rate of decrease (front) behind the shock wave 0.80
        
        0.8 , -- 8 Alfa_max  максимальный балансировачный угол, радианы
        0.0, --угловая скорость создаваймая моментом газовых рулей
        
        -- Engine data. Time, fuel flow, thrust.    
--    t_statr        t_b     t_accel     t_march     t_inertial        t_break        t_end            -- Stage
        0.0,        0.0,    3.2,          21.5,        0.0,            0.0,        1.0e9,         -- time of stage, sec
         0.0,        0.0,    87.8,        5.6,        0.0,            0.0,        0.0,           -- fuel flow rate in second, kg/sec(секундный расход массы топлива кг/сек)
         0.0,        0.0,    150000,    8894,    0.0,            0.0,        0.0,           -- thrust, newtons (adjusted to meet expected speed values)
    
         26.0, -- таймер самоликвидации, сек
         80.0, -- время работы энергосистемы, сек
         0, -- абсолютная высота самоликвидации, м
         0.0, -- время задержки включения управления (маневр отлета, безопасности), сек
         1.0e9, -- дальность до цели в момент пуска, при превышении которой ракета выполняется маневр "горка", м
         1.0e9, -- дальность до цели, при которой маневр "горка" завершается и ракета переходит на чистую пропорциональную навигацию (должен быть больше или равен предыдущему параметру), м 
         0.0,  -- синус угла возвышения траектории набора горки
         50.0, -- продольное ускорения взведения взрывателя
         0.0, -- модуль скорости сообщаймый катапультным устройством, вышибным зарядом и тд !!!!!!!
         1.19, -- характристика системы САУ-РАКЕТА,  коэф фильтра второго порядка K0
         1.0, -- характристика системы САУ-РАКЕТА,  коэф фильтра второго порядка K1
         2.0, -- характристика системы САУ-РАКЕТА,  полоса пропускания контура управления
         0.0, -- дальность полета в горизонт с располагаемой перегрузкой Navail >= 1.0 на высоте H=2000
         0.0, -- крутизна зависимости  дальность полета в горизонт с располагаемой перегрузкой Navail >= 1.0 от высоты H
         0.0,
         0.0, -- безразмерный коэф. эффективности САУ ракеты
         0.0, -- расчет времени полета
          -- DLZ. Данные для рассчета дальностей пуска (индикация на прицеле)
         200000.0, -- дальность ракурс   180(навстречу) град,  Н=10000м, V=900км/ч, м
         75000.0, -- дальность ракурс 0(в догон) град,  Н=10000м, V=900км/ч, м
         200000.0, -- дальность ракурс     180(навстречу) град, Н=1000м, V=900км/ч, м
         0.2, -- Уменьшение разрешенной дальности пуска при отклонении вектора скорости носителя от линии визирования цели.
         1.0, -- Вертикальная плоскость. Наклон кривой разрешенной дальности пуска в нижнюю полусферу. Уменьшение дальности при стрельбе вниз.
         1.4, -- Вертикальная плоскость. Наклон кривой разрешенной дальности пуска в верхнюю полусферу. Увеличение дальности при стрельбе вверх.
        -3.0, -- Вертикальная плоскость. Угол перегиба кривой разрешенной дальности, верхняя - нижняя полусфера.
        0.5, -- Изменение коэффициентов наклона кривой в верхнюю и нижнюю полусферы от высоты носителя.
    },
};
declare_weapon(V600P)
