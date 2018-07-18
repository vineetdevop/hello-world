#!/bin/bash

#  errorAnalysisDevice.sh : this program will analyse the error with respect to each module in bagheera
#target=/home/vineet/Bagheera/FieldDevices/US-devices/16300150/Aug29/
cd /home/vineet/Bagheera/FieldDevices/US-devices/16300086/Sept24/
echo -e "Camera:\t\tTotal MP4\t MP4 without GPS"
echo "------------------------------------------------------------------------"

cam0_total=`grep -air "File path for camera 0" */ndcentral/. | wc -l`
cam0_withGPS=`grep -air "File path for camera 0" */ndcentral/. | grep -v "91.0000_181.0000" | wc -l`
cam0_withoutGPS=`expr $cam0_total - $cam0_withGPS`
echo -e "Outward:\t$cam0_total\t\t$cam0_withoutGPS"

cam1_total=`grep -air "File path for camera 1" */ndcentral/. | wc -l`
cam1_withGPS=`grep -air "File path for camera 1" */ndcentral/. | grep -v "91.0000_181.0000" | wc -l`
cam1_withoutGPS=`expr $cam1_total - $cam1_withGPS`
echo -e "Inward:\t\t$cam1_total\t\t$cam1_withoutGPS"

cam2_total=`grep -air "File path for camera 2" */ndcentral/. | wc -l`
cam2_withGPS=`grep -air "File path for camera 2" */ndcentral/. | grep -v "91.0000_181.0000" | wc -l`
cam2_withoutGPS=`expr $cam2_total - $cam2_withGPS`
echo -e "Left:\t\t$cam2_total\t\t$cam2_withoutGPS"

cam3_total=`grep -air "File path for camera 3" */ndcentral/. | wc -l`
cam3_withGPS=`grep -air "File path for camera 3" */ndcentral/. | grep -v "91.0000_181.0000" | wc -l`
cam3_withoutGPS=`expr $cam3_total - $cam3_withGPS`
echo -e "Right:\t\t$cam3_total\t\t$cam3_withoutGPS"

