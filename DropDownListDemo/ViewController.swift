//
//  ViewController.swift
//  DropDownListDemo
//
//  Created by Mohamed Kelany on 6/7/18.
//  Copyright © 2018 Mohamed Kelany. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var cityButtons: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func handleSelection(_ sender: UIButton) {
        cityButtons.forEach{(button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
            
        }
    }
    
    enum Citys: String {
        case boston = "Boston"
        case sanFranscisco = "San Francisco"
    }
    @IBAction func cityTapped(_ sender: UIButton) {
        
        guard let title = sender.currentTitle, let city = Citys(rawValue: title) else {
            return
        }
        
        switch city {
        case .boston:
            print("Boston")
        default:
            print("San fran")
        }
    }
    
}

