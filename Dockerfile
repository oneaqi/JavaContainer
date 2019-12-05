FROM centos:7

RUN yum -y update && yum clean all
RUN yum -y install tar gzip java java-devel && yum clean all

# set JAVA_HOME
ENV JAVA_HOME /usr/lib/jvm/java-openjdk

COPY HelloWorld.java /root/
WORKDIR /root/
EXPOSE 1111
RUN javac /root/HelloWorld.java
CMD java HelloWorld
# Define default command.
#CMD ["bash"]
