CORRCOMPUTE="co=corr(y,r)"
cat /dev/null > ex.m
cat $1.m >> ex.m
cat $2.m >> ex.m
for i in funcs/*
do
. $i
echo "x=$1" >> ex.m
echo "y=$2" >> ex.m
echo "$FIT" >> ex.m
echo "$FUNC" >> ex.m
echo "$CORRCOMPUTE" >> ex.m
echo "if co >= $3" >> ex.m
echo "fp=fopen(\"res.txt\",\"a+\")" >> ex.m
echo "fprintf(fp,\"$1 $2 \")" >> ex.m
echo "$FITRES" >> ex.m
echo "fprintf(fp,\" r=%g \n\",co)" >> ex.m
echo "endif" >> ex.m
octave ex.m
done
