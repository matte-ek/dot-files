cd /home/matte/uni

pdf="$(find . -name *.pdf | fzf)"

nohup zathura "$pdf" &
