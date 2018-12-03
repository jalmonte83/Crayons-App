//
//  DeatailCrayonViewController.swift
//  Crayons
//
//  Created by Jeffrey Almonte on 12/3/18.
//  Copyright © 2018 Jeffrey Almonte. All rights reserved.
//

import UIKit

class CrayonDeatailViewController: UIViewController {
    
    @IBOutlet weak var crayonName: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var greenSlider: UISlider!
    
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var resetButton: UIButton!

    
    public var crayon: Crayon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
defaultBackgroundColors 

    }
    
    private func defaultValues() {
        redSlider.value = Float(crayon.red/255)
        greenSlider.value = Float(crayon.green/255)
        blueSlider.value = Float(crayon.blue/255)
        alphaStepper.value = 1
        
        updateLabels()
    }
    private func updateLabels() {
        redLabel.text = String(format: "%.1f", redSlider.value)
        greenLabel.text = String(format: "%.1f", greenSlider.value)
        blueLabel.text = String(format: "%.1f", blueSlider.value)
        
    }
    
    let red = CGFlost(redSlider.value)
    let green = CGFloat(greenSlider.value)
    let blue = CGFloat(blueSlider.value)
    let alpha = CGFlost(alphaStepper.value)
    
    let color UIColor
}
@IBAction func sliderChanged(_ slider: UISlider) {
       
    }

@IBAction func stepperChanged(_ stepper: UIStepper) {
    
}

@IBAction func reset
