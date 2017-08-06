## repo for my .tmux.conf file

1.  Clone this repo in your home directory  
`cd ~ && git clone git@github.com:dwheelerau/dottmux.git`  
2.  make a symlink from the tmux.conf file to ~/.tmux.conf  
`ln -s /home/USERNAME/dottmux/tmux.conf /home/USERNAME/.tmux.conf`

3. update the conf file from tmux  
`tmux`  
`tmux source ~/.tmux.conf`  

###  command  
`tmux kill-server  # exits everything!`  
`tmux kill-session -t <myname>`  
`tmux kill-window -t <windowNumber>`  
`tmux new -s <myname>`  
<kbd>ctrl</kbd> + <kbd>a</kbd> then <kbd>d</kbd> `detach current session`   
`tmux ls`  
`tmux attach -t <myname>  # reattach to myanme ie -t dwheeler for scripts`   
`tmux list-commands`  
`tmux list-keys`  

### shortcuts  
prefix: <kbd>ctrl</kbd> + <kbd>a</kbd>  
vertical split: <kbd>ctrl</kbd> + <kbd>a</kbd> then <kbd>|</kbd>  
Horizontal split: <kbd>ctrl</kbd> + <kbd>a</kbd> then <kbd>-</kbd>  
return to one split: <kbd>ctrl</kbd> + <kbd>a</kbd> then <kbd>N</kbd>  
move between splits: <kbd>ctrl</kbd> + <kbd>h</kbd> <kbd>k</kbd><kbd>l</kbd><kbd>j</kbd>  
copy mode: <kbd>ctrl</kbd> + <kbd>a</kbd> then <kbd>[</kbd>  
in copy mode, select: <kbd>v</kbd>   
in copy yank, select: <kbd>y</kbd>   
exit copy mode and paste: <kbd>q</kbd> then to paste <kbd>ctrl</kbd> +
<kbd>a</kbd> then <kbd>a</kbd>  
new window: <kbd>ctrl</kbd> + <kbd>a</kbd> then <kbd>c</kbd>  
rename window: <kbd>ctrl</kbd> + <kbd>a</kbd> then <kbd>,</kbd>  
move between windows: <kbd>ctrl</kbd> + <kbd>a</kbd> then <kbd>1</kbd> <kbd>2</kbd> etc   
Zoom pane: <kbd>ctrl</kbd> + <kbd>a</kbd> then <kbd>z</kbd>  
Resize pane: <kbd>ctrl</kbd> + <kbd>a</kbd> then use arrow keys (up/down)   

### In vim run shell commands using vimux  
<kbd>,</kbd> + <kbd>n</kbd> + <kbd>v</kbd>  

### Example tmux script  
```
#!/bin/bash
SESSION=$USER

# start a new tmux session
tmux -2 new-session -d -s $SESSION

# session one normal bash window on local PC
tmux new-window -t $SESSION:0 -n 'LocalPC'

# ssh to ngbs
tmux new-window -t $SESSION:1 -n 'NgBS'
tmux send-keys "sshngbs" C-m


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

# Attach to session
tmux -2 attach-session -t $SESSION
```
