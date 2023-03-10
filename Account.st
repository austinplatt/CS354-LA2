"Translated from Account.java into smalltalk"
"author: Austin Platt"
Object subclass: Account [
    "the account number"
    |number|
    
    "the customer who owns the account"
    |customer|

    "the current balance on the account"
    |balance|

    Account class [
        new: num customer: cstmr balance: bal [
            ^self new init: num customer: cstmr balance: bal
        ]
    ]

    init: num customer:cstmr balance:bal [
        ^self subclassResponsibility
    ]

    accrue: rate [
        ^self subclassResponsibility
    ]

    "all the defined functions related to banking accounts"
    currBalance [
        ^balance
    ]

    deposit: amount [
        balance:=balance+amount
    ]

    withdraw: amount [
        balance:=balance-amount
    ]
    asString [
        ^number asString, ':', customer asString, ':', balance asString.
    ]

].