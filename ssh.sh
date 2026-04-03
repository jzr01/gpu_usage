for i in 3 4 5 7 8 9 10 11 12 13 14 15 16 17; do
  ssh-copy-id zj90@bc298-cmp-$(printf "%02d" $i).egr.duke.edu
done