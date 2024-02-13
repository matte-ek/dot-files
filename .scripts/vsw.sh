cd /home/matte/uni

pdf="$(find . -name '*.tex' | fzf)"

nohup code "$pdf" &
