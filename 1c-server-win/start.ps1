docker build --tag 1c-server
docker run -d -p 1541:1541 -p 1540:1540 -p 1560-1591:1560-1591 1c-server
