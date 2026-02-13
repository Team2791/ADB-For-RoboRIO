# ADB-RoboRIO-Installer
A port of ADB for the NI RoboRIO. Intended for use in First Robotics Challenge. 

This fork utilizes the docker container provided by wpilib to use the most recent toolchain. 

### Installing ADB on your RoboRIO
1. Download most recent release from https://github.com/Team2791/ADB-For-RoboRIO/releases/
2. Move the file to the RoboRIO using a USB drive or scp
3. SSH into the RoboRIO using the SSH client of your choice as user ```admin@roboRIO-{your team number}-frc.local```. (i.e. PuTTY)
4. cd into the directory with the tar file
5. Run the following commands:
```
 tar -zxf ADB-For-RoboRio.tar.gz
chmod 755 install.sh 
./install.sh
```

### Building ADB for the RoboRIO from sources.
1. Clone this repository onto your computer, docker will need to be installed.
2. cd into the repository and enter the ```adb_toolchain-builder``` directory.
3. Run the following commands:
```
./build.sh
```
After adb is built, the files will be copied to the install_files folder for installation. 
