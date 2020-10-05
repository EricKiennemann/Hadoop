on edge server
hbase shell

on hbase shell :
dsti_2020_fall_1:<your_table> #dsti_2020_fall_1 = NameSpace, separate permission area

create 'dsti_2020_fall_1:erick_Personv0', {NAME => 'opinion'}, {NAME => 'metadata'}
put 'dsti_2020_fall_1:erick_Personv0', 'row1' , 'metadata:height', '189'
put 'dsti_2020_fall_1:erick_Personv0', 'row1' , 'metadata:first_name', 'eric'
put 'dsti_2020_fall_1:erick_Personv0', 'row1' , 'metadata:last_name', 'kiennemann'
put 'dsti_2020_fall_1:erick_Personv0', 'row1' , 'opinion:movie', '1984'
put 'dsti_2020_fall_1:erick_Personv0', 'row1' , 'opinion:rating', '5'
put 'dsti_2020_fall_1:erick_Personv0', 'row1' , 'opinion:rating', '3'
get 'dsti_2020_fall_1:erick_Personv0', 'row1'


# When 'update' = add a new time stamp, the get function only give the last time stamp

# query of a specific column
get 'dsti_2020_fall_1:erick_Personv0', 'row1', {COLUMN => 'opinion:movie'}
get 'dsti_2020_fall_1:erick_Personv0', 'row1', {COLUMN => 'opinion:rating'}

# modify column family to enable versioning (here 4 versions)
alter 'dsti_2020_fall_1:erick_Personv0' , {NAME=>'opinion',VERSIONS=>4}

# 'update' rating of movie several times 
put 'dsti_2020_fall_1:erick_Personv0', 'row1' , 'opinion:rating', '4'
put 'dsti_2020_fall_1:erick_Personv0', 'row1' , 'opinion:rating', '4'
get 'dsti_2020_fall_1:erick_Personv0', 'row1'

# get all the 4 updates done on the rating column
get 'dsti_2020_fall_1:erick_Personv0', 'row1', {COLUMN => 'opinion:rating',VERSIONS => 4}

#other commands
list # to list the tables
