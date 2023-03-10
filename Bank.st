"Translated from Bank.java into smalltalk"
"author: Austin Platt"
Object subclass: Bank [
    "all bank accounts in collection"
    |accounts|

    Bank class [
        new [
            "creates a blank set object to store Account instances."
            ^super new init 
        ]
    ]

    init [
        accounts:= Set new
    ]

    "add a new account to the bank"
    add: account [
        accounts add: account
    ]

    "Iterates through every Account object and is given a call to the accrue function for interest."
    accrue: rate [
        accounts do: [ :account | account accrue: rate]
    ]

    "iterate through all accounts and return their information"
    asString [
        |r| r:=''.
        accounts do: [ :account | r:=r, account asString, (Character nl asString)].
        ^r
    ]

].

"main method"   
|bank| bank:=Bank new.
|cstmr| cstmr:=Customer new: 'Ann'.
bank add: (SavingsAccount new: '01002' customer: cstmr balance: 200.00).
bank add: (CheckingAccount new: '01001' customer: cstmr balance: 100.00).
bank accrue: 0.02.
bank asString printNl