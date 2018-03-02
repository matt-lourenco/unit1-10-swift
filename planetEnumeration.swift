//
//  planetEnumeration.swift
//  This program Enumerates the planets and their positions.
//
//  Created by Matthew Lourenco on 01/03/18.
//  Copyright © 2018 MTHS. All rights reserved.
//

import Foundation

enum PlanetName {
	case MERCURY
	case VENUS
	case EARTH
	case MARS
	case JUPITER
	case SATURN
	case URANUS
	case NEPTUNE
}

func findLocation(nameOfPlanet: PlanetName)->Int {
	//Use a switch to assign locations
	switch(nameOfPlanet) {
	case .MERCURY: return 57;
	case .VENUS: return 108;
	case .EARTH: return 150;
	case .MARS: return 228;
	case .JUPITER: return 779;
	case .SATURN: return 1430;
	case .URANUS: return 2880;
	case .NEPTUNE: return 4500;
	default: return 0;
	}
}

var input: String?
var chosenPlanet = PlanetName.EARTH
var location: Int = 0

var validInput: Bool = false
while !validInput {
	print("Enter the name of a planet: ")
	input = readLine(strippingNewline: true)
	if input != nil {
		switch input!.uppercased() {
		case "MERCURY":
			chosenPlanet = PlanetName.MERCURY;
			validInput = true
			break;
		case "VENUS":
			chosenPlanet = PlanetName.VENUS;
			validInput = true
			break;
		case "EARTH":
			chosenPlanet = PlanetName.EARTH;
			validInput = true
			break;
		case "MARS":
			chosenPlanet = PlanetName.MARS;
			validInput = true
			break;
		case "JUPITER":
			chosenPlanet = PlanetName.JUPITER;
			validInput = true
			break;
		case "SATURN":
			chosenPlanet = PlanetName.SATURN;
			validInput = true
			break;
		case "URANUS":
			chosenPlanet = PlanetName.URANUS;
			validInput = true
			break;
		case "NEPTUNE":
			chosenPlanet = PlanetName.NEPTUNE;
			validInput = true
			break;
			default: break;
		}
	}
}
location = findLocation(nameOfPlanet: chosenPlanet)

print("The planet you chose was \(chosenPlanet)")
print("\(chosenPlanet) is an average of \(location) million kilometers away from the sun")