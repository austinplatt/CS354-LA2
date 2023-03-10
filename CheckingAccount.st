"Translated from CheckingAccount.java into smalltalk"
"author: Austin Platt"
Account subclass: CheckingAccount [
    init: num customer: cstmr balance: bal [
        number := num.
        customer := cstmr.
        balance:= bal.
    ]
    
    accrue: rate [
        "Left blank because the accrue is defined in the Account parent class "
    ]
].

