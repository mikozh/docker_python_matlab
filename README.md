# Environment to Run Matlab Packages in Python

Build docker `docker build -t python_matlab .`
Run container `docker run -it --rm -p 10000:8888 -v "$PWD":/workdir python_matlab`
Runnig jupyter session will be available at http://localhost:10000
