//
//  RegisterViewController.swift
//  Euro Coins Hunter
//
//  Created by Stanislav Cherkasov on 29.07.2018.
//  Copyright © 2018 Stanislav Cherkasov. All rights reserved.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {
  
  @IBOutlet var userNameTextField: UITextField!
  @IBOutlet var emailTextField: UITextField!
  @IBOutlet var passwordTextField: UITextField!
  @IBOutlet var incorrectDataLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    incorrectDataLabel.isHidden = true
  }
  
  @IBAction func haveAccountYetButton(_ sender: UIButton) {
    dismiss(animated: true, completion: nil)
  }
  
  // MARK: Register new user
  @IBAction func registerButton(_ sender: UIButton) {
    Auth.auth().createUser(withEmail: emailTextField.text!,
                           password: passwordTextField.text!) { (user, error) in
                            
                            if error != nil {
                              print(error.debugDescription)
                              self.incorrectDataLabel.isHidden = false
                            } else {
                              print("Succesfull")
                              self.dismiss(animated: true, completion: nil)
                            }
    }
  }
  
  // dismissing keyboard
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.userNameTextField.resignFirstResponder()
    self.emailTextField.resignFirstResponder()
    self.passwordTextField.resignFirstResponder()
  }
}
