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
  
  let emailImage = UIImage(named: "mail")
  let passwordImage = UIImage(named: "key")
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    incorrectLabel.isHidden = true
    
    emailTextField.delegate = self
    passwordTextField.delegate = self
    
    incorrectLabel.isHidden = true
    
    addImageToLeftOnTextField(textField: emailTextField, image: emailImage!)
    
    emailTextField.backgroundColor = UIColor.clear
    emailTextField.textColor = UIColor.white
    emailTextField.keyboardType = .emailAddress
    emailTextField.attributedPlaceholder = NSAttributedString(string: emailTextField.placeholder!, attributes:
      [NSAttributedStringKey.foregroundColor: UIColor.white])
    
    emailTextField.setBottomBorder()
    
    addImageToLeftOnTextField(textField: passwordTextField,
                              image: passwordImage!)
    
    passwordTextField.backgroundColor = UIColor.clear
    passwordTextField.textColor = UIColor.white
    passwordTextField.keyboardType = .default
    passwordTextField.isSecureTextEntry = true
    passwordTextField.attributedPlaceholder = NSAttributedString(string: passwordTextField.placeholder!, attributes:
      [NSAttributedStringKey.foregroundColor: UIColor.white])
    passwordTextField.setBottomBorder()
    
  }
  
  func addImageToLeftOnTextField(textField: UITextField, image: UIImage) {
    let leftImageView = UIImageView(frame: CGRect(x: 0.0, y: 0.0,
                                                  width: 25.0, height: 16.0))
    leftImageView.image = image
    textField.leftView = leftImageView
    textField.leftViewMode = .always
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

extension UITextField {
  func setBottomBorder() {
    let width = CGFloat(2.0)
    let border = CALayer()
    border.borderColor = UIColor.lightGray.cgColor
    border.borderWidth = width
    
    border.frame = CGRect(x: 0, y: bounds.size.height - width,
                          width: bounds.size.width, height: bounds.size.height)
    self.layer.addSublayer(border)
    self.layer.masksToBounds = true
  }
}

extension SignInViewController: UITextFieldDelegate {
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    if emailTextField.isFirstResponder {
      passwordTextField.becomeFirstResponder()
    } else {
      passwordTextField.resignFirstResponder()
    }
    return false
  }
}
