Object subclass: Bank [
    |accounts|
    Bank class [
        new [
            ^super new init
        ]
    ]

    init [
        accounts := Set new.
    ]

    add: account [
        accounts add: account.
    ]

    accrue: rate [
        accounts do: [ :account | account accrue: rate].
    ]

    toString [
        |string| string := ''.
        accounts do: [ :account | string := string, (account toString), (Character nl asString)].
        ^string.
    ]

    main [
        |b c|
        b := Bank new.
        c := Customer new setName: 'Ann'.
        b add: (CheckingAccount new initNumber: '01001' initCustomer: c initBalance: 100.00).
        b add: (SavingAccount new initNumber: '01002' initCustomer: c initBalance: 200.00).
        b accrue: 0.02.
        Transcript show: b toString.
    ]
]