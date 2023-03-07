Account subclass: CheckingAccount [
    CheckingAccount class [
        new [
            ^super new init.
        ]
    ]

    initCustomer: cstmr initNumber: num initBalance bal [
        customer:=cstmr.
        number:=num.
        balance:=bal.
    ]

    initNumber: num [
        number := num
    ]

    initCustomer: cstmr [
        customer := cstmr
    ]

    initBalance: bal [
        balance := bal
    ]

    accrue: rate {
        "do nothing, since this is a checking account"
    }
]

