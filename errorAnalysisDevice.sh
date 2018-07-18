#!/bin/bash

#  errorAnalysisDevice.sh : this program will analyse the error with respect to each module in bagheera
#target=/home/vineet/Bagheera/FieldDevices/US-devices/16300150/Aug29/
target=/home/vineet/Bagheera/FieldDevices/US-devices/16300086/Sept24/
#cd /home/vineet/Bagheera/FieldDevices/US-devices/16300086/Sept24/
echo "=========================== ERRORS START ==============================="
echo "------------------------------------------------------------------------"
echo -e "Camera errors:\t\t Count"
echo "------------------------------------------------------------------------"
echo -e "###TIME TO RESTART MACHINE###: \t `grep -airn "###TIME TO RESTART MACHINE###" | wc -l`"
echo -e "###TIME TO RESTART BAGHEERA SERVICE###: \t `grep -airn "###TIME TO RESTART BAGHEERA SERVICE###" | wc -l`"
echo -e "Block camera: \t `grep -airn "Block camera" | wc -l`"
echo -e "ND_CAM_0: \t `grep -airn "Block camera" | grep "ND_CAM_0" | wc -l`"
echo -e "ND_CAM_1: \t `grep -airn "Block camera" | grep "ND_CAM_1" | wc -l`"
echo -e "ND_CAM_2: \t `grep -airn "Block camera" | grep "ND_CAM_2" | wc -l`"
echo -e "ND_CAM_3: \t `grep -airn "Block camera" | grep "ND_CAM_3" | wc -l`"
echo -e "Gst thread exiting: \t `grep -airn "Gst thread exiting" | wc -l`"
echo -e "No space left on the resource: \t `grep -airn "No space left on the resource" | wc -l`"
echo -e "Internal data flow error: \t `grep -airn "Internal data flow error" | wc -l`"
echo -e "Camera error callback: \t `grep -airn "Camera error callback" | wc -l`"
echo -e "Cannot start camera: \t `grep -airn "Cannot start camera" | wc -l`"
echo -e "Socket read error: \t `grep -airn "Socket read error" | wc -l`"
echo -e "Failed in initialising pipeline: \t `grep -airn "Failed in initialising pipeline" | wc -l`"
echo -e "Error state reached: \t `grep -airn "Error state reached" | wc -l`"
echo -e "Received error from camera daemon....exiting: \t `grep -airn "Received error from camera daemon....exiting" | wc -l`"
echo -e "cam_num 0 is crashed: \t `grep -airn "cam_num 0 is crashed" | wc -l`"
echo -e "cam_num 1 is crashed: \t `grep -airn "cam_num 1 is crashed" | wc -l`"
echo -e "cam_num 2 is crashed: \t `grep -airn "cam_num 2 is crashed" | wc -l`"
echo -e "cam_num 3 is crashed: \t `grep -airn "cam_num 3 is crashed" | wc -l`"
echo -e "side camera crash: \t `grep -airn "side camera crash" | wc -l`"
echo -e "Cannot enable Media Recorder Front: \t `grep -airn "Cannot enable Media Recorder Front" | wc -l`"
echo -e "Time out for blocking pad: \t `grep -airn "Time out for blocking pad" | wc -l`"
echo "========================================================================"
sleep 1
echo -e "Videolist errors:\t\t Count"
echo "------------------------------------------------------------------------"
echo -e "Some thing wrong with notify_cloud: \t `grep -airn "Some thing wrong with notify_cloud" | wc -l`"
echo -e "collect_notify_videolist is FAILED: \t `grep -airn "collect_notify_videolist is FAILED" | wc -l`"
echo -e "Circular Buffer errors: \t `grep -airn "Circular Buffer errors" | wc -l`"
echo -e "Cannot allocate Config: \t `grep -airn "Cannot allocate Config" | wc -l`"
echo "========================================================================"
sleep 1
echo -e "Metadata errors:\t\t Count"
echo "------------------------------------------------------------------------"
echo -e "Metadata Retry count: \t `grep -airn "Metadata Retry count" | wc -l`"
echo -e "Metadata Retrial attempts exceeded: \t `grep -airn "Metadata Retrial attempts exceeded" | wc -l`"
echo -e "Metadata zip error: \t `grep -airn "Metadata zip error" | wc -l`"
echo -e "Not creating metadata.zip: \t `grep -airn "not creating metadata.zip" | wc -l`"
echo -e "Metadata files not created at: \t `grep -airn "Metadata files not created at" | wc -l`"
echo "========================================================================"
sleep 1
echo -e "Device logs:\t\t Count"
echo "------------------------------------------------------------------------"
echo -e "Healthstats zip moved to backup: \t `grep -airn "Healthstats zip moved to backup" | wc -l`"
echo -e "Upload data log parsing Exceptions: \t `grep -airn "Upload data log parsing Exceptions" |wc -l`"
echo -e "Tracebacks: \t `grep -airn "Tracebacks" | wc -l`"
echo -e "Error in upload: \t `grep -airn "Error in upload" | wc -l`"
echo -e "ValueError: \t `grep -airn "ValueError" | wc -l`"
echo -e "TypeError: \t `grep -airn "TypeError" | wc -l`"
echo "========================================================================"
sleep 1
echo -e "GPS Errors:\t\t Count"
echo "------------------------------------------------------------------------"
echo -e "Cannot open GPS: \t `grep -airn "Cannot open GPS" | wc -l`"
echo -e "Error initing GPS: \t `grep -airn "Error initing GPS" | wc -l`"
echo -e "Retrying GPS registration: \t `grep -airn "Retrying GPS registration" | wc -l`"
echo -e "GPS_DEV: E: \t `grep -airn "GPS_DEV: E"  | wc -l`"
echo -e "Checksum failed: \t `grep -airn "Checksum failed" | wc -l`"
echo -e "Cannot find GPS interface: \t `grep -airn "Cannot find GPS interface" | wc -l`"
echo "========================================================================"
sleep 1
echo -e "Power monitor Errors:\t\t Count"
echo "------------------------------------------------------------------------"
echo -e "SHUTDOWN_FOR_CYCLIC_REBOOT: \t `grep -air "restarting because of SHUTDOWN_FOR_CYCLIC_REBOOT" | wc -l`"
echo -e "SHUTDOWN_FOR_IGNITION_OFF: \t `grep -air "Shuttingdown because of SHUTDOWN_FOR_IGNITION_OFF" | wc -l`"
echo -e "POSTPONE_FOR_IGNITION_ON: \t `grep -air "postponing previous shutdown because of POSTPONE_FOR_IGNITION_ON" | wc -l`"
echo -e "SHUTDOWN_FOR_LOWPOWER_WAKEUP: \t `grep -air "Shuttingdown because of SHUTDOWN_FOR_LOWPOWER_WAKEUP" | wc -l`"
echo -e "SHUTDOWN_FOR_BAD_VOLTAGE: \t `grep -air "SHUTDOWN_FOR_BAD_VOLTAGE" | wc -l`"
echo -e "POWERMON_BAD_BATTERY_VOLTAGE: \t `grep -air "POWERMON_BAD_BATTERY_VOLTAGE" | wc -l`"
echo -e "battery voltage crossed limits: \t `grep -air "battery voltage crossed limits" | wc -l`"
echo -e "POSSIBLE SCENARIO FOR RTC RESET: \t `grep -air "POSSIBLE SCENARIO FOR RTC RESET"  | wc -l`"
echo "========================================================================"
sleep 1
echo -e "Observation files:\t\t Count"
echo "------------------------------------------------------------------------"
echo -e "Copy of inertial observations successful: \t `grep -air "Copy of inertial observations successful" | wc -l`"
echo -e "Copy of observations successful: \t `grep -air "Copy of observations successful" | wc -l`"
echo -e "Adding to observation zip: \t `grep -air "adding to observation zip" | wc -l`"
echo -e "Going to delete inertial only obs file: \t `grep -airn "Going to delete inertial only obs file" | wc -l`"
echo "========================================================================"
sleep 1
echo -e "AWS IoT Errors:\t\t Count"
echo "------------------------------------------------------------------------"
echo -e "ND_AWS_IOT: C: \t `grep -airn "ND_AWS_IOT: C" | wc -l`"
echo -e "ND_AWS_IOT: E: \t `grep -airn "ND_AWS_IOT: E" | wc -l`"
echo -e "Error polling: \t `grep -airn "Error polling" | wc -l`"
echo -e "Response send failed: \t `grep -airn "Response send failed" | wc -l`"
echo -e "iot_tls_connect L#154  failed: \t `grep -airn "iot_tls_connect L#154  failed" | wc -l`"
echo -e "Unknown message: \t `grep -airn "Unknown message" | wc -l`"
echo -e "Empty Videolist requests: \t `grep -airn "Empty Videolist requests" | wc -l`"
echo -e "Shadow Connection Error: \t `grep -airn "Shadow Connection Error" | wc -l`"
echo "========================================================================"
sleep 1
echo -e "NDCENTRAL Errors:\t\t Count"
echo "------------------------------------------------------------------------"
echo -e "ND_CENTRAL: C: \t `grep -airn "ND_CENTRAL: C" | wc -l`"
echo -e "ND_CENTRAL: E: \t `grep -airn "ND_CENTRAL: E" | wc -l`"
echo -e "Config_parser: C: \t `grep -airn "Config_parser: C" | wc -l`"
echo -e "Config_parser: E: \t `grep -airn "Config_parser: E" | wc -l`"
echo -e "Receive message failed: \t `grep -airn "Receive message failed" | wc -l`"
echo -e "Error accessing msg queue: q_nd_central: \t `grep -airn "Error accessing msg queue: q_nd_central" | wc -l`"
echo -e "Cannot receive from queue q_nd_central: \t `grep -airn "Cannot receive from queue q_nd_central" | wc -l`"
echo "========================================================================"
sleep 1
echo -e "Common Errors:\t\t Count"
echo "------------------------------------------------------------------------"
echo -e "Exception: \t `grep -air "Exception" | wc -l`"
echo -e "Error initing ALS: \t `grep -air "Error initing ALS" | wc -l`"
echo -e "No space left on device: \t `grep -air "No space left on device" | wc -l`"
echo -e "Changing the FILLING_LIMIT: \t `grep -air "Changing the FILLING_LIMIT" | wc -l`"
echo -e "special device /dev/mmcblk1p1 does not exist: \t `grep -air "special device /dev/mmcblk1p1 does not exist" | wc -l`"
echo -e "switching to 1 cam since no SDCARD: \t `grep -air "switching to 1 cam since no SDCARD" | wc -l`"
echo -e "CURL Request Timeouts: \t `grep -air "CURL Request Timeouts" | wc -l`"
echo -e "CURL easy perform: \t `grep -air "CURL easy perform" | wc -l`"
echo -e "Changing Filling Limit: \t `grep -air "Changing Filling Limit" | wc -l`"
echo -e "Got state 'UPLOAD_FAILED_STATE: \t `grep -air "Got state 'UPLOAD_FAILED_STATE" | wc -l`"
echo -e "Upload failed for curl: \t `grep -air "Upload failed for curl" | wc -l`"
echo -e "Upload Failed for /media/: \t `grep -air "Upload Failed for /media/" | wc -l`"
echo -e "Failed to connect: \t `grep -air "Failed to connect" | wc -l`"
echo -e "Already Lock Acquired: \t `grep -air "Already Lock Acquired" | wc -l`"
echo -e "Network failure: \t `grep -air "Network failure" | wc -l`"
echo -e "Error in upload of inward inference video: \t `grep -air "Error in upload of inward inference video" | wc -l`"
echo -e "FV upload aborted: \t `grep -air "FV upload aborted" | wc -l`"
echo -e "speed-voilation: \t `grep -air "speed-voilation" | wc -l`"
echo -e "Exception in NRT: \t `grep -air "Exception in NRT" | wc -l`"
echo -e "Exception in infer function: \t `grep -air "Exception in infer function" | wc -l`"
echo -e "Failed to get collision warning alerts: \t `grep -air "Failed to get collision warning alerts" | wc -l`"
echo -e "Failed to get average relative speeding alerts: \t `grep -air "Failed to get average relative speeding alerts" | wc -l`"
echo -e "Unable to find observation data from realtime analytics module. So not running NRT: \t `grep -air "Unable to find observation data from realtime analytics module. So not running NRT" | wc -l`"
echo -e "Warning - Exceeding latency for frame: \t `grep -air "Warning - Exceeding latency for frame" | wc -l`"
echo -e "Warning - Dropping fidx 204 and reset to 0: \t `grep -air "Warning - Dropping fidx 204 and reset to 0" | wc -l`"
echo -e "Warning - Writing partial observation data: \t `grep -air "Warning - Writing partial observation data" | wc -l`"
echo -e "Warning - Processing partial session: \t `grep -air "Warning - Processing partial session" | wc -l`"

