## 1C server
---------------
Original repo: https://github.com/alexanderfefelov/docker-1c-server

*with some insertions (images are being pushed/pulled using local Docker registry)*

Build 1C server image:

1. Copy and rename correct Dockerfile (depending on uploaded 1C distro version from local repo) from **dockerfiles/**.

*beginning with 8.3.20, 1C packages come with .run installer: correct Dockerfile is run.Dockerfile*
> cp -f dockerfiles/deb.Dockerfile Dockerfile

2. Edit build.sh file (set correct version of 1C)

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

---------------
## 1C-server in Windows container
Windows containers are overall heavy and weird, so it's preferable to work around Linux solutions. I'm still working on MSSQL+1C-server-win containerized 
