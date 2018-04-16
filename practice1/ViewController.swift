//
//  ViewController.swift
//  practice1
//
//  Created by SWUCOMPUTER on 2018. 4. 17..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet var buttonNewYear: UIButton!
    @IBOutlet var buttonMemorial: UIButton!
    @IBOutlet var buttonIndependence: UIButton!
    @IBOutlet var buttonChristmas: UIButton!
    
    @IBOutlet var pickerView: UIPickerView!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    let yearMonthArray: Array<String> = ["1월 2일", "6월 6일", "8월 15일", "12월 25일"]
    var started: Bool!
    
    @IBAction func buttonStart(_ sender: UIButton) {
        
    }
    
    @IBAction func buttonHolliday(_ sender: UIButton) {
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
            return yearMonthArray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return yearMonthArray[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let index = pickerView.selectedRow(inComponent: 0)
        // Do any additional setup after loading the view, typically from a nib.
        started = false
        //viewHidden.isHidden = true
    }
}

