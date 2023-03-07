Object subclass: Customer [
    |name|
    Customer class [
        new: cName [
            ^super new init: cName
        ]
    ]

    init: cName [
        name := cName
    ]

    toString [
        ^name asString
    ]

]

|customer| customer := Customer new: 