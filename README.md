# Digital-System-Clock-and-Timing-Generator
This is a VHDL code for Clock and Timing Generator in Light Seeking Robot Project.


## Introduction
The tasks are to make a 25 MHz clock to supply the clock input in VGA Display and Thresholding, Buffering and Light Source Detection and 500 kHz clock frequency for Motor Driver.
The project is coded using VHDL language.

## Consideration
* Camera OV7670
  This camera can get 8 bit of one period of clock.
* VGA Display
  Type of VGA Display that is used in market is displayed on this image.
  ![Image of VGA Display](/images/vga_display.png)
  At this project, the specification for this project is 640 x 480, 60Hz with 25.175 MHz clock.
* Motor Driver
  Motor Driver that is used on this project is Pmod hb5. This motor driver need 2 kHz frequency clock. In the digital area, PWM is created using some counter that has 8 bit. 
  So the clock that is needed to supply the motor driver is 2 kHz x 256 is 512 kHz. In this project, the clock that is supplied to the motor driver is 500 kHz, which is almost the same as 512 kHz.
  Basys3 has on board clock, which is 100 MHz and this clock must be converted into 500 kHz using frequency divider.

## Steps
1. Download Xilinx software in this link (https://www.xilinx.com/support/download.html). 
2. Clone this repository.
  ![Image of Clone repository](/images/clone_repository.png)
3. Open Project in Xilinx software and open Clock_Timing_Generator.xise
  ![Image of Open Project](/images/open_project.png)
4. Click on the implementation button in Hierarchy.
  ![Image of Implementation](/images/implementation.png)
5. Click on the file that will be testbenched.
  ![Image of open file](/images/open_file.png)
6. Click iSim Simulator and click simulate behaviour.
  ![Image of simulation](/images/simulate.png)

