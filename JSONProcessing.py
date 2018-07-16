import json
import csv

sourceFile = open("metadata.json", "rU")

json_data = json.load(sourceFile)

outputFile = open("ConvertedJSON.csv", "w")

outputWriter = csv.writer(outputFile)

#print json_data

print json_data["Time"]
#print json_data["videoMetaData"]

for videoData in json_data["videoMetaData"]:
    print "lat, long, speed, timestamp:======" , videoData["lat"], videoData["long"], videoData["speed"], videoData["timestamp"]
    #row_array = []
    #row_array.append(json_data["Time"])
