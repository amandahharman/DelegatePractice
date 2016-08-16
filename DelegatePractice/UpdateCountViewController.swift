//
//  UpdateCountViewController.swift
//  DelegatePractice
//
//  Created by Amanda Harman on 7/21/16.
//  Copyright © 2016 Amanda Harman. All rights reserved.

import UIKit

class UpdateCountViewController: UIViewController {
    
    var delegate: IncrementCountDelegate?
    
    @IBAction func updateCountButtonPressed(sender: AnyObject) {
        delegate?.increaseCount()
    }
    
}
