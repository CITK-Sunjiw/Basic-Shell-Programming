#Inserting the size of rows and columns
echo -n enter number of rows:
read m
echo -n enter number of columns:
read n

#Inserting of elements in matices
echo enter elements of matrix A:
for((i=1;i<=$m;i++))
do
	for((j=1;j<=$n;j++))
	do
		echo -n "enter element ($i,$j):"
		read arr1[$i$j]
	done
done
echo enter elements of matrix B:
for((i=1;i<=$m;i++))
do
	for((j=1;j<=$n;j++))
	do
		echo -n "enter element ($i,$j):"
		read arr2[$i$j]
	done
done

#Adding two matices
for((i=1;i<=$m;i++))
do
	for((j=1;j<=$n;j++))
	do
		arr3[$i$j]=`expr ${arr1[$i$j]} + ${arr2[$i$j]}`
	done
done


#Showing the answer
echo After addition the matrix is:
for((i=1;i<=$m;i++))
do
	for((j=1;j<=$n;j++))
	do
		echo -n ${arr3[$i$j]}" "
	done
	echo
done
