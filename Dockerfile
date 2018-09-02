FROM python:3.6

RUN apt-get update && apt-get install -y git wget build-essential vim unzip git

WORKDIR /workdir

ADD requirements.txt\
    install_matlab_runtime.sh\ /workdir/ 


RUN pip install -r /workdir/requirements.txt; /bin/bash install_matlab_runtime.sh

ENV LD_LIBRARY_PATH="/usr/local/MATLAB/MATLAB_Runtime/v94/runtime/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v94/bin/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v94/sys/os/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v94/extern/bin/glnxa64:${LD_LIBRARY_PATH}"

#ADD connection_voice/connection_voice.py\
#    connection_voice/supervisord.conf\
#    /workdir/

#RUN mkdir /workdir/log

#ADD conf /workdir/conf

CMD jupyter notebook --allow-root --no-browser --ip=0.0.0.0
