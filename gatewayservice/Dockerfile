FROM amazonlinux:2

# Install basic utilities
RUN yum update -y && \
    yum install -y tar gzip wget unzip curl git java-17-amazon-corretto-devel

# Set Maven version
ENV MAVEN_VERSION=3.8.8
ENV MAVEN_HOME=/opt/maven
ENV PATH=${MAVEN_HOME}/bin:${PATH}

# Download and install Maven
RUN curl -fsSL https://downloads.apache.org/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz | tar -xz -C /opt && \
    ln -s /opt/apache-maven-${MAVEN_VERSION} ${MAVEN_HOME}

# Verify installations
RUN java -version && mvn -version

CMD ["bash"]