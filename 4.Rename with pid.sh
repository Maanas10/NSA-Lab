if [ $# -ne 0 ]
then
echo "Syntax is <$0>"
exit 1
fi
for i in * 
do
if [ -f $i ]
then
mv $i $i.$$ $newname
fi
done
exit 
