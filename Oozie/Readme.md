export OOZIE_URL=http://oozie-1.au.adaltas.cloud:11000/oozie
oozie job  -config job.properties -run

oozie job -info 0000001-200807201707742-oozie-oozi-W

oozie job -log 0000001-200807201707742-oozie-oozi-W