echo -e "Exception occurred in UpdateHealthStatusBagheera: \t `grep -air "Exception occurred in UpdateHealthStatusBagheera" | wc -l`"
echo -e "SdCard not mounted. Discarding: \t `grep -air "SdCard not mounted. Discarding" | wc -l`"
echo -e "Network is not connected: \t `grep -air "Network is not connected" | wc -l`"
echo -e "Network is connected returning true: \t `grep -air "Network is connected returning true" | wc -l`"
echo -e "crank level -273: \t `grep -air "crank level -273" | wc -l`"
echo -e "Detected a MISC entry in DB; deleting: \t `grep -air "Detected a MISC entry in DB; deleting" | wc -l`"
#echo -e "Exception in NRT: \t `grep -air "Exception in NRT" | wc -l`"
#echo -e "Exception in NRT: \t `grep -air "Exception in NRT" | wc -l`"
#echo -e "Exception in NRT: \t `grep -air "Exception in NRT" | wc -l`"
echo "========================================================================"
sleep 1
echo -e "BTFV Errors:\t\t Count"
echo "------------------------------------------------------------------------"
echo -e "BTFV_DB: C: \t `grep -airn "BTFV_DB: C" | wc -l`"
echo -e "BTFV_DB: E: \t `grep -airn "BTFV_DB: C" | wc -l`"
echo -e "BTFV: C: \t `grep -airn "BTFV: C" | wc -l`"
echo -e "BTFV: E: \t `grep -airn "BTFV: E" | wc -l`"
echo -e "failed with status code 400: \t `grep -airn "failed with status code 400" | wc -l`"
echo -e "Cloud post was not successful. send Retry: \t `grep -airn "Cloud post was not successful. send Retry" | wc -l`"
echo "========================================================================"
sleep 1
echo -e "Connection Manager Errors:\t\t Count"
echo "------------------------------------------------------------------------"
echo -e "Creating ND_BUS message loop: \t `grep -airn "Creating ND_BUS message loop" | wc -l`"
echo -e "getpwnam failed with errno: \t `grep -airn "getpwnam failed with errno" | wc -l`"
echo -e "Failed to parse mod file: \t `grep -airn "Failed to parse mod file" | wc -l`"
echo -e "Profile retrieving Failed for Profile Id: \t `grep -airn "Profile retrieving Failed for Profile Id" | wc -l`"
echo "========================================================================"
sleep 1
echo -e "Sierra Module Errors:\t\t Count"
echo "------------------------------------------------------------------------"
echo -e "Failed to get Session State: \t `grep -airn "Failed to get Session State" | wc -l`"
echo -e "Failed to subscribe for: \t `grep -airn "Failed to subscribe for" | wc -l`"
echo -e "Failure Code: \t `grep -airn "Failure Code" | wc -l`"
echo -e "Data Session failed to start: \t `grep -airn "Data Session failed to start" | wc -l`"
echo -e "Modem not registered to network: \t `grep -airn "Modem not registered to network" | wc -l`"
echo -e "Data session abruptly disconnected: \t `grep -airn "Data session abruptly disconnected" | wc -l`"
echo "------------------------------------------------------------------------"
echo "======================= ERRORS SHUTING DOWN ============================"
sleep 1
echo "======================= Additional Info START =========================="
sleep 1
echo "------------------------------------------------------------------------"
echo -e "Memory Card Details: \n"------------------------------------------------------------------------"\n`grep -air "Used Available Use"  -A 1 | tail -n 2`"
sleep 1
echo "------------------------------------------------------------------------"
echo  "-------------------------Alert Details Start---------------------------"
echo "------------------------------------------------------------------------"
sleep 1
echo -e "Alert files: \t `grep -air "  alerts found" | wc -l`"
echo -e "------------------------------------------------------------------------\n`grep -air "  alerts found"`"
echo "------------------------------------------------------------------------"
sleep 1
echo -e "User generated alerts count: \t`grep -air "User alert msg received, button" | wc -l`"
echo -e "------------------------------------------------------------------------\n`grep -air "User alert msg received, button"`"
echo "------------------------------------------------------------------------"
sleep 1
echo -e "Summary files uploaded to cloud: \t`grep -air "/media/SdCard"  */curr_unifieduploader.log | grep "summary.json" | grep "Summary file size" | wc -l`"
echo -e "------------------------------------------------------------------------\n`grep -air "/media/SdCard"  */curr_unifieduploader.log | grep "summary.json" | grep "Summary file size"`"
echo "------------------------------------------------------------------------"
sleep 1
echo -e "AWS IoT Connected Successfully: \t `grep -air "Connected successfully" | wc -l`"
echo -e "------------------------------------------------------------------------\n`grep -air "Connected successfully"`"
echo "------------------------------------------------------------------------"
sleep 1
echo -e "Deleted Alerts: \t`grep -air "deleted upload req /home/iriscli/ND_OUTPUT/" | wc -l`"
echo -e "------------------------------------------------------------------------\n`grep -air "deleted upload req /home/iriscli/ND_OUTPUT/"`"
sleep 1
echo -e "Copied alert: \t\t`grep -air "Copied alert" | wc -l`"

