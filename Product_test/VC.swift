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
    var result: Float = 0
    var isResultFound: Bool = false
    
    @IBOutlet weak var Current_text_field: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Result_label.backgroundColor = UIColor.black
        Result_label.layer.cornerRadius = 50
        Result_label.layer.masksToBounds = true
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
        
        if firstNumber != "" && secondNumber != "" && isResultFound{
            reset()
        }
        
        switch sender.tag{
        case 0:
            if operation.isEmpty{
                firstNumber += "0"
                Current_text_field.text = firstNumber
            } else{
                secondNumber += "0"
                Current_text_field.text = secondNumber
            }
            
        case 1:
            if operation.isEmpty{
                firstNumber += "1"
                Current_text_field.text = firstNumber
            } else{
                secondNumber += "1"
                Current_text_field.text = secondNumber
            }
        case 2:
            if operation.isEmpty{
                firstNumber += "2"
                Current_text_field.text = firstNumber
            } else{
                secondNumber += "2"
                Current_text_field.text = secondNumber
            }
        case 3:
            if operation.isEmpty{
                firstNumber += "3"
                Current_text_field.text = firstNumber
            } else{
                secondNumber += "3"
                Current_text_field.text = secondNumber
            }
        case 4:
            if operation.isEmpty{
                firstNumber += "4"
                Current_text_field.text = firstNumber
            } else{
                secondNumber += "4"
                Current_text_field.text = secondNumber
            }
        case 5:
            if operation.isEmpty{
                firstNumber += "5"
                Current_text_field.text = firstNumber
            } else{
                secondNumber += "5"
                Current_text_field.text = secondNumber
            }
        case 6:
            if operation.isEmpty{
                firstNumber += "6"
                Current_text_field.text = firstNumber
            } else{
                secondNumber += "6"
                Current_text_field.text = secondNumber
            }
        case 7:
            if operation.isEmpty{
                firstNumber += "7"
                Current_text_field.text = firstNumber
            } else{
                secondNumber += "7"
                Current_text_field.text = secondNumber
            }
        case 8:
            if operation.isEmpty{
                firstNumber += "8"
                Current_text_field.text = firstNumber
            } else{
                secondNumber += "8"
                Current_text_field.text = secondNumber
            }
        case 9:
            if operation.isEmpty{
                firstNumber += "9"
                Current_text_field.text = firstNumber
            } else{
                secondNumber += "9"
                Current_text_field.text = secondNumber
            }
        case 50:
            if operation.isEmpty{
                firstNumber += "."
                Current_text_field.text = firstNumber
            } else{
                secondNumber += "."
                Current_text_field.text = secondNumber
            }
        default:
            print("There is no such number")
        }
    }
    
    
    
    
    @IBAction func Calculate_result(_ sender: UIButton) {
        
        guard let first = Float(firstNumber), let second = Float(secondNumber) else { return }
        
        switch operation{
        case "+":
            result = Float(first + second)
            firstNumber = "\(result)"
        case "-":
            result = Float(first - second)
            firstNumber = "\(result)"
        case "/":
            result = Float(first / second)
                firstNumber = "\(result)"
        case "*":
            result = Float(first * second)
            firstNumber = "\(result)"
        default:
            print("There is no such number and operations")
        }
        
        isResultFound = true
        
        Current_text_field.text = "\(result)"
    }
    
    
    @IBAction func Reverse_sign(_ sender: UIButton) {
        if isResultFound{
            if result > 0{
                result = -result
            } else {
                result = abs(result)
            }
            Current_text_field.text = "\(result)"
        } else if !isResultFound && !operation.isEmpty{
            if var second = Int(secondNumber){
                if second > 0{
                    second = -second
                    secondNumber = "\(second)"
                } else{
                    second = abs(second)
                    secondNumber = "\(second)"
                }
                Current_text_field.text = secondNumber
            }
        }else{
            if var first = Int(firstNumber){
                if first > 0{
                    first = -first
                    firstNumber = "\(first)"
                } else{
                    first = abs(first)
                    firstNumber = "\(first)"
                }
                Current_text_field.text = firstNumber
        }
    }
    }
    
    func reset(){
    firstNumber = ""
    secondNumber = ""
    result = 0
    operation = ""
    isResultFound = false
    }
    
    @IBAction func clear_button(_ sender: UIButton) {
        reset()
        Current_text_field.text = "0"
}
    
    
    @IBAction func find_percent(_ sender: UIButton) {
        guard let first = Double(firstNumber), let second = Double(secondNumber) else { return }
        
        switch operation{
        case "+":
            result = Float(first + (first / 100 * second))
        case "-":
            result = Float(first - (first / 100 * second))
        case "/":
            result = Float(first / (first / 100 * second))
        case "*":
            result = Float(first * (first / 100 * second))
        default:
            print("There is no such number and operations")
        }
        isResultFound = true
        Current_text_field.text = "\(result)"
    }
}
