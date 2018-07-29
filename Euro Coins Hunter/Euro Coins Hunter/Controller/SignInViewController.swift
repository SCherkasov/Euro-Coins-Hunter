//
//  SignInViewController.swift
//  Euro Coins Hunter
//
//  Created by Stanislav Cherkasov on 29.07.2018.
//  Copyright © 2018 Stanislav Cherkasov. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignInViewController: UIViewController {
  
  @IBOutlet var incorrectLabel: UILabel!
  @IBOutlet var emailTextField: UITextField!
  @IBOutlet var passwordTextField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    incorrectLabel.isHidden = true
    
  }
  
  @IBAction func goToRegisterButton(_ sender: UIButton) {
    performSegue(withIdentifier: "goToRegister", sender: self)
  }
  
  // MARK: Authorisation user
  @IBAction func signInButon(_ sender: UIButton) {
    Auth.auth().signIn(withEmail: emailTextField.text!,
                       password: passwordTextField.text!) { (user, error) in
                        if error != nil {
                          print(error.debugDescription)
                          self.incorrectLabel.isHidden = false
                        } else {
                          self.performSegue(withIdentifier: "goToTheMainScreen",
                                            sender: self)
                        }
    }
  }
  
  // dismissing keyboard
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.emailTextField.resignFirstResponder()
    self.passwordTextField.resignFirstResponder()
  }
}
