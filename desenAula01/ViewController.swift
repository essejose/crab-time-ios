//
//  ViewController.swift
//  desenAula01
//
//  Created by Usuário Convidado on 28/08/17.
//  Copyright © 2017 Usuário Convidado. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var tfName: UITextField!
    
    @IBOutlet weak var tfEmail: UITextField!
    
    @IBOutlet weak var tfPassword: UITextField!
    
    @IBOutlet weak var Avatar: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tfName.delegate = self;
        
    
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        
        if textField == tfName{
        
            tfEmail.becomeFirstResponder()
        
        }else if textField == tfEmail{
            
            tfPassword.becomeFirstResponder()
            
        }else{
            
            doSignUp()
        }
        
        return true
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if  string.lowercased() != "j"{
        
        return true
        }else{
        return false
        }
        
    }
    
    
    
        func textFieldDidEndEditing(_ textField: UITextField) -> Bool{
        if textField == tfEmail && validateEmail(email: textField.text!){
            
            return false
            
        }else{
            
           return false
        }
    }
    
    
    func validateEmail(email: String) -> Bool{
        return false
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    @IBAction func doSignUp() {
        view.endEditing(true)
        print("Fazendo cadastro")
        
    }

}

