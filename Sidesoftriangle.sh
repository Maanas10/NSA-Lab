if  [ $# -gt 1 ]
then
echo "syntax error"
exit 1
fi
if [ $# -eq 0 ]
then
echo "Enter length of first side of a triangle:"
read t1
echo "Enter length of Second side of a triangle:"
read t2
echo "Enter length of third side of a triangle:"
read t3
fi
if [ `expr $t1 + $t2` -le $t3 -o `expr $t1 + $t3` -le $t2 -o `expr $t2 + $t3` -le $t1 ]
then
echo "Using $t1,$t2,$t3 we cannot make a triangle "
exit
else
echo "Using $t1,$t2,$t3 we can make a triangle"
fi
