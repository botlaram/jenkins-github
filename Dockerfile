# Use the official Jenkins LTS image as the base
FROM jenkins/jenkins:lts

# Switch to root user to install Python
USER root

# Update package manager and install Python and pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Verify the installation of Python and pip
RUN python3 --version && pip3 --version

# Set Jenkins back to the jenkins user
USER jenkins

# Expose Jenkins default port
EXPOSE 8080

# Expose the port for JNLP agent connections
EXPOSE 50000

# Define default environment variables
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

# Copy plugins.txt for Jenkins plugin installation (if needed)
# Uncomment and add required plugins in a plugins.txt file
# COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
# RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

# Start Jenkins
ENTRYPOINT ["/usr/bin/tini", "--", "/usr/local/bin/jenkins.sh"]

