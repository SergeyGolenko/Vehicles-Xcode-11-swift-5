//
//  UIAlertController + Convenience.swift
//  Vehicles
//
//  Created by Sergey Golenko on 12.01.2020.
//  Copyright © 2020 Razeware, LLC. All rights reserved.
//

import UIKit

extension UIAlertController {
  class func alertControllerWithTitle(title:String, message:String) -> UIAlertController {
    let controller = UIAlertController(title: title, message: message, preferredStyle: .alert)
    controller.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
    return controller
  }
    
    
    

    
    
    
    
    
    
    
    
    
    
}



