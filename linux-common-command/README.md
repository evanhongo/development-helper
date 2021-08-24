# Linux Common Command

- ##  test.txt <br/>
    Item1,200 <br/>
    Item2,500 <br/>
    Item3,900 <br/>
    Item2,800 <br/>
    Item1,600 <br/>

```sh
# Find disk usage
df -h
du -s
du -h

# Find the count of lines including "Item1"
cat test.txt | grep Item1 | wc -l

# Replace "Item1" with "Item2"
sed -i /Item1/Item2/g test.txt

# Print column 1 and 2
awk -F , '{print $1,$2}' test.txt

# Print the sum of column 2
awk -F , '{x+=$2}END{print x}' test.txt

# Print the set of column 1
awk -F , '{a[$1];}END{for (i in a)print i;}' test.txt

# Remove all .c files under current directory
find . -name "*.c" -0 | xargs -0 rm -f
fd .c -0 | xargs -0 rm -f
```