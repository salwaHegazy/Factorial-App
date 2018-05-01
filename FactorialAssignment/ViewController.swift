//
//  ViewController.swift
//  FactorialAssignment
//
//  Created by Salwa on 3/29/18.
//  Copyright © 2018 Developers2Be. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {
    
    
    @IBOutlet weak var numberTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var alertLabel: UILabel!
    
    @IBAction func getFactorialButton(_ sender: Any) {
        
        
        getFactorial()    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // how to restrict numberTextField to accept only numbers??*********
    }
  
    /*
     * function to validate user's input and get factorial
     */
    
  func getFactorial(){
        
          if (numberTextField.text?.isEmpty)!{
            
            // display alert msg when text field is empty
            
                alertLabel.text = "please Enter number"
            
          }else{
            
            alertLabel.text = "" // delete previous alert msg
            
            let number =  Int(numberTextField.text!) //number that user entered
            var fact :Int = 1
            let n  : Int = number! + 1
            
            for i in 1..<n {
                
                fact = fact * i
                resultLabel.text = String (fact) // casting the result and display in label
                
            }
            
            
            }
        
            }
    
}

