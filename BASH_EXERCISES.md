# BASH EXERCISES
1. ps| wc -l ;output = 4 processes running in my system

2. Script name time.sh
bash time.sh > time.log

3. To create an empty file in the current directory:
 **touch empty.txt**

4. One command to create a whole path from /home/icipe/ is ; 
**mkdir -p ~/Work/mini-project/RNA-seq/**

5. To rename a file seqs.txt to sequences.fasta the command **mv** is used;
**mv seqs.txt sequences.fasta**

6. The single command to be used to create a file containing "Hello,world!" and named universal_greetings.txt is;
**echo '"Hello,world!"' > universal_greetings.txt**

7. The create the same file with a different name universal greetings.txt;
**echo '"Hello,world!"' > "universal greetings.txt"**

8. To download a file remotely from github
**wget --no-check-certificate --content-disposition
https://raw.githubusercontent.com/Fnyasimi/my-first-repo/main/directory1/test.fa**
Alternatively one can use the command; **curl -LJO https://raw.githubusercontent.com/Fnyasimi/my-first-repo/main/directory1/test.fa

9. To count number of files in test.fa; **wc -l** gives the output as 10281
  To count number of sequences in test.fa; **grep ">" test.fa | wc -l** gives 100
   
10. To extract the identifiers from the test.fa file;
   **grep ">" test.fa > identifiers.txt**
   
11. To replace all A to lowercase a in the test.fa,the command **tr** is used;
    **tr A a < test.fa**
    
12. The command to display all identifier lines from test.fa file is; **egrep ">" test.fa**

13. **grep ">" test.fa | cut -d, -f1 | sed 's/PREDICTED://g' | awk '{print $2,$3}'**

14. **sort -n species.txt | uniq -c |sort -nr**

15. A loop to produce intergers 1 to 30 each in one line;
 ```bash
 >for integers in $(seq 1 30)
 >do
 >    echo $integers
 >done
 ```
16. To create 20 files called "trial1" to trial20" then renaming all at once the following command is used;
**touch trial{1..20}**  
#To rename:
```bash=
>for files in trial{1..20}
>do
>mv $files ${files}.data
>done
```
17. The command "expr 1 / 0" gives the output; **expr:division by zero** this is an error message since division by zero is an illegal arithmetic operation.

18. **echo output 1>>stdout.log && echo output 2>>stderr.log**
#The value 1(*stdout*) and 2(*stderr*) are file descriptors.

19. script name greetings.sh

20. To move from /home/icipe/Linux/Exercise ; **cd ../../Fun_stuff**

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