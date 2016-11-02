cars = {
	'honda_civic' => [
			'blue',
			'150,000 miles',
			'1998'
		],
	'ford_taurus' => [
			'silver',
			'120,000 miles',
			'2002'
		],
	'chevy_malibu' => [
			'green',
			'20,000 miles',
			'2012'
		]
}

p cars
p cars['chevy_malibu'][1]
p cars['ford_taurus'][0]
cars['honda_civic'][2] = 1996
p cars