//
//  VC.swift
//  Product_test
//
//  Created by Student on 9/6/22.
//

import UIKit

class VC: UIViewController {

    @IBOutlet var Result_label: UIView!
    
    
    
    
    var firstNumber: String = ""
    var operation: String = ""
    var secondNumber: String = ""
    var result: Int = 0
    
    @IBOutlet weak var Current_text_field: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.green
        
        Result_label.backgroundColor = UIColor.darkGray
        Result_label.layer.cornerRadius = 50
        Result_label.layer.masksToBounds = true
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Operations(_ sender: UIButton) {
        switch sender.tag{
        case 10:
            print("/")
            operation = "/"
        case 20:
            print("*")
            operation = "*"
        case 30:
            print("-")
            operation = "-"
        case 40:
            print("+")
            operation = "+"
        default:
            print("There is no such operation")
        }
    }
    
    @IBAction func numberActions(_ sender: UIButton) {
        
        switch sender.tag{
        case 0:
            print("0")
            if operation.isEmpty{
                firstNumber += "0"
                Current_text_field.text = firstNumber
            } else{
                secondNumber += "0"
                Current_text_field.text = secondNumber
            }
            
        case 1:
            print("1")
            if operation.isEmpty{
                firstNumber += "1"
                Current_text_field.text = firstNumber
            } else{
                secondNumber += "1"
                Current_text_field.text = secondNumber
            }
        case 2:
            print("2")
            if operation.isEmpty{
                firstNumber += "2"
                Current_text_field.text = firstNumber
            } else{
                secondNumber += "2"
                Current_text_field.text = secondNumber
            }
        case 3:
            print("3")
            if operation.isEmpty{
                firstNumber += "3"
                Current_text_field.text = firstNumber
            } else{
                secondNumber += "3"
                Current_text_field.text = secondNumber
            }
        case 4:
            print("4")
            if operation.isEmpty{
                firstNumber += "4"
                Current_text_field.text = firstNumber
            } else{
                secondNumber += "4"
                Current_text_field.text = secondNumber
            }
        case 5:
            print("5")
            if operation.isEmpty{
                firstNumber += "5"
                Current_text_field.text = firstNumber
            } else{
                secondNumber += "5"
                Current_text_field.text = secondNumber
            }
        case 6:
            print("6")
            if operation.isEmpty{
                firstNumber += "6"
                Current_text_field.text = firstNumber
            } else{
                secondNumber += "6"
                Current_text_field.text = secondNumber
            }
        case 7:
            print("7")
            if operation.isEmpty{
                firstNumber += "7"
                Current_text_field.text = firstNumber
            } else{
                secondNumber += "7"
                Current_text_field.text = secondNumber
            }
        case 8:
            print("8")
            if operation.isEmpty{
                firstNumber += "8"
                Current_text_field.text = firstNumber
            } else{
                secondNumber += "8"
                Current_text_field.text = secondNumber
            }
        case 9:
            print("9")
            if operation.isEmpty{
                firstNumber += "9"
                Current_text_field.text = firstNumber
            } else{
                secondNumber += "9"
                Current_text_field.text = secondNumber
            }
        default:
            print("There is no such number")
        }
    }
    
    
    
    
    @IBAction func Calculate_result(_ sender: UIButton) {
        
        guard let first = Int(firstNumber), let second = Int(secondNumber) else { return }
        
        switch operation{
        case "+":
            result = first + second
        case "-":
            result = first - second
        case "/":
            result = first / second
        case "*":
            result = first * second
        default:
            print("There is no such number and operations")
        }
        Current_text_field.text = "\(result)"
        reset()
        
        func reset(){
        firstNumber = ""
        secondNumber = ""
        result = 0
        operation = ""
        }
    }
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
