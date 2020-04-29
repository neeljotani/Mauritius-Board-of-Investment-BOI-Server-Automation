sHome=/opt/IBM/WebSphere/wp_profile/bin
serverName=WebSphere_Portal
DmgrName=WebSphere_Portal
userName=edbboiwsadmin
password=passw0rd
usernameNode=edbboiwsadmin
passwordNode=passw0rd
RETVAL=0

case "$1" in statusPortal) 
echo "-----------------------------------------------" >> server.log
echo  "Checking Status of All the Servers"
echo  "Checking Status of All the Servers. Date: $(date)" >> server.log
/opt/IBM/WebSphere/wp_profile/bin/serverStatus.sh -all -user edbboiwsadmin -password password
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
/data/IBM/WebSphere/AppServer/profiles/Dmgr01/bin/stopManager.sh 
RETVAL=$?
if [ $RETVAL = 0 ]; then
	 echo  "Server "$DmgrName" started successfully. Date: $(date)" >> server.log
     
  else
  echo  "Server "$DmgrName" start failed. Date: $(date)" >> server.log
   
  fi
;;


startFEBPrimary)
echo "-----------------------------------------------" >> server.log
echo  "Starting "$DmgrName" server"
echo  "Starting "$DmgrName" server. Date: $(date)" >> server.log
/data/IBM/WebSphere/AppServer/profiles/AppSrv01/bin/startServer.sh FEBmember1 -nowait
RETVAL=$?
if [ $RETVAL = 0 ]; then
	 echo  "Server "$DmgrName" started successfully. Date: $(date)" >> server.log
     
  else
  echo  "Server "$DmgrName" start failed. Date: $(date)" >> server.log
   
  fi
;;



stopFEBPrimary)
echo "-----------------------------------------------" >> server.log
echo  "Stopping "$DmgrName" server"
echo  "Starting "$DmgrName" server. Date: $(date)" >> server.log
/data/IBM/WebSphere/AppServer/profiles/AppSrv01/bin/stopServer.sh FEBmember1 -nowait
RETVAL=$?
if [ $RETVAL = 0 ]; then
	 echo  "Server "$DmgrName" started successfully. Date: $(date)" >> server.log
     
  else
  echo  "Server "$DmgrName" start failed. Date: $(date)" >> server.log
   
  fi
;;




startFEBSecondary)
echo "-----------------------------------------------" >> server.log
echo  "Starting "$DmgrName" server"
echo  "Starting "$DmgrName" server. Date: $(date)" >> server.log
/data/IBM/WebSphere/AppServer/profiles/AppSrv02/bin/startServer.sh FEBmember2 -nowait
RETVAL=$?
if [ $RETVAL = 0 ]; then
	 echo  "Server "$DmgrName" started successfully. Date: $(date)" >> server.log
     
  else
  echo  "Server "$DmgrName" start failed. Date: $(date)" >> server.log
   
  fi
;;



stopFEBSecondary)
echo "-----------------------------------------------" >> server.log
echo  "Stopping "$DmgrName" server"
echo  "Starting "$DmgrName" server. Date: $(date)" >> server.log
/data/IBM/WebSphere/AppServer/profiles/AppSrv02/bin/stopServer.sh FEBmember2 -nowait
RETVAL=$?
if [ $RETVAL = 0 ]; then
	 echo  "Server "$DmgrName" started successfully. Date: $(date)" >> server.log
     
  else
  echo  "Server "$DmgrName" start failed. Date: $(date)" >> server.log
   
  fi
;;






startNodePrimaryPortal)
echo "-----------------------------------------------" >> server.log
echo  "Starting "$DmgrName" server"
echo  "Starting "$DmgrName" server. Date: $(date)" >> server.log
/data/IBM/WebSphere/wp_profile/bin/startNode.sh
RETVAL=$?
if [ $RETVAL = 0 ]; then
	 echo  "Server "$DmgrName" started successfully. Date: $(date)" >> server.log
     
  else
  echo  "Server "$DmgrName" start failed. Date: $(date)" >> server.log
  
  fi
