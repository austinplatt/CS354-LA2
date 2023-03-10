Account subclass: CheckingAccount [
    init: num customer: cstmr balance: bal [
        number := num.
        customer := cstmr.
        balance:= bal.
    ]
    "Inherit accrue from parent class"
    accrue: rate [
    ]
].

