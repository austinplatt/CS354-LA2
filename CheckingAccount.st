"Account subclass: CheckingAccount [
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
    }
]"

"CheckingAccount.st"
"smalltalk class for CheckingAccount.java"
Account subclass: CheckingAccount [
    init: n customer: c balance: b [
        number := n.
        customer := c.
        balance:= b.
    ]
    "Inherit accrue from parent class"
    accrue: rate [
    ]
].