echo    "-------------------------Alert Details Stop-----------------------------"
sleep 1
echo "------------------------------------------------------------------------"
echo -e "Total VoDs Recieved in AWS IOT: \t`grep -air "Received unique id" | wc -l`"
echo -e "------------------------------------------------------------------------\n`grep -air "Received unique id"`"
echo "------------------------------------------------------------------------"
sleep 1
echo -e "Ignoring Requests: \t`grep -air "Ignoring Requests" | wc -l`"
echo "------------------------------------------------------------------------\n`grep -air "Ignoring Requests"`"
echo "------------------------------------------------------------------------"
sleep 1
echo -e "Requests Unified Uploader: \t`grep -air "Request id" | wc -l`"
echo -e "------------------------------------------------------------------------\n`grep -air "Request id"`"
echo "------------------------------------------------------------------------"
sleep 1
echo -e "Upload Failed for /media/: \t`grep -air "Upload Failed for /media/SdCard/" | wc -l`"
echo -e "------------------------------------------------------------------------\n`grep -air "Upload Failed for /media/SdCard/"`"
echo "------------------------------------------------------------------------"
sleep 1
echo -e "Video files not-available: \t`grep -air "not-available" | wc -l`"
echo -e "------------------------------------------------------------------------\n`grep -air "not-available"`"
echo "------------------------------------------------------------------------"
sleep 1
echo -e "Upload Successful files: \t`grep -air "Upload Successful for /media/SdCard/" | wc -l`"
echo -e "------------------------------------------------------------------------\n`grep -air "Upload Successful for /media/SdCard/"`"
echo "------------------------------------------------------------------------"
sleep 1
echo -e "OTA Errors and Details: \t"
echo "------------------------------------------------------------------------"
echo -e "Failed to connect: \t\t`grep -air "Failed to connect" | wc -l`"
sleep 1
echo -e "Already Lock Acquired: \t\t`grep -air "Already Lock Acquired" | wc -l`"
sleep 1
echo -e "No Of times OTA package download Requested: \t`grep -air "Checksum sum before strip" | wc -l`"
sleep 1
echo -e "No Of times OTA package Downloaded: \t`grep -air "Zip Download Update Status = {\"response\"\:true}" | wc -l`"
sleep 1
echo "------------------------------------------------------------------------"
sleep 1
echo -e "PowerMonitor:\t\t Count"
echo "------------------------------------------------------------------------"
echo -e "SHUTDOWN_FOR_CYCLIC_REBOOT: \t`grep -air "SHUTDOWN_FOR_CYCLIC_REBOOT" | wc -l`"
sleep 1
echo -e "SHUTDOWN_FOR_IGNITION_OFF: \t`grep -air "SHUTDOWN_FOR_IGNITION_OFF" | wc -l`"
sleep 1
echo -e "POSTPONE_FOR_IGNITION_ON: \t`grep -air "POSTPONE_FOR_IGNITION_ON" | wc -l`"
sleep 1
echo -e "SHUTDOWN_FOR_LOWPOWER_WAKEUP: \t`grep -air "SHUTDOWN_FOR_LOWPOWER_WAKEUP" | wc -l`"
echo "------------------------------------------------------------------------"
sleep 1
echo -e "Speed:\t\t Count"
echo "------------------------------------------------------------------------"
echo -e "engine idle registration done: \t`grep -air "engine idle registration done" | wc -l`"
sleep 1
echo -e "Speed registration done: \t`grep -air "Speed registration done" | wc -l`"
sleep 1
echo -e "Vehicle 'out of idle' detected: \t`grep -air "Vehicle 'out of idle' detected" | wc -l`"
sleep 1
echo -e "Vehicle idle detected: \t`grep -air "Vehicle idle detected" | wc -l`"
sleep 1
echo -e "Retrying GPS registration: \t`grep -air "Retrying GPS registration" | wc -l`"
echo "------------------------------------------------------------------------"
sleep 1
echo -e "Driver Login:\t\t Count"
echo "------------------------------------------------------------------------"
echo -e "BLE Scanner: \t`grep -air "BLE Scanner" | wc -l`"
sleep 1
echo -e "Driver Detected: \t`grep -air "Driver Detected" | wc -l`"
sleep 1
echo -e "Multiple Drivers Detected: \t`grep -air "Multiple Drivers Detected" | wc -l`"
echo "------------------------------------------------------------------------"
echo -e "=================== Additional Info Shuting Down =======================\n"
sleep 1
echo "=========================== BTFV Files START ==========================="
sleep 1
echo "------------------------------------------------------------------------"
echo -e "Upload of Inward Video files: \t`grep -air "Upload of inward inference video successful" | wc -l`"
echo "------------------------------------------------------------------------"
sleep 1
echo -e "------------------------------------------------------------------------\n`grep -air "Upload of inward inference video successful"`"
sleep 1
echo -e "BTFV Files:\t\t Count"
echo "------------------------------------------------------------------------"
echo -e "BTFV Video files copied: \t`grep -air "video Filename for FV" | wc -l`"
echo -e `grep -air "video Filename for FV"`
echo ""
sleep 1
echo -e "BTFV Metadata files copied: \t`grep -air "metadata Filename for FV" | wc -l`"
echo -e `grep -air "metadata Filename for FV"`
echo -e "=========================== BTFV Files STOP ============================\n"
sleep 1
echo "------------------------------------------------------------------------"
echo -e "Reboot Entering: \t`grep -air "@Reboot Entering" | wc -l`"
echo -e "------------------------------------------------------------------------\n`grep -air "@Reboot Entering" | awk '{print $1 " " $2}'`"
#echo -e `grep -air "@Reboot Entering" | awk '{print $1}'`
echo "------------------------------------------------------------------------"
sleep 1
echo -e "GPS Fix Instance count: \t`grep -air "ttff" | wc -l`"
echo -e "------------------------------------------------------------------------\n`grep -air "ttff"`"
echo "------------------------------------------------------------------------"
sleep 1
echo -e "GPS fix Details: \t`grep -air "Last Fix Status" | wc -l`"
#echo "------------------------------------------------------------------------"
sleep 1
echo -e "------------------------------------------------------------------------\n`grep -air "Last Fix Status"`"
echo "------------------------------------------------------------------------"
sleep 1
echo -e "Number of times all cameras started: \t`grep -air "RECORD_START for cam num" | wc -l`"
sleep 1
echo -e "Number of times Outward camera started: `grep -air "RECORD_START for cam num 0" | wc -l`"
sleep 1
echo -e "Number of times Inward camera started: \t`grep -air "RECORD_START for cam num 1" | wc -l`"
sleep 1
echo -e "Number of times Left camera started: \t`grep -air "RECORD_START for cam num 2" | wc -l`"
sleep 1
echo -e "Number of times Right camera started: \t`grep -air "RECORD_START for cam num 3" | wc -l`"
echo "------------------------------------------------------------------------"
echo -e "Last Keep Alives from each camera: \t`grep -air "Posting keep alive to application" | wc -l`"
sleep 1
echo -e "------------------------------------------------------------------------\n`grep -air "Posting keep alive to application"`"
echo "------------------------------------------------------------------------"
sleep 1
echo -e "Enabling and Disabling of Cameras: \t`grep -air "response sent for cameras" | wc -l`"
echo -e "------------------------------------------------------------------------\n`grep -air "response sent for cameras"`"
echo "------------------------------------------------------------------------"
sleep 1

echo -e "Camera:\t\tTotal MP4\t MP4 without GPS"
echo "------------------------------------------------------------------------"

cam0_total=`grep -air "File name: /home/iriscli/ND_INPUT/0_trip1_part1" */ndcentral/. | wc -l`
cam0_withGPS=`grep -air "File name: /home/iriscli/ND_INPUT/0_trip1_part1" */ndcentral/. | grep -v "91.0000_181.0000" | wc -l`
cam0_withoutGPS=`expr $cam0_total - $cam0_withGPS`
echo -e "Outward:\t$cam0_total\t\t$cam0_withoutGPS"

cam1_total=`grep -air "File name: /home/iriscli/ND_INPUT/1_trip1_part1" */ndcentral/. | wc -l`
cam1_withGPS=`grep -air "File name: /home/iriscli/ND_INPUT/1_trip1_part1" */ndcentral/. | grep -v "91.0000_181.0000" | wc -l`
cam1_withoutGPS=`expr $cam1_total - $cam1_withGPS`
echo -e "Inward:\t\t$cam1_total\t\t$cam1_withoutGPS"

cam2_total=`grep -air "File name: /home/iriscli/ND_INPUT/2_trip1_part1" */ndcentral/. | wc -l`
cam2_withGPS=`grep -air "File name: /home/iriscli/ND_INPUT/2_trip1_part1" */ndcentral/. | grep -v "91.0000_181.0000" | wc -l`
cam2_withoutGPS=`expr $cam2_total - $cam2_withGPS`
echo -e "Left:\t\t$cam2_total\t\t$cam2_withoutGPS"

cam3_total=`grep -air "File name: /home/iriscli/ND_INPUT/3_trip1_part1" */ndcentral/. | wc -l`
cam3_withGPS=`grep -air "File name: /home/iriscli/ND_INPUT/3_trip1_part1" */ndcentral/. | grep -v "91.0000_181.0000" | wc -l`
cam3_withoutGPS=`expr $cam3_total - $cam3_withGPS`
echo -e "Right:\t\t$cam3_total\t\t$cam3_withoutGPS"
echo "------------------------------------------------------------------------"

echo -e "Metadata files created: \t`grep -air "RECORD_START for cam num" | wc -l`"

