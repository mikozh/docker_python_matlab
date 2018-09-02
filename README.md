# Environment to Run Matlab Packages in Python

Allows to run python packages created in Matlab. This Docker contains the minimal set of libraries for data analysis (numpy, pandas, scipy). 
**Warning!** This docker is not created to be lightweight, the main intent is to allow running Matlab code from Python with less efforts. During Docker building procedure Matlab Runtime will be downloaded (~1.5Gb), so please be patient.

## How to run

1. Build docker `docker build -t python_matlab .`
2. Run container `docker run -it --rm -p 10000:8888 -v "$PWD":/workdir python_matlab`
3. Runnig jupyter session will be available at http://localhost:10000
