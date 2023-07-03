if [ $# -gt 1 ]
then
echo "Syntax error.\nSyntax is <$0> [file name]"
exit 1
fi
if [ $# -eq 0 ]
then
echo "Enter the file name: "
read file
else
file=$1
fi
term=`tty`
exec < $file
while read line
do
echo $line | grep linux > file2
if [ $? -eq 0 ] 
then    
continue
fi      
echo $line >> file1
done
mv file1 $file
rm file2
exec < $term
exit 0

