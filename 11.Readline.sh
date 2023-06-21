#shell script to print specified range of the lines from given files*

if [ $# -le 2 ]
then
echo "Syntax is <$0> [range] [files........]"
exit 1
fi
n1=$1
n2=$2
shift
shift
n3=`expr $n2 - $n1 +1`
while [ $# -ne 0 ]
do
head -$n2 $1 | tail - $n3
shift 
done 
exit 0 
