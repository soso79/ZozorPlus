//
//  ViewController.swift
//  CountOnMe
//
//  Created by Ambroise COLLON on 30/08/2016.
//  Copyright © 2016 Ambroise Collon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    var compute = Compute()



    // MARK: - Outlets

    @IBOutlet weak var textView: UITextView!
    @IBOutlet var numberButtons: [UIButton]!



    var canAddOperator: Bool {
        if let text = textView.text {
            if text.isEmpty || CharacterSet.decimalDigits.contains(text.unicodeScalars.last!) == false {
                let alertVC = UIAlertController(title: "Zéro!", message: "Expression incorrecte !", preferredStyle: .alert)
                alertVC.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                self.present(alertVC, animated: true, completion: nil)
                return false
            }
        }
        return true
    }

    // MARK: - Action


    @IBAction func clearButton(_ sender: Any) {
        self.textView.text = nil
    }



    @IBAction func tappedNumberButton(_ sender: UIButton) {
        guard let text = sender.titleLabel?.text,
            let int = Int(text) else { return }
        addNewNumber(int)
    }

    @IBAction func multiply() {
        if canAddOperator {
            textView.text += " * "
        }
    }
    

    @IBAction func plus() {
        if canAddOperator {
            textView.text += " + "
        }
    }

    @IBAction func minus() {
        if canAddOperator {
            textView.text += " - "
        }
    }


    @IBAction func equal() {
        compute.userInput = textView.text.split(separator: " ").map(String.init)

        let saveTotal = compute.total()
        textView.text = "\(saveTotal)"
    }



    @IBAction func divide() {
        if canAddOperator {
            textView.text += " / "
        }
    }
    // MARK: - Methods

    func addNewNumber(_ newNumber: Int) {
        textView.text += "\(newNumber)"
    }
}
