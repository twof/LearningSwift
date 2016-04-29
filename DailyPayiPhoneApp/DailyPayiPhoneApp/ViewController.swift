//
//  ViewController.swift
//  DailyPayiPhoneApp
//
//  Created by fnord on 4/27/16.
//  Copyright © 2016 fnord. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var dailyPayReadout: UITextView!
    @IBOutlet var numDaysField: UITextField!
    @IBOutlet var startingPayField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateDailyPay(sender: AnyObject) {
        var dailyPayList = ""
        var currentPay = Double(startingPayField.text!)
        var totalPayToDate = Double(startingPayField.text!)
        
        for(var i = 0; i < Int(numDaysField.text!); i++){ //Assembles the pay list
            dailyPayList.appendContentsOf("On day \(i+1), daily pay earned was $\(currentPay!) and total pay earned was $\(totalPayToDate!)\n")
            currentPay! *= 2.0
            totalPayToDate! += currentPay!
        }
        
        dailyPayReadout.text = dailyPayList
    }
    
    @IBAction func calculateDailyPayOnReturn(sender: AnyObject) {
        var dailyPayList = ""
        var currentPay = Double(startingPayField.text!)
        var totalPayToDate = Double(startingPayField.text!)
        
        for(var i = 0; i < Int(numDaysField.text!); i++){ //Assembles the pay list
            dailyPayList.appendContentsOf("On day \(i+1), daily pay earned was $\(currentPay!) and total pay earned was $\(totalPayToDate!)\n")
            currentPay! *= 2.0
            totalPayToDate! += currentPay!
        }
        
        dailyPayReadout.text = dailyPayList
    }
}

