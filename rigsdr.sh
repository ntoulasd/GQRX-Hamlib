    #!/bin/bash

    while true; do
    freq=`rigctl -m 2 -r localhost:7356 f`
    if [ «$oldfreq» != «$freq» ]
    then
    freq=`rigctl -m 2 -r localhost:7356 f`
    rigctl -m 2 -r localhost:4532 F $freq
    oldfreq=$freq
    fi
    sleep 0.5
    done
