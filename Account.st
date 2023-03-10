Object subclass: Account [
    |number|
    |customer|
    |balance|

    "Abstract method defined in subclasses"
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