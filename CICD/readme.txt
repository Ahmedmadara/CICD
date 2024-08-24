first create 4 vms using vagrant 
jenkins,sonarqube, k8s slave, k8s master 
========================================
install every tool on vm using ansible playbook 
=================================================
open jenkins-ui change the password and create new username and add plugins 


plugins:

	jdk:
 		Eclipse Temurin installer Plugin
		openJDK-native-plugin

		Quality Gates Plugin
		Sonar Quality Gates Plugin
		SonarQube Scanner for Jenkins
====================================================================
manage jenkins >> Tool >> jdk (jdk11 + jdk-11.0.22+7) , (maven3 + version )
manage jenkins >> Tool >> sonarQube Scanner (sonar-scanner + sonarscanner lts version )
manage jenkins >> System >> sonar instlation ()
manage jenkins >> credentials >> secret text وهجيب التيكست من سونر عن طريق 
adminstraion >> security >> user >> token
manage jenkins >> system >> sonar instllation >> (sonar-scanner + url + credentials )
==========================================================================
1- git + url + branch + cradentails + >> generate pipline script to >> git branch: 'main', changelog: false, poll: false, url: 'https://github.com/Ahmedmadara/CICD.git'
=======================================================================================================
=======================================================================================================
install trivy on ur VM or instance >> then added the path to jenkins in ur env 
and added it on jenkins as stage 
=================================================================================
manage jenkins >> plugin >> add docker api + installtion etc.
manage jenkins >> tool >> docker (name + version = latest)
manage jenkins >> credentials >> username and password (docker hub username + token password from docker hub)
u have to first give docker permession 


sudo usermod -aG docker jenkins
sudo systemctl restart jenkins
sudo ls -l /var/run/docker.sock
sudo chown root:docker /var/run/docker.sock
sudo -u jenkins docker info


"make shure when u create toeken on docker hub the token must be read write delete "

==========================================================
install k3s , minikube , kubectl in ur k8s-master vm 
manage jenkins >> plugin >> kubernetes Api , cli , pipeline etc.
====================================================================









