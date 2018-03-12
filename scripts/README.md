# A few helper scripts

## `runMAV.sh`

Usage:

    runMAV.sh <System id> <GCS host> <GCS port>

This will start the Ardupilot SITL container letting you customize the Ardupilot system id (aka `SYSID_THISMAV`) parameter, thus allowing you to have multiple containers / simulated MAVs properly (i.e., with different system ids), along with the GCS host and port, e.g.

In principle, you should be able to use the same GCS host/port pair for multiple containers/simulated MAVs, e.g., GCS software like [QGroundControl](http://qgroundcontrol.com/)  uses a single UDP port for communication with multiple MAVs.

## `runMAV-macos.sh`

This script is MacOS specific and should be used when the GCS is running on your local MacOS machine.

Calling 

    runMAV-macos.sh <sys_id> <gcs_port>` 
    
is shorthand for 
    
    runMAV.sh <sys_id> docker.for.mac.localhost <GCS port>

## `entryPoint.sh`

The script runs as entry point for the container at startup (overriding the container's default one), in support of the system id setting by `runMAV.sh`. It is not meant to be called directly, but you may wish to edit it for further customisation.