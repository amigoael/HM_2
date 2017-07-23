//
//  ViewController.swift
//  homeWork_2_version_1
//
//  Created by Anton Lebedev on 23.07.17.
//  Copyright © 2017 Anton Lebedev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        car ()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func car () {
    
        let car = Car (engineCarOn: false, alertSoundCarOn: false, trunkCarOpen: true, baggageInTrunk: [:])
        print("CAR is ready.")
        
        var addItem: Int
        
        if car.alertSoundCarOn == true {
            print("AllertCar: BEEEEEEP ")
        } else {
            print("AllertCar: non ")
        }
        
        if car.engineCarOn == true {
            print("EngineCar: ON ")
        } else {
            print("EngineCar: OFF ")
        }
        
        if car.trunkCarOpen == true {
            print("TrunkDoorCar : OPEN ")
        } else {
            print("TrunkDoorCar: CLOSE ")
        }
        
        if car.baggageInTrunk.isEmpty {
            print("TrunkBaggageCar: without baggage (\(car.baggageInTrunk.count) item)")
        } else {
            print("TrunkBaggageCar: Contains \(car.baggageInTrunk.count) items")
        }
        
        space()
        
        for item in 1...4 {
            car.baggageInTrunk[item] = "Luggage #\(item) "
        }
        print("TrunkBaggageCar: Contains \(car.baggageInTrunk.count) items")
        print(car.baggageInTrunk)
        
        space()
        
        if car.trunkCarOpen == true {
            car.baggageInTrunk.removeValue(forKey: 1)
            print("One thing got out of the trunk")
            print("TrunkBaggageCar: Contains \(car.baggageInTrunk.count) items")
        } else {
            print("Remove: TrunkDoorCar is CLOSE - First you need to open")
        
        }
        
        space()
        
        if car.trunkCarOpen == true {
            addItem = car.baggageInTrunk.count + 10
            car.baggageInTrunk[addItem] = "Luggage #\(addItem)"
            print("One thing put in the trunk")
            print("TrunkBaggageCar: Contains \(car.baggageInTrunk.count) items")
        } else {
            print("Add: TrunkDoorCar is CLOSE - First you need to open")
            
        }
        print(car.baggageInTrunk)

    }
}

