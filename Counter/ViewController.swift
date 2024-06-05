//
//  ViewController.swift
//  Counter
//
//  Created by Анна Перебоева on 01.06.2024.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet private weak var counterLogs: UITextView!
    @IBOutlet private weak var counterReset: UIButton!
    @IBOutlet private weak var minusOne: UIButton!
    @IBOutlet private weak var plusOne: UIButton!
    @IBOutlet private weak var counterButton: UIButton!
    @IBOutlet private weak var clickCounter: UILabel!
    
    
    private var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counterLogs.delegate = self
    }
    
    @IBAction private func buttonDidTap(_ sender: Any) {
        count += 1
        clickCounter.text = "Значение счётчика: \(count)"
        addLogs(change: 1)
    }
    
    @IBAction private func increaseValue(_ sender: Any) {
        count += 1
        clickCounter.text = "Значение счётчика: \(count)"
        addLogs(change: 1)
    }
    
    @IBAction private func decreaseValue(_ sender: Any) {
        if count > 0 {
            count -= 1
            clickCounter.text = "Значение счётчика: \(count)"
            addLogs(change: -1)
        } else {
            addLogs(change: 0)
        }
    }
    
    @IBAction private func counterReset(_ sender: Any) {
        count = 0
        clickCounter.text = "Значение счётчика: \(count)"
        addLogs(change: 0)
    }
    
    private func addLogs(change: Int) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy HH:mm:ss"
        let date = dateFormatter.string(from: Date())
        
        var log = ""
        
        if change == 0 {
            log = "\(date): значение сброшено"
        }
        else {
            log = "\(date): значение изменено на \(change > 0 ? "+\(change)" : "\(change)")"
        }
        
        counterLogs.text += "\n\(log)"
        
    }
    
}

