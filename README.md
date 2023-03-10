**************************
* Language Assignment #2: Smalltalk
* CS354 Spring 2023
* 3/9/23
* Austin Platt
**************************

OVERVIEW:

The goal of the homework assignment was to translate banking application files written in Java into Smalltalk. 

INCLUDED FILES:

Account.st
Bank.st
CheckingAccount.st
Customer.st
SavingAccount.st
README.md

COMPLILING AND RUNNING:

To run this, you first locate the the files that you created within your onyx directory. Once you are in the directory in which your smalltalk files are located, you run the gst command on the files in the order Customer.st, Account.st CheckingAccount.st, SavingAccount.st, Bank.st, because the order is important. In this project it would be: gst Customer.st Account.st CheckingAccount.st \ SavingAccount.st Bank.st. Gst is a built-in translator for smalltalk and it will translate any files it encounters.

ERRORS:

I encountered a few errors with the the syntax of smalltalk. Smalltalk is very very organized and specific, so you have to have the syntax perfect or it will through errors. when I first ran it through the onyx node and translator, I got a bunch of parsing errors in my files. I had to refer back to the notes and the assignment outline to figure out the proper syntax. Once I got it, I was able to run the gst command script on the files and get the translator to work properly and return an output. 

DISCUSSION:

Overall, I had some trouble with this homework. First of all, the syntax and formatting of smalltalk is very different than java. In smalltalk, everything is an object and also is dynamic which is different from java that is static. I am not as confident in smalltalk as I am in other PL's so there was a lot of hesitation within performance and confusion with things. Eventually, I was able to follow the format of smalltalk and get a role on translating the files. I did run across some issues with that, but am glad I was able to figure out a solution. The project was solid overall, and I am glad I was introduced to the PL "smalltalk". 