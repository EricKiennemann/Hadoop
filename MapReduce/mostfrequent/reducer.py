import sys

# input comes from STDIN (standard input)
for line in sys.stdin:
    # remove leading and trailing whitespace
    line = line.strip()

    print "word--DELIMITER--%s" % line
[xavier@edge-1 ~]$ cat mr/mostfrequent_real/reducer.py 
from operator import itemgetter
import sys

max_word = None
max_count = 0
current_word = None
current_count = 0

# input comes from STDIN
for line in sys.stdin:
    # remove leading and trailing whitespace
    line = line.strip()

    # parse the input we got from mapper.py
    current_word, current_count = line.split("--DELIMITER--")[1].split('\t', 1)

    # convert count (currently a string) to int
    try:
        current_count = int(current_count)
    except ValueError:
        # count was not a number, so silently
        # ignore/discard this line
        continue

    # this IF-switch only works because Hadoop sorts map output
    # by key (here: word) before it is passed to the reducer
    if max_count < current_count:
        max_count = current_count
	max_word = current_word

print 'word--DELIMITER--%s\t%s' % (max_word, max_count)

