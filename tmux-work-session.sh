#!/bin/bash

SESSION=$USER

# start a new tmux session
tmux -2 new-session -d -s $SESSION

# session one normal bash window on local PC
# with verticle split
tmux new-window -t $SESSION:0 -n 'LocalPC'

# ssh to ngbs
tmux new-window -t $SESSION:1 -n 'NgBS-server'
tmux send-keys "sshngbs" C-m
tmux split-window -v
tmux select-pane -t 1
tmux resize-pane -D 17
tmux select-pane -t 0

# ssh to nzgl
tmux new-window -t $SESSION:2 -n 'NZGL-server'
tmux send-keys "sshnzgl" C-m
tmux split-window -v
tmux select-pane -t 1
tmux resize-pane -D 17
tmux select-pane -t 0


#tmux split-window -h
#tmux select-pane -t 0
# use -f to keep this live ie streaming content
#tmux send-keys "tail /var/mail/dwheeler" C-m
# now the next pane
#tmux select-pane -t 1
#tmux send-keys "echo 'hello1'" C-m
#tmux split-window -v
#tmux resize-pane -D 20
#tmux send-keys "echo 'hello2'" C-m
# Set default window
tmux select-window -t $SESSION:0

# Attach to session and change to current directory
tmux -2 attach-session -t $SESSION -c $PWD
