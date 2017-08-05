## repo for my .tmux.conf file

1.  Clone this repo in your home directory  
`git@github.com:dwheelerau/dottmux.git`  
2.  make a symlink from the tmux.conf file to ~/.tmux.conf  
`ln -s /home/USERNAME/dottmux/tmux.conf /home/USERNAME/.tmux.conf`

3. update the conf file from tmux  
`tmux`  
`tmux source ~/.tmux.conf`  

###  command  
tmux kill-server
tmux new -s myname  
tmux a -t myname  # attach to myanme   
tmux list-commands 
tmux list-keys  

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

### vim  
<leader>nv  # goto bash mode  
