"Translated from SavingAccount.java into smalltalk"
"author: Austin Platt"
Account subclass: SavingsAccount [
    "interest on the account"
    | interest |

    init: num customer: cstmr balance: bal [
        number := num.
        customer := cstmr.
        balance := bal.
        interest := 0.0.
    ]

    "Updates the interest instance variable by calculating the interest earned on the balance."
    accrue: rate [
        balance := balance + (balance * rate).
        interest := interest + (balance * rate).
    ]
].