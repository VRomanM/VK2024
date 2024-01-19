//
//  LogonViewController.swift
//  VK2024
//
//  Created by Роман Вертячих on 16.12.2023.
//

import UIKit

class LogonViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var loginInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    @IBAction func pressLogin(_ sender: Any) {
        loginToApp()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let hideKeyboardGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        scrollView?.addGestureRecognizer(hideKeyboardGesture)
        
        loginInput.delegate = self
        passwordInput.delegate = self
        
        loginInput.text = "admin"
        passwordInput.text = "1"
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    func loginToApp(){
        guard checkUserData() else {
            showLoginError()
            return
        }
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(identifier: "vkTabBarController")
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
        
    }
    
    func checkUserData() -> Bool {
        guard loginInput.text! == "admin" && passwordInput.text! == "1" else { return false }
        return true
    }
    
    func showLoginError() {
       let alert = UIAlertController(title: "Ошибка", message: "Введены не верные данные пользователя", preferredStyle: .alert)
       let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
       alert.addAction(action)
       present(alert, animated: true, completion: nil)
   }
    
    @objc func keyboardWasShown(notification: Notification) {
        let info = notification.userInfo! as NSDictionary
        let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)
        self.scrollView?.contentInset = contentInsets
        scrollView?.scrollIndicatorInsets = contentInsets
    }
    
    @objc func keyboardWillBeHidden(notification: Notification) {
        let contentInsets = UIEdgeInsets.zero 
        scrollView?.contentInset = contentInsets
    }
    
    @objc func hideKeyboard(){
        self.scrollView?.endEditing(true)
    }
}

extension LogonViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        passwordInput.becomeFirstResponder()
        guard textField == self.passwordInput else {
            return true
        }
        loginToApp()
        return textField.endEditing(true)
    }
    
}
