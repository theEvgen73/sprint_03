//
//  ViewController.swift
//  Counter
//
//  Created by Евгений Папроцкий on 19.05.2026.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var counterLabel: UILabel!
    
    private var counter = 0 {
        didSet {
            counterLabel.text = "Значение счетчика: \(counter)"
        }
    }
    
    @IBAction func incrementButtonTapped(_ sender: Any) {
        counter += 1
    }
    @IBAction func subtractionButtonTapped(_ sender: Any) {
        guard counter > 0 else{
            return
        }
        counter -= 1

    }
    
    @IBAction func resetButtonTapped(_ sender: Any) {
        counter = 0
    }
    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd:MM:yyyy HH:mm:ss"
        return formatter
    }()
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counter = 0
    }


}

