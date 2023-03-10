"Object subclass: Account [
    |number customer balance|
    Account class [
        new [
            ^super new init
        ]
    ]

    initNumber: number initCustomer: customer initBalance: balance [
        number := number.
        customer := customer.
        balance := balance.
    ]

    accrue: rate [
        ^self subclassResponsibility
    ]

    deposit: amount [
        balance := balance + amount.
    ]

    withdraw: amount [
        balance := balance - amount.
    ]

    toString [
        ^(number asString,':', customer toString,':', balance asString).
    ]
]"

"gst Account.st"
"smalltalk class for Account.java"
Object subclass: Account [
    |number|
    |customer|
    |balance|

    "Abstract method defined in subclasses"
    Account class [
        new: n customer: cstmr balance: bal [
            ^self new init: num customer: cstmr balance: bal
        ]
    ]

    init: num customer:cstmr balance:bal [
        ^self subclassResponsibility
    ]

    accrue: rate [
        ^self subclassResponsibility
    ]

    accBalance [
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