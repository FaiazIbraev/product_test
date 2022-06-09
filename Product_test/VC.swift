//
//  VC.swift
//  Product_test
//
//  Created by Student on 9/6/22.
//

import UIKit

class VC: UIViewController {

    @IBOutlet var Result_label: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.green
        
        Result_label.backgroundColor = UIColor.darkGray
        Result_label.layer.cornerRadius = 50
        Result_label.layer.masksToBounds = true
        
        // Do any additional setup after loading the view.
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
