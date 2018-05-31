#!/bin/bash

SESSION=$USER

# start a new tmux session
tmux -2 new-session -d -s $SESSION

# session one normal bash window on local PC
# with verticle split
tmux new-window -t $SESSION:0 -n 'bash'
tmux split-window -v
tmux resize-pane -D 14

# split bottom pane
tmux select-pane -t 1
tmux split-window -h
tmux send-keys "htop" C-m

# set up a second window with for duel pain
tmux new-window -t $SESSION:1 -n 'winsplit'
tmux split-window -h

tmux select-window -t $SESSION:0
#tmux select-pane -t 1
# ssh to ngbs
#tmux new-window -t $SESSION:1 -n 'NgBS-server'
#tmux send-keys "sshngbs" C-m
#tmux split-window -v
#tmux select-pane -t 1
#tmux resize-pane -D 17
#tmux select-pane -t 0

# ssh to nzgl
#tmux new-window -t $SESSION:2 -n 'NZGL-server'
#tmux send-keys "sshnzgl" C-m
#tmux split-window -v
#tmux select-pane -t 1
#tmux resize-pane -D 17
#tmux select-pane -t 0

#tmux split-window -h
#tmux select-pane -t 0
# use -f to keep this live ie streaming content
#tmux send-keys "tail /var/mail/dwheeler" C-m
# now the next pane
# -t 0 is left, -t 1 is right
#tmux select-pane -t 0
#tmux send-keys "htop" C-m
#tmux split-window -v
#tmux resize-pane -D 0
# Set default window
#tmux select-window -t $SESSION:1
#tmux select-pane -t 1

# Attach to session and change to current directory
tmux -2 attach-session -t $SESSION -c $PWD
