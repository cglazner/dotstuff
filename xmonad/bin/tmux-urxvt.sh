# like screen -RR  ???
if [ -x `which tmux` ] && [ -z "$TMUX" ]; then
    DOGG=`tmux list-sessions 2> /dev/null | grep -v '(attached)' | head -1 | awk 'FS=":" {print $1}'`
    echo bob $DOGG bob
    if [ $DOGG ]; then
        exec tmux attach-session -t $DOGG && exit 0
    else
        exec tmux && exit 0
    fi
fi
