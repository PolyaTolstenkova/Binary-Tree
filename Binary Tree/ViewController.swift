//
//  ViewController.swift
//  Binary Tree
//
//  Created by Полина Толстенкова on 02.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var errorLabel: UILabel!
    
    let binarySearchManager = BinarySearchManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputTextField.layer.borderWidth = 1
        inputTextField.layer.cornerRadius = 10
        inputTextField.layer.borderColor = CGColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1)
        
        inputTextField.delegate = self
    }

    @IBAction func saveButtonPressed(_ sender: UIButton) {
        if Int(inputTextField.text!) == nil {
            errorLabel.text = "Input must be a number!"
        }else{
            resultLabel.text = ""
            let answer = binarySearchManager.binarySearch(item: Int(inputTextField.text!)!)
            resultLabel.text = "\(binarySearchManager.result)\n\(answer)"
        }
    }
    
    @IBAction func deleteButtonPressed(_ sender: UIButton) {
        inputTextField.text = ""
        resultLabel.text = "Your result..."
    }
    
}

//MARK: - UITextFieldDelegate

extension ViewController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        inputTextField.endEditing(true)

        return true
    }
}
