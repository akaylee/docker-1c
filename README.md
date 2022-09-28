## 1C server
---------------
Original repo: https://github.com/alexanderfefelov/docker-1c-server

*with some insertions (images are being pushed/pulled using local Docker registry)*

1. Download 1C distribution (Linux, 64-bit version) to your file server via SFTP (Dockerfile uses *wget* to pull it, correct IP address accordingly)

2. Copy and rename correct Dockerfile (depending on uploaded 1C distro version from local repo) from **dockerfiles/**.

*starting with version 8.3.20, 1C packages come with .run installer: correct Dockerfile is run.Dockerfile*
> cp -f dockerfiles/deb.Dockerfile Dockerfile

3. Edit build.sh file (set correct version of 1C)

4. Run script from 1c-server folder:
> sudo bash 1c-server/build.sh

5. Run docker compose
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
