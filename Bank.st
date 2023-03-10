Object subclass: Bank [
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

    add: account [
        accounts add: account
    ]

    "Every Account object in the accounts set is given a call to the accrue function."
    accrue: rate [
        accounts do: [ :account | account accrue: rate]
    ]

    asString [
        |r| r:=''.
        accounts do: [ :account | r:=r, account asString, (Character nl asString)].
        ^r
    ]

].
   
|bank| bank:=Bank new.
|cstmr| c:=Customer new: 'Ann'.
bank add: (CheckingAccount new: '01001' customer: c balance: 100.00).
bank add: (SavingsAccount new: '01002' customer: c balance: 200.00).
bank accrue: 0.02.
bank asString printNl