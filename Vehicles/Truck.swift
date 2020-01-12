//
//  Truck.swift
//  Vehicles
//
//  Created by Sergey Golenko on 12.01.2020.
//  Copyright © 2020 Razeware, LLC. All rights reserved.
//

import Foundation

class Truck : Vehicle {
    
    
    
    
    
    let cargoCapacityCubicFeet: Int
     
    init(brandName: String, modelName: String, modelYear: Int, powerSource: String, numberOfWheels: Int, cargoCapacityInCubicFeet:Int) {
      self.cargoCapacityCubicFeet = cargoCapacityInCubicFeet
      super.init(brandName: brandName, modelName: modelName, modelYear: modelYear,
        powerSource: powerSource, numberOfWheels: numberOfWheels)
    }

    
    //MARK: - Superclass overrides
    override func goForward() -> String {
        return String(format:"%@ Depress gas pedal.", changeGears(newGearName: "Drive"))
    }
      
    override func stopMoving() -> String {
        return String(format:"Depress brake pedal. %@", changeGears(newGearName: "Park"))
    }
    
    private func soundBackupAlarm() -> String {
        return "Beep!"
    }
    
    override func goBackward() -> String {
      if cargoCapacityCubicFeet > 100 {
        // Sound a backup alarm first
        return String(format:"Wait for \"%@\", then %@", soundBackupAlarm(), changeGears(newGearName: "Reverse"))
      } else {
        return String(format:"%@ Depress gas pedal.", changeGears(newGearName: "Reverse"))
      }
    }

    override func makeNoise() -> String {
      switch numberOfWheels {
      case Int.min...4:
        return "Beep beep!"
      case 5...8:
        return "Honk!"
      default:
        return "HOOOOOOOOONK!"
      }
    }

    override var vehicleDetails: String {
      // Get basic details from superclass
      let basicDetails = super.vehicleDetails
      
      // Initialize mutable string
      var truckDetailsBuilder = "\n\nTruck-Specific Details:\n\n"
      
      // Add info about truck-specific features.
      truckDetailsBuilder += "Cargo Capacity: \(cargoCapacityCubicFeet) cubic feet"
      
      // Create the final string by combining basic and truck-specific details.
      let truckDetails = basicDetails + truckDetailsBuilder
      
      return truckDetails
    }


}
