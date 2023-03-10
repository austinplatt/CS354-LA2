"Translated from Customer.java into smalltalk"
"author: Austin Platt"
Object subclass: Customer [
    "Customers name in the collection"
    |name|

    Customer class [
        new: n [
            ^self new init:n
        ]
    ]

    init: n [
        name:=n.
    ]

    asString [
	    ^name
    ]

].