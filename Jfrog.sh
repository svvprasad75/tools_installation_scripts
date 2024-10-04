##Install in Amazon Ubuntu
sudo usermod -aG docker $USER
docker pull docker.bintray.io/jfrog/artifactory-oss:latest
#sudo mkdir -p /jfrog/artifactory
#sudo chown -R 1030 /jfrog/
https://jfrog.com/help/r/jfrog-installation-setup-documentation/install-artifactory-single-node-with-docker
mkdir -p $JFROG_HOME/artifactory/var/etc/
cd $JFROG_HOME/artifactory/var/etc/
touch ./system.yaml
chown -R 1030:1030 $JFROG_HOME/artifactory/var
chmod -R 777 $JFROG_HOME/artifactory/var
Run the below image for JFROG
docker run --name artifactory -v $JFROG_HOME/artifactory/var/:/var/opt/jfrog/artifactory -d -p 8081:8081 -p 8082:8082 releases-docker.jfrog.io/jfrog/artifactory-oss:7.77.5
UI will get open on PORT 8082/ui
http://54.196.162.244:8082/ui
docker run --name artifactory -d -p 8081:8081 -p 8082:8082 -v /jfrog/artifactory:/var/opt/jfrog/artifactory docker.bintray.io/jfrog/artifactory-oss:latest
