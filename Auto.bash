sHome=/opt/IBM/WebSphere/wp_profile/bin
serverName=WebSphere_Portal
DmgrName=WebSphere_Portal
userName=wasadmin
password=p@ssword
usernameNode=wasadmin
passwordNode=p@ssword
RETVAL=0

case "$1" in statusPortal) 
echo "-----------------------------------------------" >> server.log
echo  "Checking Status of All the Servers"
echo  "Checking Status of All the Servers. Date: $(date)" >> server.log
/opt/IBM/WebSphere/wp_profile/bin/serverStatus.sh -all -user wasadmin -password password
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
/opt/IBM/WebSphere/AppServer/profiles/Dmgr02/bin/startManager.sh 
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
/opt/IBM/WebSphere/AppServer/profiles/Dmgr02/bin/stopManager.sh 
RETVAL=$?
if [ $RETVAL = 0 ]; then
	 echo  "Server "$DmgrName" started successfully. Date: $(date)" >> server.log
     
  else
  echo  "Server "$DmgrName" start failed. Date: $(date)" >> server.log
   
  fi
;;





startNode)
echo "-----------------------------------------------" >> server.log
echo  "Starting "$DmgrName" server"
echo  "Starting "$DmgrName" server. Date: $(date)" >> server.log
/opt/IBM/WebSphere/AppServer/profiles/AppSrv01/bin/startNode.sh
RETVAL=$?
if [ $RETVAL = 0 ]; then
	 echo  "Server "$DmgrName" started successfully. Date: $(date)" >> server.log
     
  else
  echo  "Server "$DmgrName" start failed. Date: $(date)" >> server.log
  
  fi
;;



stopNode)
echo "-----------------------------------------------" >> server.log
echo  "Stopping "$DmgrName" server"
echo  "Stopping "$DmgrName" server. Date: $(date)" >> server.log
/opt/IBM/WebSphere/AppServer/profiles/AppSrv01/bin/stopNode.sh
RETVAL=$?
if [ $RETVAL = 0 ]; then
	 echo  "Server "$DmgrName" started successfully. Date: $(date)" >> server.log
     
  else
  echo  "Server "$DmgrName" start failed. Date: $(date)" >> server.log
   
  fi
;;



startPortal)
echo "-----------------------------------------------" >> server.log
echo  "Starting "$serverName" server"
echo  "Starting "$serverName" server. Date: $(date)" >> server.log
/opt/IBM/WebSphere/wp_profile/bin/startServer.sh $serverName
RETVAL=$?
if [ $RETVAL = 0 ]; then
	 echo  "Server "$serverName" started successfully. Date: $(date)" >> server.log
     
  else
  echo  "Server "$serverName" start failed. Date: $(date)" >> server.log
   
  fi
;;

stopPortal)
echo "-----------------------------------------------" >> server.log
echo  "Stoping "$serverName" server"
echo  "Stoping "$serverName" server. Date: $(date)" >> server.log
/opt/IBM/WebSphere/wp_profile/bin/stopServer.sh $serverName -user $userName -password $password
RETVAL=$?
if [ $RETVAL = 0 ]; then
	 echo  "Server "$serverName" stopped successfully. Date: $(date)" >> server.log
     
  else
  echo  "Server "$serverName" stop failed. Date: $(date)" >> server.log
   
  fi
;;

Autostart)

/opt/IBM/tools/Autorun.sh startPortal
/opt/IBM/tools/Autorun.sh startNode
/opt/IBM/tools/Autorun.sh startManager

;;

Autostop)


/opt/IBM/tools/Autorun.sh stopManager
/opt/IBM/tools/Autorun.sh stopNode
/opt/IBM/tools/Autorun.sh stopPortal



;;


*)
echo "Usage: server.sh {startPortal|stopPortal|statusPortal|startNode|stopNode|startManager|stopManager}"
 exit 1

esac
