//
//  ViewController.swift
//  day-2-guess-the-flag
//
//  Created by kinnerapriyap on 2019/11/24.
//  Copyright © 2019 kinnerapriyap. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var button1: UIButton!
    
    @IBOutlet var button2: UIButton!
    
    @IBOutlet var button3: UIButton!
    
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    var total = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(showScore))
        
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        askQuestion()
    }

    func askQuestion(action: UIAlertAction! = nil) {
        countries.shuffle()
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button1.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button2.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        button3.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        correctAnswer = Int.random(in: 0...2)
        title = countries[correctAnswer].uppercased() + "  Score: \(score)"
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        var title: String
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 5, options: [],
                       animations: {
                        sender.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)
        })

        if sender.tag == correctAnswer {
            title = "Correct"
            score += 1
        } else {
            title = "Wrong! That is the flag of \(countries[sender.tag].uppercased())"
            score -= 1
        }
        
        total -= 1
        if total == 0 {
            let ac = UIAlertController(title: title, message: "Your final score is \(score).", preferredStyle: .alert)
            present(ac, animated: true)
        } else {
            let ac = UIAlertController(title: title, message: "Your score is \(score).", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
            present(ac, animated: true)
        }
    }
    
    @objc func showScore() {
        let ac = UIAlertController(title: title, message: "Your score is \(score).", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Okay", style: .cancel))
        present(ac, animated: true)
    }
}

