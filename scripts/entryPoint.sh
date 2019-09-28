#! /bin/bash
source /etc/profile
echo SYSID_THISMAV=$1 | tee -a /ardupilot/Tools/autotest/default_params/plane.parm
cat /external/extra-locations.txt >> /ardupilot/Tools/autotest/locations.txt
START_LOCATION=$(< /external/start-location.conf)
sim_vehicle.py -L $START_LOCATION --speedup=$SPEEDUP $SIM_OPTIONS 
