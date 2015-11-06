# ehzrap
The Environmental Hazard Response, Analysis, and Planning framework is an experiment to use Open Source software, data standards, and web services to support the plannin and analysis functions of environmental hazard response.

Provider tools to help deliver data in standard services: 

THREDDS  Data Server:  
Inputs:  HDF, NetCDF, or GRIB files

Outputs: 
WMS
OPeNDAP
SOS
WCS (for regular grid only)
ISO metadata

ERDDAP: 
Inputs: NetCDF files, text files, OPeNDAP endpoints, SOS services
Outputs:
WMS
OPeNDAP
JSON

Geoserver:   
Inputs:  image format files, shapefiles
Outputs:
WMS
WFS

sci-wms:
inputs: opendap with CF, UGRID and SGRID conventions
outputs: WMS

Catalog Services:
Geonetwork
GI-CAT
Geoportal Server
pycsw *

Clients

Web clients:
TerriaJS: accesses WMS, 


Data clients:

Python/Jupyter: CF (iris), WFS/SOS/WCS (OWSLib)
Matlab: CF (NCTOOLBOX)
