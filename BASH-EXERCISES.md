# BASH-EXERCISES
1. ps| wc -l ;output = 4 processes running in my system

2. Script name time.sh

3. touch empty.txt

4. mkdir -p ~/Work/mini-project/RNA-seq/

5. mv seqs.txt sequences.fasta

6. echo "Hello,world!" > universal_greetings.txt

7. echo "Hello,world!" > "universal greetings.txt"

8. To download a file remotely from github
wget --no-check-certificate --content-disposition
https://raw.githubusercontent.com/Fnyasimi/my-first-repo/main/directory1/test.fa
Alternatively one can use the command;
curl -LJO https://raw.githubusercontent.com/Fnyasimi/my-first-repo/main/directory1/test.fa

9. No. of files: **wc -l** gives the output as 10281
   No. of sequences: **grep ">" test.fa | wc -l** gives 100
  
10. grep ">" test.fa > identifiers.txt
11. tr A a < test.fa
    
12. egrep ">" test.fa

13. grep ">" test.fa | cut -d, -f1 | sed 's/PREDICTED://g' | awk '{print $2,$3}'

14. sort -n species.txt | uniq -c |sort -nr

15. A loop to print intergers 1 to 30 ;
 ```bash
 >for integers in $(seq 1 30)
 >do
 >    echo $integers
 >done
 ```
16. touch trial{1..20}  
#To rename:
```bash=
>for files in trial{1..20}
>do
>mv $files ${files}.data
>done
```
17. The command "expr 1 / 0" gives the output; **expr:division by zero** this is an error message since division by zero is an illegal arithmetic operation.

18. echo output 1>>stdout.log && echo output 2>>stderr.log
#The value 1(*stdout*) and 2(*stderr*) are file descriptors.

19. script name greetings.sh

20. cd ../../Fun_stuff

21. generator.sh
```bash=
for i in {0..9}
do
mkdir "$i"
cd "$i"
touch "$i".{0..9}
cd ..
done
```