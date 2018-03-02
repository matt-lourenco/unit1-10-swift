//
//  planetEnumeration.swift
//  This program Enumerates the planets and their positions.
//
//  Created by Matthew Lourenco on 01/03/18.
//  Copyright © 2018 MTHS. All rights reserved.
//

enum Planet: Int {
	case MERCURY = 0
	case VENUS = 1
	case EARTH = 2
	case MARS = 3
	case JUPITER = 4
	case SATURN = 5
	case URANUS = 6
	case NEPTUNE = 7
	
	func findLocation(name: Planet) -> Double {
		//find the location of the planet
		switch name {
			case .MERCURY: return 57
			case .VENUS: return 108
			case .EARTH: return 150
			case .MARS: return 228
			case .JUPITER: return 779
			case .SATURN: return 1430
			case .URANUS: return 2880
			case .NEPTUNE: return 4500
		}	
	}
}

for index in 0...7 {
	var planet = Planet(rawValue: index)
	print("\(planet!) is an average of \(planet!.findLocation(name: planet!)) million kilometers away from the sun.")
}