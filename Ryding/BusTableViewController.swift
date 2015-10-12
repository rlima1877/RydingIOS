//
//  BusTableViewController.swift
//  Ryding
//
//  Created by Rafael Lima on 10/12/15.
//  Copyright © 2015 Rafael Lima. All rights reserved.
//

import UIKit

class BusTableViewController: UITableViewController {
    
    //array to hold all buses
    var buses = [Bus]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Dummy bus objects created to test  UI
        
        var newBus = Bus(busNumber: "1", geoLocationLong: "-122.0842499", geoLocationLat: "37.4224764");
        buses.append(newBus)
        
        newBus = Bus(busNumber: "2", geoLocationLong: "-123.0842499", geoLocationLat: "38.4224764")
        buses.append(newBus)
        
        newBus = Bus(busNumber: "3", geoLocationLong: "-124.0842499", geoLocationLat: "38.4224764")
        buses.append(newBus)
        
        newBus = Bus(busNumber: "4", geoLocationLong: "-125.0842499", geoLocationLat: "38.4224764")
        buses.append(newBus)
        
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return buses.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("busCell", forIndexPath: indexPath)

        // Configure the cell...
        
        
        let currentBus = buses[indexPath.row]
        cell.textLabel?.text = "Bus: \(currentBus.busNumber)"
        
        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // Get the new view controller using segue.destinationViewController.
        let detailsScene = segue.destinationViewController as! BusDetailsViewController
        
        if let indexPath = self.tableView.indexPathForSelectedRow{
            let selectedBus = buses[indexPath.row]
            detailsScene.currentBus = selectedBus
            
            
        }
        
        
    }
    

}