;;



stopNodePrimaryPortal)
echo "-----------------------------------------------" >> server.log
echo  "Stopping "$DmgrName" server"
echo  "Stopping "$DmgrName" server. Date: $(date)" >> server.log
/data/IBM/WebSphere/wp_profile/bin/stopNode.sh
RETVAL=$?
if [ $RETVAL = 0 ]; then
	 echo  "Server "$DmgrName" started successfully. Date: $(date)" >> server.log
     
  else
  echo  "Server "$DmgrName" start failed. Date: $(date)" >> server.log
   
  fi
;;


startNodeSecondaryPortal)
echo "-----------------------------------------------" >> server.log
echo  "Starting "$DmgrName" server"
echo  "Starting "$DmgrName" server. Date: $(date)" >> server.log
/data/IBM/WebSphere/wp_profile/bin/startNode.sh
RETVAL=$?
if [ $RETVAL = 0 ]; then
	 echo  "Server "$DmgrName" started successfully. Date: $(date)" >> server.log
     
  else
  echo  "Server "$DmgrName" start failed. Date: $(date)" >> server.log
  
  fi
;;



stopNodeSecondaryPortal)
echo "-----------------------------------------------" >> server.log
echo  "Stopping "$DmgrName" server"
echo  "Stopping "$DmgrName" server. Date: $(date)" >> server.log
/data/IBM/WebSphere/wp_profile/bin/stopNode.sh
RETVAL=$?
if [ $RETVAL = 0 ]; then
	 echo  "Server "$DmgrName" started successfully. Date: $(date)" >> server.log
     
  else
  echo  "Server "$DmgrName" start failed. Date: $(date)" >> server.log
   
  fi
;;


startNodePrimaryFEB)
echo "-----------------------------------------------" >> server.log
echo  "Starting "$DmgrName" server"
echo  "Starting "$DmgrName" server. Date: $(date)" >> server.log
/data/IBM/WebSphere/AppServer/profiles/AppSrv01/bin/startNode.sh
RETVAL=$?
if [ $RETVAL = 0 ]; then
	 echo  "Server "$DmgrName" started successfully. Date: $(date)" >> server.log
     
  else
  echo  "Server "$DmgrName" start failed. Date: $(date)" >> server.log
  
  fi
;;



stopNodePrimaryFEB)
echo "-----------------------------------------------" >> server.log
echo  "Stopping "$DmgrName" server"
echo  "Stopping "$DmgrName" server. Date: $(date)" >> server.log
/data/IBM/WebSphere/AppServer/profiles/AppSrv01/bin/stopNode.sh
RETVAL=$?
if [ $RETVAL = 0 ]; then
	 echo  "Server "$DmgrName" started successfully. Date: $(date)" >> server.log
     
  else
  echo  "Server "$DmgrName" start failed. Date: $(date)" >> server.log
   
  fi
;;


startNodeSecondaryFEB)
echo "-----------------------------------------------" >> server.log
echo  "Starting "$DmgrName" server"
echo  "Starting "$DmgrName" server. Date: $(date)" >> server.log
/data/IBM/WebSphere/AppServer/profiles/AppSrv02/bin/startNode.sh
RETVAL=$?
if [ $RETVAL = 0 ]; then
	 echo  "Server "$DmgrName" started successfully. Date: $(date)" >> server.log
     
  else
  echo  "Server "$DmgrName" start failed. Date: $(date)" >> server.log
  
  fi
;;



stopNodeSecondaryFEB)
echo "-----------------------------------------------" >> server.log
echo  "Stopping "$DmgrName" server"
echo  "Stopping "$DmgrName" server. Date: $(date)" >> server.log
/data/IBM/WebSphere/AppServer/profiles/AppSrv02/bin/stopNode.sh
RETVAL=$?
if [ $RETVAL = 0 ]; then
	 echo  "Server "$DmgrName" started successfully. Date: $(date)" >> server.log
     
  else
  echo  "Server "$DmgrName" start failed. Date: $(date)" >> server.log
   
  fi
