#!/bin/bash
launch="LAUNCH::$@"
time=$(/usr/bin/time $@ 2>&1)
end="END::$@"

echo -e "$launch\n$time\n$end"
