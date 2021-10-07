read -p "enter a value" a
read -p "enter b value" b
read -p "enter c value" c

w=$((a+b*c))
x=$((a*b+c))
y=$((c+a/b))
z=$((a%b+c))

declare -A s
s[w]=$w
s[x]=$x
s[y]=$y
s[z]=$z

array=("$w" "$x" "$y" "$z")
echo "Array is ${array[@]}"
size=4

for((i=0;i<=size-1;i++))
do
swap=0
for((j=0;j<size-i-1;j++))
do
if((array[j]>array[j+1]))
then
temp=${array[j]}
array[j]=${array[j+1]}
array[j+1]=$temp
swapped=1
fi
done
if((swapped==0))
then
break
fi
done

echo "The sorted array is: "
echo "${array[@]}"

