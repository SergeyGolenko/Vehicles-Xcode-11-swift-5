//
//  DetailViewController.swift
//  Vehicles
//
//  Created by Ray Fix on 9/8/14.
//  Copyright (c) 2014 Razeware, LLC. All rights reserved.
//

import UIKit

class VehicleDetailViewController: UIViewController {
    
   
  
  @IBOutlet weak var detailDescriptionLabel: UILabel!
  
  var detailVehicle: Vehicle! {
    didSet {
        self.configureView()
    }
  }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
     
    }
    
    
    
    func configureView() {
      // обновление пользовательского интерфейса для элемента сведений
        if let vehicle = detailVehicle {
            title = vehicle.vehicleTitle
            detailDescriptionLabel?.text = vehicle.vehicleDetails
           }
    }
    
    

 @IBAction func goForward(sender: AnyObject) {
    if let vehicle = detailVehicle {
        let controller = UIAlertController.alertControllerWithTitle(title: "Go Forward", message: vehicle.goForward())
        present(controller, animated: true) {}
    }
  }

  @IBAction func goBackward(sender: AnyObject) {
    if let vehicle = detailVehicle {
        let controller = UIAlertController.alertControllerWithTitle(title: "Go Backward", message: vehicle.goBackward())
        present(controller, animated: true) {}
    }
  }

  @IBAction func stopMoving(sender: AnyObject) {
    if let vehicle = detailVehicle {
        let controller = UIAlertController.alertControllerWithTitle(title: "Stop Moving", message: vehicle.stopMoving())
        present(controller, animated: true) {}
    }
  }

  @IBAction func makeNoise(sender: AnyObject) {
    if let vehicle = detailVehicle {
        let controller = UIAlertController.alertControllerWithTitle(title: "Make Some Noise!", message: vehicle.makeNoise())
        present(controller, animated: true) {}
    }
  }

  
}
