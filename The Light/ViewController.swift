//
//  ViewController.swift
//  The Light
//
//  Created by Артём Серебряков on 23.01.2022.
//

import UIKit

class ViewController: UIViewController {
    var color = 0
    override var prefersStatusBarHidden: Bool {
        return true
    }
    // MARK: - Metods
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    fileprivate func updateUI() {
        switch color {
        case 0:
            view.backgroundColor = .white
        case 1:
            view.backgroundColor = .red
        case 2:
            view.backgroundColor = .orange
        case 3:
            view.backgroundColor = .yellow
        case 4:
            view.backgroundColor = .green
        case 5:
            view.backgroundColor = .blue
        case 6:
            view.backgroundColor = .purple
        default:
            view.backgroundColor = .black
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        color += 1
        if color > 7 {
            color = 0
        }
        updateUI()
    }
    
}

