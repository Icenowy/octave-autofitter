awk -F , '{print $'$1' }' list.csv > tmp.txt
NAME="`sed -n '1p' tmp.txt`"
printf "`sed -n '1p' tmp.txt`=[" > res.m
sed -i '1d' tmp.txt
cat tmp.txt | while read a
do
printf -- "$a " >> res.m
done
printf "]" >> res.m
echo >> res.m
mv res.m $NAME.m
cat $NAME.m > tmp.m
echo "save $NAME.mat $NAME" >> tmp.m
octave tmp.m
