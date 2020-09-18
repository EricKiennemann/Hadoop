# Map Reducer Lab

Use python code mapper.py/reducer.py for:

count words of alice.txt text file
find the most frequent word on this text file
Preparing files in edge server

file structure /wordcount/mapper.py : python code for mapper part of wordcount /wordcount/reducer.py : python code for reducer part of wordcount /mostfrequent/mapper.py : python code for mapper part of mostfrequent /mostfrequent/reducer.py : python code for reducer part of mostfrequent
Preparing files in hdfs

get alice text file on edge server : wget http://www.gutenberg.org/files/11/11-0.txt
rename file "mv 11-0.txt alice.txt"
put on hdfs data folder : "hdfs dfs -put alice.txt data
Running code on the edge server :

yarn jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-streaming.jar -file wordcount/mapper.py -mapper "python mapper.py" -file wordcount/reducer.py -reducer "python reducer.py" -input data/alice.txt -output output/wordcount
yarn jar /usr/hdp/current/hadoop-mapreduce-client/hadoop-streaming.jar -file mostfrequent/mapper.py -mapper "python mapper.py" -file mostfrequent/reducer.py -reducer "python reducer.py" -input output/wordcount/part-00000 -output output/mostfrequent
Checking the result in the hdfs server hdfs dfs -head output/mostfrequent/part-00000
