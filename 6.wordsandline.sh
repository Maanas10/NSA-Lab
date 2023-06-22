if [ $# -gt 1 ]
then
echo "Syntax is <$0> [<file name>]"
exit 1
fi
flag=0
if [ $# -eq 1 ]
then 
term=`tty`
exec < $1
flag=1
fi
while read line
do 
no1=`expr $no1 + 1`
set $line>/dev/null
nowds=`expr $nowds +  $#`
done
echo "Number of lines =$no1"
echo "number of words = $nowds"
if [ $flag -eq 1 ]
then
exec < $term
fi 
exit 0
