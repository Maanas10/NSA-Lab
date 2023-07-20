if [ $# -ne 0 ]
then
echo "Syntax error"
exit 1
fi
echo "\n\nDirectory of 'pwd' \n "
for f in *
do
fdt=`date -r $f "+ %d-%m-%y %H:%M:%S"`
if [ -d $f ]
then
echo "$f\t\t<DIR>\t$fdt"
else
fsize=`cat $f | wc -c`
echo "$f\t\t $fsize \t $fdt"
fi
done
