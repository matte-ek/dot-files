cd /home/matte/uni

pdf="$(find . -name *.pdf | fzf)"

nohup zathura --plugins-dir='/usr/lib/zathura' "$pdf" &
