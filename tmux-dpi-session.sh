#!/bin/bash

SESSION=$USER

# start a new tmux session
tmux -2 new-session -d -s $SESSION

# session one normal bash window on local PC
# with verticle split
tmux new-window -t $SESSION:0 -n 'dpi'
tmux split-window -v
tmux resize-pane -D 14

# split bottom pane
tmux select-pane -t 1
tmux split-window -h
tmux send-keys "htop" C-m

# session one normal bash window on local PC
# with verticle split
tmux new-window -t $SESSION:1 -n 'VIM'
tmux split-window -v
tmux select-pane -t 1
tmux resize-pane -D 17 
tmux select-pane -t 0

# Set default window
tmux select-window -t $SESSION:1
tmux split-window -h
tmux send-keys "echo '**use: view filename, to avoid potential overwrite in vim**'" C-m

# select the main DPI window
tmux select-window -t $SESSION:0
tmux select-pane -t 0

# start session and change to the current directory
tmux -2 attach-session -t $SESSION -c $PWD

# set up a second window with for duel pain
#tmux new-window -t $SESSION:1 -n 'split-win'
#tmux split-window -h
