Account subclass: SavingsAccount [
    | interest |

    init: num customer: cstmr balance: bal [
        number := num.
        customer := cstmr.
        balance := bal.
        interest := 0.0.
    ]

    "Calculates the interest earned on the balance and updates the interest instance variable"
    accrue: rate [
        balance := balance + (balance * rate).
        interest := interest + (balance * rate).
    ]
].