//
//  MarksInputVC.swift
//  AkhilaGradeDisplay
//
//  Created by AKHILA SIRIKONDA on 10/14/22.
//

import UIKit

class MarksInputVC: UIViewController {
    
    @IBOutlet weak var marksInput : UITextField!
    var choice = ""
    
   
    @IBAction func okClick(_ sender: Any) {
        print("ok clicked.....!!!")
        if(marksInput.text?.isEmpty == true) {
            print(0)
            UserDefaults.standard.set(0,forKey : choice)
        } else{
            UserDefaults.standard.set(marksInput.text,forKey : choice)
        }
//        self.dismiss(animated: false, completion: nil)
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        marksInput.text = UserDefaults.standard.string(forKey: choice)
        // Do any additional setup after loading the view.
    }
    

}
