//
//  ViewController.swift
//  HW 2.1
//
//  Created by Яна Варфоломеева on 23.08.2020.
//  Copyright © 2020 Grigorev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var viewColor: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    
    @IBOutlet var redSliderOutlet: UISlider!
    @IBOutlet var greenSliderOutlet: UISlider!
    @IBOutlet var blueSliderOutlet: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewColor.layer.cornerRadius = 15
        
        configureLabel()
        
    }
    // MARK: Label
    
    func configureLabel() {
        redLabel.font = redLabel.font.withSize(12)
        greenLabel.font = greenLabel.font.withSize(12)
        blueLabel.font = blueLabel.font.withSize(12)
        
        redSliderOutlet.value = 0.05
        redSliderOutlet.minimumValue = 0
        redSliderOutlet.maximumValue = 1
        
        greenSliderOutlet.value = 0.27
        greenSliderOutlet.minimumValue = 0
        greenSliderOutlet.maximumValue = 1
        
        blueSliderOutlet.value = 0.49
        blueSliderOutlet.minimumValue = 0
        blueSliderOutlet.maximumValue = 1
        
        redLabel.text = String(redSliderOutlet.value)
        greenLabel.text = String(greenSliderOutlet.value)
        blueLabel.text = String(blueSliderOutlet.value)
        
        
    }
    
    func colorView() {
        viewColor.backgroundColor = UIColor(red: CGFloat(redSliderOutlet.value),
                                            green: CGFloat(greenSliderOutlet.value), blue: CGFloat(blueSliderOutlet.value), alpha: 1)
    }
    @IBAction func redSliderAction() {
        redLabel.text = String(redSliderOutlet.value)
        colorView()
        
    }
    @IBAction func greenSliderAction() {
        greenLabel.text = String(greenSliderOutlet.value)
        colorView()
    }
    @IBAction func blueSliderAction() {
        blueLabel.text = String(blueSliderOutlet.value)
        colorView()
    }
    
}

// 9 часов сидел над этой дз. мозг кипит) нашел способ, как округлить значения у лэйблов до 2х цифр после запятой. но не понял, куда вставить эту функцию. и не смог разобраться, как вьюшке задать не белый цвет, который стандартный, а тот, что будет учитывать начальное расположение бегунков.


