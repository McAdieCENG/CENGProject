# CENGProject Greenhouse System

## Table of Contents
1. [Introduction](#Introduction)
2. [Bill of Materials](#Bill-of-Materials)
3. [Time Commitment](#Time-Commitment)
4. [Mechanical Assembly](#Mechanical-Assembly)
5. [PCB/Soldering](#PCBSoldering)
6. [Power Up and Unit Testing](#Power-Up-and-Unit-Testing)
7. [Production Testing](#Production-Testing)

## Introduction
Welcome to the build guide for the BME680 sensor to use in devolpment with a greenhouse system. The scope of this project is to learn and integrate a piece of hardware with the broadcomm development platform. In our case, we will be using a Raspberry Pi 3 B+ as our platform to integrate with the BME680 sensor. All of which can then be used for real world applications such as the stated greenhouse system. Below is an image of a finished version of this project.

![Finished Product](https://raw.githubusercontent.com/McAdieCENG/CENGProject/master/Images/PiCase4.jpg)

## Bill of Materials
**Tools Used:**
- Soldering Iron
- 3D Printer
- PCB Milling Machine
- Wire Cutters/Strippers

**Materials Used:**
- PLA Spool for 3D printer
- PCB Boards
- Small Gage Wire
- Solder

**Other Items Needed/Used**
- Laptop
- Ethernet Cable
- Internet Connection

**Item Budget Sheet: [Click Here for Budget File With Clickable Links](https://github.com/McAdieCENG/CENGProject/blob/master/Documentation/Budget%20Files/Budget.xlsx)**
![Budget](https://raw.githubusercontent.com/McAdieCENG/CENGProject/master/Images/Budget.png)

These products are what I used to complete this project, some or all products may not be required if you already have access to them or wish to use a supliment product inplace of the ones I have used. **Keep in mind, as a student I was able to aquire my PCB board and 3D printed case for FREE as part of my tuition. These items will need to be aquired by a 3rd party supplier or manufacturer to complete this build and will most likly cost a small fee.**

## Time Commitment
This project ran its course over an entire school semester (4 months, ~15 weeks). The average time per week spend working on this project including class time, was around ~5 hours. With an average understanding of computers and hardware assembly, I would estimate that the time to potentially complete this project would be around 7-8 hours. That being said, I have made this estimate based on the fact that you should have all or most of the required parts at the time of production. Please be advisded of shipping times when ordering parts or materials, some products may be coming from over seas and require longer time to arrive. A full schedule break down for my time used over the school semester can be found [here.](https://github.com/McAdieCENG/CENGProject/blob/master/Documentation/Schedule%20Files/CENG317Schedule-pages-deleted.pdf)

## Mechanical Assembly
**Raspberry Pi Setup:**  
When it comes to setting up your Raspberry Pi for this build there are a few quick tutorials online that can help you through this portion of the build. The first tutorial can be found at this [link here.](https://projects.raspberrypi.org/en/projects/raspberry-pi-setting-up) After completing the initial setup of the Pi following the first link, you can use [this link](https://www.raspberrypi.org/documentation/remote-access/vnc/README.md) to set up the Pi to accept a remote desktop connection through a program called VNC viewer. It may also be a good idea to enable I2C, you can follow this [link here](https://learn.adafruit.com/adafruits-raspberry-pi-lesson-4-gpio-setup/configuring-i2c) to get that done. Lastly, we need to install the appropriate libraries for the BME680 to work properly, just follow [this](https://github.com/adafruit/Adafruit_CircuitPython_BME680) Adafruit GitHub tutorial to get those installed. After completing these few tutorials you can power down your Raspberry Pi for now as we do not need it quite yet.

**Custom Case:**  
If you'd like to 3D print the same case I used in this project the files can be found [here.](https://github.com/McAdieCENG/CENGProject/tree/master/Documentation/Case%20Files) You can either use the program [OpenSCAD](https://www.openscad.org/) to edit the `.scad` file to your liking OR use the file `Case.stl` as is to print the same case I used for the build.

**Breadboard Setup: (This step is optional, can be used to verify the integrity of the sensor)**  
1. Connect wires to the sensor and the development platform like shown below:
![Breadboard](https://raw.githubusercontent.com/McAdieCENG/CENGProject/master/Images/BME680_bb.png)
2. Download the test program from [here](https://github.com/McAdieCENG/CENGProject/tree/master/Software). Transfer this file over to the development platform if you didn't already download it from the development platform.
3. Run the program on the development platform and make sure you are getting readings from your sensor.

## PCB/Soldering
For this part of the project please make sure you proceeded with care and caution. It is advised to double check your designs before purchasing etching and cutting services.

Step 1: Fritzing  
[Fritzing](https://fritzing.org/download/) is an open-source application that allows users to create PCB schematics for different development platforms. It is highly customizable and easy to use.
1. Download and extract Fritzing. Installation notes are on the linked page for various operating systems.
2. Download my Fritzing file [here](https://github.com/McAdieCENG/CENGProject/blob/master/Electronics/BME680%20PCB.fzz) and open it. From the PCB tab, you can make changes at your leisure and pick it apart to see how it was made.  
![PCB](https://raw.githubusercontent.com/McAdieCENG/CENGProject/master/Images/BME680_pcb.png)  
3.Export the file as a gerber file. `File > Export for production > Extended Gerber`. Keep track of its save location so you know where to access it next.
4. ZIP/Compress the folder containing the gerber files to send to the etcher of your choice.

Step 2: Soldering  
Once you have you PCB board returned you can start soldering your components. Please note, if you designed your own PCB make sure the connections are correct as a bad connection could result in a short circuit causing damage to your sensor or development platform itself.
1. Start by getting your BME680, the 8 pin connector that came with the BME680, a 6 pin header and an 8 pin header from the headers kit, wire strippers, copper wire, solder, your soldering iron and of course your PCB.
2. Solder the 8 pin connector to the BME680. This can be done by putting the longer end of the 8-pin into your breadboard and place your sensor holes into the upright pins and solder all of the pins. This will ensure your sensor doesn’t move too much during soldering along with givng you the optimal connectivity.
3. Solder your vias on your PCB. The vias are the holes that allow for connections to be made from one side of the board to the other. MY PCB designed board has 4 vias that need to be soldered. The easiest method I found, was to strip your copper wiring, stick it into the breadboard, and slide one via onto it so that it is flat and stable for soldering.
4. Now it is time to solder your headers to the board. We will start with the 6 pin, like the image below we want the header to be soldered to the bottom of the board so it can be plugged into the GPIO pins on the Raspberry Pi.  
![6Pin](https://raw.githubusercontent.com/McAdieCENG/CENGProject/master/Images/SolderPt2.jpg)
5.Do the same you did for the 6 pin header now for the 8 pin header, except make sure you flip the board over so the 8 pin header is soldered to the top of the board. Refrence the image below.  
![8Pin](https://raw.githubusercontent.com/McAdieCENG/CENGProject/master/Images/SolderPt1.jpg)
6. You should now be able to plug your sensor into the 8 pin header on the board. Make sure you line up the holes on the sensor with the cut holes on the board so the proper pins are being used to power the sensor and grab data from it as well. Refrence the below image.  
![FinishedBoard](https://raw.githubusercontent.com/McAdieCENG/CENGProject/master/Images/PowerUpPt1.jpg)

## Power Up and Unit Testing
Once everything is plugged in, and you have double checked your connections, plug the 6 pin header into the first 6 GPIO pins on the Raspberry Pi and power it on. You can now either download the test program [here](https://github.com/McAdieCENG/CENGProject/tree/master/Software) to see if everything is working properly OR if you have already downloaded it from the breadboard step just re-run the program and make sure you are still able to get readings from the sensor.  
![PowerUp](https://raw.githubusercontent.com/McAdieCENG/CENGProject/master/Images/PowerUpPt2.jpg)
![Readings](https://raw.githubusercontent.com/McAdieCENG/CENGProject/master/Images/Readings.jpg)

## Production Testing
For the case of production testing of this board, my suggestion would be to have a fully setup development platform for easy access to the test software and libraries for once the PCB's have been soldered and are ready for testing. As for testing you'd just have to connect a BME680 sensor to the 8 pin header on the board and run the test program, if you can display readings from the sensor then the board is functional and ready to distribute.  
  
This concludes the end of the build instructions, I hope you had as much fun with this project as I did!
