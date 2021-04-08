# Introduction

> **tmux is a terminal multiplexer: it enables a number of terminals to be created, accessed, and controlled from a single screen. tmux may be detached from a screen and continue running in the background, then later reattached.**

---

# Cheat Sheet

```sh
# list sessions
tmux ls 

# create a session
tmux new -s <session_name>

# rename a session
tmux rename-session -t <old_session_name> <new_session_name>

# attach to a session
tmux a -t <session_name>

# kill a session
tmux kill-session -t <session_name>
```

| command           | description                  |
| ----------------- | ---------------------------- |
| ctrl-b + d        | detach a session             |
| ctrl-b + w        | list windows                 |
| ctrl-b + c        | create a window              |
| ctrl-b + ,        | rename a window              |
| ctrl-b + &        | kill a window                |
| ctrl-b + %        | split a window vertically    |
| ctrl-b + "        | split a window horizontally  |
| ctrl-b + ← →      | switch to the last/next pane |
| ctrl-b + space    | change layout                |
| ctrl-b + { }      | change a pane's location     |
| ctrl-b + ctrl-← → | change a pane's width        |
| ctrl-b + x        | kill a pane                  |
