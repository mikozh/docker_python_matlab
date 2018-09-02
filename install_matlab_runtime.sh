
# Download Matlab Runtime and prepare
wget http://ssd.mathworks.com/supportfiles/downloads/R2018a/deployment_files/R2018a/installers/glnxa64/MCR_R2018a_glnxa64_installer.zip
unzip MCR_R2018a_glnxa64_installer.zip -d matlab_runtime_installation
rm -f MCR_R2018a_glnxa64_installer.zip

# Install Matlab Runtime in Silent mode
/bin/bash matlab_runtime_installation/install -mode silent -agreeToLicense yes
rm -rf matlab_runtime_installation
