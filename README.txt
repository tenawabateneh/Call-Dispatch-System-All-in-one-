// To build a docker image with the name  camera
docker build -t camera . 

// To run the container camera
docker run -p 8080:80 -d camera 

// Type this "http://localhost:8080/test/" on your browser URL address and hit enter