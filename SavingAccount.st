"Account subclass: SavingAccount [
    |interest|
    SavingAccount class [
        new [
            |newSavings|
            newSavings := super new.
            newSavings init.
            newSavings initInterest.
            ^newSavings
        ]
    ]

    initInterest [
        interest := 0.0
    ]

    initCustomer: cstmr [
        customer := cstmr
    ]

    initCustomer: cstmr initNumber: num initBalance bal [
        customer:=cstmr.
        number:=num.
        balance:=bal.
    ]

    initNumber: num [
        number := num.
    ]

    initCustomer: cstmr [
        customer := cstmr.
    ]

    initBalance: bal [
        balance := bal.
    ]

    accrue: rate {
        interest := interest + (balance * rate).
        balance := balance + (balance * rate).
    }
]"

"SavingsAccount.st"
"smalltalk class for SavingAccount.java"
Account subclass: SavingsAccount [
    | interest |

    init: n customer: c balance: b [
        number := n.
        customer := c.
        balance := b.
        interest := 0.0.
    ]

    "Calculates the interest earned on the balance and updates the interest instance variable"
    accrue: rate [
        balance := balance + (balance * rate).
        interest := interest + (balance * rate).
    ]
].