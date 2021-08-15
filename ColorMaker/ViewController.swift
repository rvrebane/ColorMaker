//
//  ViewController.swift
//  ColorMaker
//
//  Created by Rein Saetalu on 15.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Outlets
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redControl: UISlider!
    @IBOutlet weak var greenControl: UISlider!
    @IBOutlet weak var blueControl: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    // MARK: Actions
    
    @IBAction func changeColorComponent() {
        
        
        // Make sure the program doesn't crash if the controls aren't connected
        if self.redControl == nil {
            return
        }
        
        let r = CGFloat(redControl.value)
        let g = CGFloat(greenControl.value)
        let b = CGFloat(blueControl.value)
                
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }


}

