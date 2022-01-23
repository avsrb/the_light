//
//  ViewController.swift
//  The Light
//
//  Created by Артём Серебряков on 23.01.2022.
//

import UIKit

class ViewController: UIViewController {
    var isLightOn: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }


    fileprivate func updateUI() {
        view.backgroundColor = isLightOn ? .white : .black
    }
    
    @IBAction func buttonPressed() {
        isLightOn.toggle()
        updateUI()
    }
}
