## 1C server
---------------
Original repo: https://github.com/alexanderfefelov/docker-1c-server

*with some insertions (images are being pushed/pulled using local Docker registry)*

Build 1C server image:
1. Copy and rename correct Dockerfile from dockerfiles/:
> cp -f dockerfiles/deb.Dockerfile Dockerfile

2. Edit .env file

3. Run script from 1c-server folder:
> sudo bash 1c-server/build.sh

4. Run docker compose
> sudo docker-compose up -d


## PostgreSQL Pro
---------------
Original repo: https://github.com/alexanderfefelov/docker-postgrespro-1c

*Updated to pg version 14*

## MSSQL
---------------

Versions for linux and windows using official Microsoft images
