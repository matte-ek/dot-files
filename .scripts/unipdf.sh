cd /home/matte/uni

pdf="$(find . -name *.pdf | fzf)"

zathura "$pdf"
