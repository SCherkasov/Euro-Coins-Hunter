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
  
  override func viewDidLoad() {
    super.viewDidLoad()
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
                            }
                            else {
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
