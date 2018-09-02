# Environment to Run Matlab Packages in Python

1. Build docker `docker build -t python_matlab .`
2. Run container `docker run -it --rm -p 10000:8888 -v "$PWD":/workdir python_matlab`
3. Runnig jupyter session will be available at http://localhost:10000
