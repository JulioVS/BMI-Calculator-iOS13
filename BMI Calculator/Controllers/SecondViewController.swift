//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Julio Errecart on 11/1/26.
//  Copyright © 2026 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel()
        
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        
        view.addSubview(label)
        view.backgroundColor = .red
    }
    
}
