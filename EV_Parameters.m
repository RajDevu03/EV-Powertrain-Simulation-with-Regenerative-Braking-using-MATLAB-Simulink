%% EV Parameters

% Vehicle Parameters
vehicle_mass = 1500;          % kg
wheel_radius = 0.30;          % m

% Aerodynamics
air_density = 1.225;          % kg/m^3
drag_coefficient = 0.28;
frontal_area = 2.2;           % m^2

% Rolling Resistance
Crr = 0.015;
g = 9.81;

% Transmission
gear_ratio = 9;
gear_efficiency = 0.95;

% Motor Parameters
motor_max_torque = 250;      % Nm
motor_max_speed  = 12000;    % rpm
motor_efficiency = 0.95;
    
% Battery Parameters
battery_voltage = 400;      % V
battery_capacity_Ah = 75;   % Ah
initial_soc = 90;           % %

% Controller
Kp = 60;
Ki = 10;
Kd = 0;

road_grade = -5;    % degrees

F_grade = vehicle_mass * g * sind(road_grade);