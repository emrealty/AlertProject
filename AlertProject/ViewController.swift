//
//  ViewController.swift
//  AlertProject
//
//  Created by Emre Altay on 22.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var password2text: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func signupClicked(_ sender: Any) {
        /*
        
        let alert = UIAlertController(title: "Error", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        
        alert.addAction(okButton)
        self.present(alert, animated: true)
      */
    
        if usernameText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Username not found!")
        }
        else if passwordText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Password not found!")
        }
        else if passwordText.text != password2text.text {
            makeAlert(titleInput: "Error", messageInput: "Password do not match!")
        }
        else{
            makeAlert(titleInput: "Success", messageInput: "User OK")
        }
    }
    
    
    func makeAlert(titleInput: String, messageInput: String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        self.present(alert, animated: true)
        
    }
    
    
    
}
    
    
    

