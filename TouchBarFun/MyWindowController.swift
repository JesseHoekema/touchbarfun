//
//  MyWindowController.swift
//  TouchBarFun
//
//  Created by Jesse Hoekema on 23/10/2023.
//

import Cocoa

class MyWindowController: NSWindowController {

    @IBOutlet weak var ColorPicker: NSColorPickerTouchBarItem!
    
    override func windowDidLoad() {
        super.windowDidLoad()
    
        ColorPicker.isEnabled = true
        ColorPicker.target = self
        ColorPicker.action = #selector(colorPicked)
    }

 @objc func colorPicked() {
        print(ColorPicker.color)
        self.contentViewController?.view.layer?.backgroundColor = ColorPicker.color.cgColor
    }
    
    
    @IBAction func slider(_ sender: Any) {
        let sliderValue = (sender as AnyObject).slider.doubleValue // Krijg de waarde van de slider
            
            // Bereken de waarde in procenten
        let percentageValue = Int((sliderValue / (sender as AnyObject).slider.maxValue) * 100)
            
            // Druk de waarde af
            print("Waarde in procenten: \(percentageValue)%")
    }
    

    
    @IBAction func ButtonTapped(_ sender: Any) {
        print("Hello World!")
        
        
    }
    
}
