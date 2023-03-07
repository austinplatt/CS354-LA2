Object subclass: Account [
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
]