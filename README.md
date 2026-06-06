# EV Powertrain Simulation with Regenerative Braking using MATLAB/Simulink

## Overview

This project presents the modeling and simulation of a Battery Electric Vehicle (BEV) powertrain using MATLAB/Simulink. The model evaluates vehicle longitudinal dynamics, electric drive performance, battery power consumption, regenerative braking, and State of Charge (SOC) behavior under different road conditions.

The simulation incorporates vehicle dynamics, electric drive efficiency, battery energy consumption, aerodynamic drag, rolling resistance, and road grade effects. Three driving scenarios were analyzed:

* Flat Road (0° Grade)
* Uphill Road (+5° Grade)
* Downhill Road (-5° Grade)

---

## Objectives

* Develop a complete EV powertrain simulation model.
* Implement speed tracking using a PID controller.
* Model electric drive torque generation.
* Analyze battery power consumption and current demand.
* Implement regenerative braking.
* Estimate battery State of Charge (SOC).
* Evaluate vehicle performance under different road grades.

---

## System Architecture

Drive Cycle → Driver Controller (PID) → Electric Drive System → Transmission → Vehicle Body → Battery Pack → Results

### Subsystems

#### Drive Cycle

Generates reference vehicle speed profile.

#### Driver Controller

Calculates required torque using PID control based on speed error.

#### Electric Drive System

Represents inverter and electric motor using an efficiency-based torque model.

#### Transmission

Fixed reduction gear with efficiency losses.

#### Vehicle Body

Models:

* Vehicle Mass
* Rolling Resistance
* Aerodynamic Drag
* Road Grade Force

#### Battery Pack

Calculates:

* Battery Power
* Battery Current
* Battery State of Charge (SOC)

#### Results Dashboard

Displays:

* Speed Tracking
* Torque Analysis
* Battery Power
* Battery Current
* SOC

---

## Vehicle Parameters

| Parameter                      | Value   |
| ------------------------------ | ------- |
| Vehicle Mass                   | 1500 kg |
| Wheel Radius                   | 0.30 m  |
| Gear Ratio                     | 9       |
| Gear Efficiency                | 95%     |
| Motor Efficiency               | 95%     |
| Inverter Efficiency            | 97%     |
| Battery Voltage                | 400 V   |
| Battery Capacity               | 75 Ah   |
| Initial SOC                    | 90%     |
| Drag Coefficient               | 0.29    |
| Frontal Area                   | 2.12 m² |
| Rolling Resistance Coefficient | 0.015   |

---

## Simulation Scenarios

### Scenario 1 – Flat Road (0° Grade)

Results:

* Accurate speed tracking
* Moderate battery power consumption
* Stable SOC reduction
* Effective regenerative braking

### Scenario 2 – Uphill Road (+5° Grade)

Results:

* Increased wheel torque demand
* Higher battery power consumption
* Higher battery current draw
* Faster SOC depletion

### Scenario 3 – Downhill Road (-5° Grade)

Results:

* Negative wheel torque during cruise
* Regenerative braking dominates
* Negative battery power
* SOC recovery observed

---

## Key Results

### Speed Tracking

The PID controller successfully tracks the reference speed profile with minimal overshoot and steady-state error.

### Regenerative Braking

During vehicle deceleration and downhill operation, the motor acts as a generator, returning energy to the battery.

### Battery Performance

Battery power and current increase significantly during uphill operation and decrease during downhill operation due to regenerative energy recovery.

### SOC Analysis

SOC decreases during acceleration and uphill driving while increasing during downhill regenerative braking events.

---

## Tools Used

* MATLAB
* Simulink
* Control System Toolbox
* Simscape (optional extensions)

---

## Future Improvements

* Detailed PMSM Motor Model
* PWM Inverter Modeling
* Battery Thermal Management
* Battery Aging Analysis
* WLTP Drive Cycle
* Motor Efficiency Maps
* Battery Management System (BMS)

---

## Author

RAJA SEKHAR DEVU
