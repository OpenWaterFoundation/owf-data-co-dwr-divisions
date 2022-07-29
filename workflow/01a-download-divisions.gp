# Download the current DWR divisions and convert to GeoJSON:
# - the source data changes very infrequently
CreateFolder(Folder="downloads",CreateParentFolders="True",IfFolderExists="Ignore")
WebGet(URL="https://dnrftp.state.co.us/CDSS/GIS/DIV3CO.zip",OutputFile="downloads/DIV3CO.zip")
# =====================================================
# Process each shapefile.
#
# Unzip the shapefile.
UnzipFile(File="downloads/DIV3CO.zip",OutputFolder="downloads/DIV3CO",IfFolderDoesNotExist="Create")
# Read the file from 'downloads/' and then write to '../data'.
ReadGeoLayerFromShapefile(InputFile="downloads/DIV3CO/DIV3CO.shp",GeoLayerID="DWR_Divisions",Name="Colorado DWR Divisions",Description="Colorado DWR Divisions")
# Write the file as GeoJSON.
WriteGeoLayerToGeoJSON(GeoLayerID="DWR_Divisions",OutputFile="../data/co-dwr-divisions.geojson")
#
# Split the statewide dataset into separate divisions.
SplitGeoLayerByAttribute(InputGeoLayerID="DWR_Divisions",AttributeName="DIV")
WriteGeoLayerToGeoJSON(GeoLayerID="DWR_Divisions",OutputFile="../data/co-dwr-divisions.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="DWR_Divisions_DIV_1",OutputFile="../data/co-dwr-division-1.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="DWR_Divisions_DIV_2",OutputFile="../data/co-dwr-division-2.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="DWR_Divisions_DIV_3",OutputFile="../data/co-dwr-division-3.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="DWR_Divisions_DIV_4",OutputFile="../data/co-dwr-division-4.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="DWR_Divisions_DIV_5",OutputFile="../data/co-dwr-division-5.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="DWR_Divisions_DIV_6",OutputFile="../data/co-dwr-division-6.geojson")
WriteGeoLayerToGeoJSON(GeoLayerID="DWR_Divisions_DIV_7",OutputFile="../data/co-dwr-division-7.geojson")
