//
//  Car.swift
//  homeWork_2_version_1
//
//  Created by Anton Lebedev on 23.07.17.
//  Copyright © 2017 Anton Lebedev. All rights reserved.
//

import Foundation

class Car {

    var engineCarOn: Bool
    var alertSoundCarOn: Bool
    var trunkCarOpen:Bool
    var baggageInTrunk: [Int: String]
    
    init(engineCarOn: Bool, alertSoundCarOn: Bool, trunkCarOpen:Bool, baggageInTrunk: [Int: String]) {
        self.engineCarOn = engineCarOn
        self.alertSoundCarOn = alertSoundCarOn
        self.trunkCarOpen = trunkCarOpen
        self.baggageInTrunk = baggageInTrunk
    }
    
}
