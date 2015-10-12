//
//  BusDetailsViewController.swift
//  Ryding
//
//  Created by Rafael Lima on 10/12/15.
//  Copyright © 2015 Rafael Lima. All rights reserved.
//

import UIKit

class BusDetailsViewController: UIViewController {
    
    var currentBus : Bus?

    @IBOutlet weak var currentBusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let currentGeoLocLong = currentBus!.geoLocationLong
        let currentGeoLocLat = currentBus!.geoLocationLat
        let currentBusNumber = currentBus!.busNumber
        
        self.title = "Bus \(currentBus!.busNumber)"
        
        currentBusLabel.text = "Bus number: \(currentBusNumber)\nLatitude: \(currentGeoLocLat)\nLongitude: \(currentGeoLocLong)"
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
