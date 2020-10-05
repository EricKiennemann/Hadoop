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


#When 'update' = add a new time stamp, the get function only give the last time stamp

#Query of a specific column
get 'dsti_2020_fall_1:erick_Personv0', 'row1', {COLUMN => 'opinion:movie'}

get 'dsti_2020_fall_1:erick_Personv0', 'row1', {COLUMN => 'opinion:rating'}

#Modify column family to enable versioning (here 4 versions)
alter 'dsti_2020_fall_1:erick_Personv0' , {NAME=>'opinion',VERSIONS=>4}

#'Update' rating of movie several times 
put 'dsti_2020_fall_1:erick_Personv0', 'row1' , 'opinion:rating', '4'

put 'dsti_2020_fall_1:erick_Personv0', 'row1' , 'opinion:rating', '4'

get 'dsti_2020_fall_1:erick_Personv0', 'row1'

#Get all the 4 updates done on the rating column
get 'dsti_2020_fall_1:erick_Personv0', 'row1', {COLUMN => 'opinion:rating',VERSIONS => 4}

#Other commands
list # to list the tables

describe 'dsti_2020_fall_1:erick_Personv0' # describe the structure of the table

scan 'dsti_2020_fall_1:erick_Personv0' # to list all the data on the table - normally do not use it !

