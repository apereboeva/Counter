//
//  ViewController.swift
//  Counter
//
//  Created by Анна Перебоева on 01.06.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterButton: UIButton!
    @IBOutlet weak var clickCounter: UILabel!
    
    
    var count = 0
 
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonDidTap(_ sender: Any) {
        count += 1
        clickCounter.text = "Значение счетчика: \(count)"
    }
    
}

