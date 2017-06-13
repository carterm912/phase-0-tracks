#Nested Data Structures Release 1
# This is going to be a number of cars on a road with the cars having two different features (make and color) and having different occupants



road = {
    car_one: {
        make: 'Ford',
        color: 'Red',
        occupants: [
            "Tom",
            "Sally"
        ]
    },
	car_two: {
        make: 'Honda',
        color: 'Blue',
        occupants: [
            "Suzan",
            "Lindsey"
        ]
    },
    car_three: {
        make: 'Nissan',
        color: 'Teal',
        occupants: [
            "Harry",
            "Max"
        ]
    }
}



p road[:car_three][:occupants][0]
p road[:car_one][:color]




