#!/bin/sh

case "$1" in statusDMGR) 
echo "-----------------------------------------------" >> server.log
echo  "Checking Status of All the Servers"
echo  "Checking Status of All the Servers. Date: $(date)" >> server.log
/data/IBM/WebSphere/AppServer/profiles/Dmgr01/bin/serverStatus.sh -all -user edbboiwsadmin -password passw0rd
RETVAL=$?
if [ $RETVAL = 0 ]; then
     
	 echo "Check Status Success" >> server.log
	
  else
  echo -n "Check Status Failed. Date: $(date)" >> server.log
   
  fi
;;


startManager)
echo "-----------------------------------------------" >> server.log
echo  "Starting "$DmgrName" server"
echo  "Starting "$DmgrName" server. Date: $(date)" >> server.log
/data/IBM/WebSphere/AppServer/profiles/Dmgr01/bin/startManager.sh 
RETVAL=$?
if [ $RETVAL = 0 ]; then
	 echo  "Server "$DmgrName" started successfully. Date: $(date)" >> server.log
     
  else
  echo  "Server "$DmgrName" start failed. Date: $(date)" >> server.log
   
  fi
;;



stopManager)
echo "-----------------------------------------------" >> server.log
echo  "Stopping "$DmgrName" server"
echo  "Starting "$DmgrName" server. Date: $(date)" >> server.log
/data/IBM/WebSphere/AppServer/profiles/Dmgr01/bin/stopManager.sh -user edbboiwsadmin -password passw0rd
RETVAL=$?
if [ $RETVAL = 0 ]; then
	 echo  "Server "$DmgrName" started successfully. Date: $(date)" >> server.log
     
  else
  echo  "Server "$DmgrName" start failed. Date: $(date)" >> server.log
   
  fi
;;


#exit;

esac
