Clone repository
```
git clone https://github.com/ValentinaKoroleva/duplicates_anagrams.git
```
# Exercise 1
Assuming you have Perl installed (my version is v5.32.1), to execute use:
```
perl findDoubles.pl
```
Example of a response:
```   
line---line_number
1x12@Fu38Xv1---899
f1RiZgi0nrQj---1666
zhsOmCHJSgbz---8002
N is 1000001
Duration is 10 sec
Complexity is O(n)
```
# Exercise 2
to execute use:
```
perl findAnagrams.pl
```
One line - same letters,
k - the length of the row,
n - the length of the file
Example of a response:
```
line---line_number
jMWU60DQVvjy---8963,MjWy06DQVvjU---8964
f1RiZgi0nrQj---1345,f1RiZgi0nrQj---1666
zhsOmCHJSgbz---6465,zhsOmCHJSgbz---8002
1x12@Fu38Xv1---898,1x12@Fu38Xv1---899
Duration is 14 sec
Complexity is O(n * (k * ln(k)) 
```