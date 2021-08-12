#$1 = part of window name e.g. Chrom
xdotool search --name $1 | xargs -n1 xdotool windowminimize
