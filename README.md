# Bank-tech-test

# How to interact with the program

Clone this repo and run bundle to install the gem: 

```
git clone git@github.com:Brendao1/Bank-tech-test.git

bundle
```
Launch irb in the console and require the program file:
```
irb

require './lib/bank.rb'
```
Here is an example interaction:

```
a = Account.new

a.deposit(50, "15/02/2019")

a.store_transaction

a.withdrawal(5, "16/02/2019")

a.store_transaction

a.print_statement

=>
```
```
<<-EOF.deindent
+------------+--------+-------+---------+
| date       | credit | debit | balance |
+------------+--------+-------+---------+
| 16/02/2019 |        | 5     | 45      |
| 15/02/2019 | 50     |       | 50      |
+------------+--------+-------+---------+
 EOF
```

