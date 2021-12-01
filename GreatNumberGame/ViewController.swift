//
//  ViewController.swift
//  GreatNumberGame
//
//  Created by admin on 30/11/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    
    let randomNumber = Int.random(in: 1...100)
  
    @IBAction func textFieldContent(_ sender: UITextField) {
    }
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        
        guessNumber()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        guessNumber()
    }
    func showAlertIncorrect(message : String){
        let alert = UIAlertController(title: "Incorrect", message: message, preferredStyle: .alert)
        alert.view.tintColor = UIColor.black
        alert.view.backgroundColor = UIColor.red
        
        alert.addAction(UIAlertAction(title: "Guess again", style: .cancel, handler: { action in
            print("Incorrect")
        }))
        present(alert, animated: true)
    }
    func showAlertCorrect(){
        let alert = UIAlertController(title: "Correct", message: "\(numberTextField.text!) was correct!!!", preferredStyle: .alert)
        alert.view.tintColor = UIColor.black
        alert.view.backgroundColor = UIColor.green
        alert.addAction(UIAlertAction(title: "Play again", style: .cancel, handler: { action in
            print("Correct")
        }))
        present(alert, animated: true)
    }
    func guessNumber(){
        if let text = numberTextField.text {
            if let textInt = Int(text) {
                
                if(textInt == randomNumber){
                    showAlertCorrect()
                    numberTextField.text = ""
                }
                else{
                    var answer = ""
                    
                    if(textInt > randomNumber){
                        
                        answer = "\(textInt) Is Too High"
                    }
                    else {
                        answer = "\(textInt) Is Too Low"
                    }
                    numberTextField.text = ""
                    showAlertIncorrect(message: answer)
                    
                }
                
            }}}
    
}

