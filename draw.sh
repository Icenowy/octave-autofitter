if [ ! -e $1.m ]
then
echo "Please generate $1.m"
fi
cat cihualv.m > ex.m
cat $1.m >> ex.m
echo "plot(cihualv,$1,'*')" >> ex.m
echo "uiwait()" >> ex.m
octave ex.m
