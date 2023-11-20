#Inserting the size of rows and columns
echo -n enter number of rows of matrix-A:
read m1
echo -n enter number of columns matrix-A:
read n1
echo -n enter number of rows of matrix-B:
read m2
echo -n enter number of columns matrix-B:
read n2
#Checking if no. columns of matrix-A is equal to no. rows of matix-B 
if(($n1==$m2))
then
	#Inserting of elements in matices
	echo enter elements of matrix A:
	for((i=0;i<$m1;i++))
	do
		for((j=0;j<$n1;j++))
		do
			echo -n "enter element ($i,$j):"
			read arr1[$i$j]
		done
	done
	echo enter elements of matrix B:
	for((i=0;i<$m2;i++))
	do
		for((j=0;j<$n2;j++))
		do
			echo -n "enter element ($i,$j):"
			read arr2[$i$j]
		done
	done

	#Multiplying two matices
	for((i=0;i<$m1;i++))
	do
		for((j=0;j<$n2;j++))
		do
			arr3[$i$j]=0
			for((k=0;k<$n1;++k))
			do
				arr[$i$j]=$((${arr1[$i$k]}*${arr2[$k$j]}))
				arr3[$i$j]=$((${arr3[$i$j]}+${arr[$i$j]}))
			done
		done
	done

	#Showing the answer
	echo After addition the matrix is:
	for((i=0;i<$m1;i++))
	do
		for((j=0;j<$n1;j++))
		do
			echo -n ${arr3[$i$j]}" "
		done
			echo
	done
else
	echo "Can not multiply"
fi
