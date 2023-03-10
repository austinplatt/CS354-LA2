"Object subclass: Customer [
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

|customer| customer := Customer new: "

Object subclass: Customer [
    |name|

    Customer class [
        new: n [
            ^self new init:n
        ]
    ]

    init: n [
        name:=n
    ]

    "Returns the name of the customer object"
    asString [
	    ^name
    ]

].