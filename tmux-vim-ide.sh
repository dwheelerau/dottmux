#!/bin/bash

SESSION=$USER


# start a new tmux session
tmux -2 new-session -d -s $SESSION

# session one normal bash window on local PC
# with verticle split
tmux new-window -t $SESSION:0 -n 'LocalPC'
tmux split-window -v
tmux select-pane -t 1
tmux resize-pane -D 17 
tmux select-pane -t 0

# create a split upper window for duel vim sessions

#tmux select-pane -t 0
#tmux split-window -h
# ssh to ngbs
#tmux new-window -t $SESSION:1 -n 'NgBS'
#tmux send-keys "sshngbs" C-m

# ssh to ngbs
#tmux new-window -t $SESSION:2 -n 'NgBS'
#tmux send-keys "sshnzgl" C-m

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
tmux split-window -h
tmux send-keys "echo '**use: view filename, to avoid potential overwrite in vim**'" C-m
#tmux send-keys "vim" C-m

# start session and change to the current directory
tmux -2 attach-session -t $SESSION -c $PWD
