//
//  ViewController.swift
//  Miracle Pill
//
//  Created by Elvis Tapfumanei on 11/24/16.
//  Copyright © 2016 Elmunei. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    @IBOutlet weak var provinceSelector: UIPickerView!
    
    @IBOutlet weak var provincePickerButton: UIButton!
    
    let provinces = ["The Eastern Cape",  "The Free State", "Gauteng", "KwaZulu-Natal", "Limpopo", "Mpumalanga", "The Northern Cape", "North West", "The Western Cape"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        provinceSelector.dataSource = self
        provinceSelector.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func provinceButtonPressed(_ sender: UIButton) {
        provinceSelector.isHidden = false
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return provinces.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return provinces[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        provincePickerButton.setTitle(provinces[row], for: UIControlState.normal)
        provinceSelector.isHidden = true
    }
}

