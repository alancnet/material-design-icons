mkdir allprod;
find . -name production | while read dir; do
  ls $dir | while read file; do 
    cp $dir/$file allprod/$(echo $dir | tail -c +3 | head -c -16)_$file
  done
done