;;





startPortalPrimary)
echo "-----------------------------------------------" >> server.log
echo  "Starting "$serverName" server"
echo  "Starting "$serverName" server. Date: $(date)" >> server.log
/data/IBM/WebSphere/wp_profile/bin/startServer.sh WebSphere_Portal
RETVAL=$?
if [ $RETVAL = 0 ]; then
	 echo  "Server "$serverName" started successfully. Date: $(date)" >> server.log
     
  else
  echo  "Server "$serverName" start failed. Date: $(date)" >> server.log
   
  fi
;;

stopPortalPrimary)
echo "-----------------------------------------------" >> server.log
echo  "Stoping "$serverName" server"
echo  "Stoping "$serverName" server. Date: $(date)" >> server.log
/data/IBM/WebSphere/wp_profile/bin/stopServer.sh WebSphere_Portal
RETVAL=$?
if [ $RETVAL = 0 ]; then
	 echo  "Server "$serverName" stopped successfully. Date: $(date)" >> server.log
     
  else
  echo  "Server "$serverName" stop failed. Date: $(date)" >> server.log
   
  fi
;;


startPortalSecondary)
echo "-----------------------------------------------" >> server.log
echo  "Starting "$serverName" server"
echo  "Starting "$serverName" server. Date: $(date)" >> server.log
/data/IBM/WebSphere/wp_profile/bin/startServer.sh WebSphere_Portal_2
RETVAL=$?
if [ $RETVAL = 0 ]; then
	 echo  "Server "$serverName" started successfully. Date: $(date)" >> server.log
     
  else
  echo  "Server "$serverName" start failed. Date: $(date)" >> server.log
   
  fi
;;

stopPortalSecondary)
echo "-----------------------------------------------" >> server.log
echo  "Stoping "$serverName" server"
echo  "Stoping "$serverName" server. Date: $(date)" >> server.log
/data/IBM/WebSphere/wp_profile/bin/stopServer.sh WebSphere_Portal_2
RETVAL=$?
if [ $RETVAL = 0 ]; then
	 echo  "Server "$serverName" stopped successfully. Date: $(date)" >> server.log
     
  else
  echo  "Server "$serverName" stop failed. Date: $(date)" >> server.log
   
  fi
;;



Autostart)

/opt/IBM/tools/Autorun.sh startManager

/opt/IBM/tools/Autorun.sh startFEBPrimary

/opt/IBM/tools/Autorun.sh startFEBSecondary

/opt/IBM/tools/Autorun.sh startNodePrimaryPortal

/opt/IBM/tools/Autorun.sh startNodeSecondaryPortal

/opt/IBM/tools/Autorun.sh startNodePrimaryFEB

/opt/IBM/tools/Autorun.sh startNodeSecondaryFEB

/opt/IBM/tools/Autorun.sh startPortalPrimary

/opt/IBM/tools/Autorun.sh startPortalSecondary

;;

Autostop)


/opt/IBM/tools/Autorun.sh stopManager

/opt/IBM/tools/Autorun.sh stopFEBPrimary

/opt/IBM/tools/Autorun.sh stopFEBSecondary

/opt/IBM/tools/Autorun.sh stopNodePrimaryPortal

/opt/IBM/tools/Autorun.sh stopNodeSecondaryPortal

/opt/IBM/tools/Autorun.sh stopNodePrimaryFEB

/opt/IBM/tools/Autorun.sh stopNodeSecondaryFEB

/opt/IBM/tools/Autorun.sh stopPortalPrimary

/opt/IBM/tools/Autorun.sh stopPortalSecondary

;;


*)
echo "Usage: server.sh {statusPortal|startPortalPrimary|stopPortalPrimary|startPortalSecondary|stopPortalSecondary|startFEBPrimary|stopFEBPrimary|startFEBSecondary|stopFEBPrimary|startFEBSecondary|stopFEBSecondary|startNode|stopNode|startManager|stopManager}"
 exit 1

esac
