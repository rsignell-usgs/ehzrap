#!/bin/sh
set -e


#Clone ehzrap
cd /opt; git clone 

#Identify apt-get vs yum

# Check for Docker, install it as necessary
#curl -sSL https://get.docker.com/ | sh



#EHZRAP Main Interface (based on TerriaJS/NationalMap)

#Get local copy of NationalMap
git clone https://github.com/NICTA/nationalmap.git

# Get local copy of TerriaJS
#git clone https://github.com/TerriaJS/terriajs.git

#Link local version of TerriaJS to global npm package repository
#cd /opt/ezhrap/terriajs
#npm link

##Link (now) global terriajs to NationalMap
#cd /opt/ezhrap/nationalmap
#npm link terriajs

#After making changes to package.json
#cd /opt/ezhrap/terriajs
#npm install

#Convert NationalMap to EHZRAP
cp /opt/ezhrap

#Metanomy Branding
cp /opt/ezhrap/images/metanomy-logo-reversed.png /opt/ezhrap/nationalmap/images/

#EHZRAP Branding
cd /opt/ezhrap/images/ehzrap.png /opt/ezhrap/nationalmap/images

# Replace NationalMap references to EHZRAP
find /opt/ezhrap/nationalmap -type f -print0 | xargs -0 sed -i 's/The NationalMap/EZHRAP/g'
find /opt/ezhrap/nationalmap -type f -print0 | xargs -0 sed -i 's/NationalMap/EZHRAP/g'
find /opt/ezhrap/nationalmap -type f -print0 | xargs -0 sed -i 's/nationalmap/EZHRAP/g'

#Build NationalMap
cd /opt/ezhrap/nationalmap
npm install
gulp release

