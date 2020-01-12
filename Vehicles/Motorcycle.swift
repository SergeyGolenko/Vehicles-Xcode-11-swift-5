//
//  Motorcycle.swift
//  Vehicles
//
//  Created by Sergey Golenko on 12.01.2020.
//  Copyright © 2020 Razeware, LLC. All rights reserved.
//

import Foundation

class Motorcycle : Vehicle {
    
    let engineNoise: String

   init(brandName:String,modeName:String,modelYear:Int,engineNoise:String) {
        self.engineNoise = engineNoise
        super.init(brandName: brandName, modelName: modeName, modelYear: modelYear, powerSource: "gas engine", numberOfWheels: 2)
    }

    
    
    // MARK: - Superclass Overrides
    
    override var vehicleDetails: String {
      //Get basic details from superclass
      let basicDetails = super.vehicleDetails
          
      //Initialize mutable string
      var motorcycleDetailsBuilder = "\n\nMotorcycle-Specific Details:\n\n"
          
      //Add info about motorcycle-specific features.
      motorcycleDetailsBuilder += "Engine Noise: \(engineNoise)"
          
      let motorcycleDetails = basicDetails + motorcycleDetailsBuilder
          
      return motorcycleDetails
    }

    
    
    
    
    
    override func goForward() -> String {
        return String(format: "%@ Open throttle.", changeGears(newGearName: "Forward"))
    }

    override func goBackward() -> String {
        return String(format: "%@ Walk %@ backwards using feet.", changeGears(newGearName: "Neutral"), modelName)
    }
      
    override func stopMoving() -> String {
      return "Squeeze brakes"
    }

    override func makeNoise() -> String {
      return self.engineNoise
    }

}
