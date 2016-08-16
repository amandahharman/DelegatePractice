//
//  ViewController.swift
//  DelegatePractice
//
//  Created by Amanda Harman on 7/21/16.
//  Copyright © 2016 Amanda Harman. All rights reserved.

import UIKit

protocol IncrementCountDelegate {
    func increaseCount()
}


class ViewController: UIViewController, IncrementCountDelegate{
    
    var count = 0
    @IBOutlet weak var countLabel: UILabel!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toUpdateCountViewController" {
            let destinationVC = segue.destinationViewController as? UpdateCountViewController
            destinationVC?.delegate = self}
    }
    
    func increaseCount() {
        count += 1
        print(count)
        countLabel.text = "\(count)"
    }
    
}



