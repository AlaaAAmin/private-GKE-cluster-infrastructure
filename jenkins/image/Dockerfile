FROM jenkins:2.60.3
#disabling setup wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc.yaml
#copying default plugins file
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
#installing the plugins
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt
#copying our configuration file
COPY casc.yaml /var/jenkins_home/casc.yaml