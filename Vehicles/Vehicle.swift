//
//  Vehicle.swift
//  Vehicles
//
//  Created by Ray Fix on 9/8/14.
//  Copyright (c) 2014 Razeware, LLC. All rights reserved.
//

import Foundation

class Vehicle {
    
    let brandName: String
    let modelName: String
    let modelYear: Int
    let powerSource: String
    let numberOfWheels: Int

    
    
    // Mark: - Initialization Methods

    

    init(brandName:String, modelName:String, modelYear:Int, powerSource:String, numberOfWheels:Int) {
      self.brandName = brandName
      self.modelName = modelName
      self.modelYear = modelYear
      self.powerSource = powerSource
      self.numberOfWheels = numberOfWheels
    }

    
    
    
    
    // MARK: - Computed  Properties

    var vehicleTitle: String {
      return String(format:"%d %@ %@", modelYear, brandName, modelName)
    }
    
    
    var vehicleDetails : String{
        var details = "Basic vehicle details : \n\n"
        details += "Brand name: \(brandName)\n"
        details += "Model name: \(modelName)\n"
        details += "Model year: \(modelYear)\n"
        details += "Power source: \(powerSource)\n"
        details += "# of wheels: \(numberOfWheels)\n"
        
        return details
    }

    
    
    func goForward() -> String {
      return "null"
    }
      
    func goBackward() -> String {
      return "null"
    }
      
    func stopMoving() -> String {
      return "null"
    }
      
    func turn(degrees:Int) -> String {
      var normalizedDegrees = degrees
        
      //Since there are only 360 degrees in a circle, calculate what a single turn would be.
      let degreesInACircle = 360
      
      if (normalizedDegrees > degreesInACircle || normalizedDegrees < -degreesInACircle) {
        // The % operator returns the remainder after dividing.
        normalizedDegrees = normalizedDegrees % degreesInACircle
      }
      
      return String(format: "Turn %d degrees.", normalizedDegrees)
    }
      
    func changeGears(newGearName:String) -> String {
      return String(format: "Put %@ into %@ gear.",self.modelName, newGearName)
    }
      
    func makeNoise() -> String {
      return "null"
    }

   
    
}




