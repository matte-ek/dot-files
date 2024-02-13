cd /home/matte/uni

tex="$(find . -name '*.tex' | fzf)"
tex_basename=$(basename -- "$tex") 
tex_filename="${tex_basename%.*}"

pdf="$(find . -name "$tex_filename.pdf" | fzf)"

nohup code "$tex" >&/dev/null &
sleep 1
nohup zathura --plugins-dir='/usr/lib/zathura' "$pdf" >&/dev/null &
