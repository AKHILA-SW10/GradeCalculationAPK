//
//  GradeVC.swift
//  AkhilaGradeDisplay
//
//  Created by AKHILA SIRIKONDA on 10/14/22.
//

import UIKit

class GradeVC: UIViewController {

    @IBOutlet weak var scoreLbl: UILabel!
    @IBOutlet weak var gradeLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        var assignmentTotal: Int = UserDefaults.standard.integer(forKey: "Assignment1") + UserDefaults.standard.integer(forKey: "Assignment2") + UserDefaults.standard.integer(forKey:"Assignment3") + UserDefaults.standard.integer(forKey:"Assignment4")
        
        var midExamTotal : Double = Double(UserDefaults.standard.integer(forKey: "MidExam"))
        
        var finalExamTotal : Double = Double (UserDefaults.standard.integer(forKey: "FinalExam"))
        
        var projectTotal : Double = Double (UserDefaults.standard.integer(forKey: "Project"))
  
        var assignmentPerc : Double = Double((assignmentTotal * 25)/400)
        var midPerc : Double = (midExamTotal * 0.2)
        var finalExamPerc : Double = (finalExamTotal * 0.25)
        var examPerc : Double = Double(midPerc + finalExamPerc)
        var projPerc : Double = Double((projectTotal * 30)/100) ;
        var score : Double = assignmentPerc + examPerc + projPerc
        
        print(assignmentPerc, midPerc, finalExamPerc, projPerc)
        scoreLbl.self.text = String(score)
        
        if score >= 91 {
            gradeLbl.self.text = "A"
        }else if (score >= 89 && score < 91) {
            gradeLbl.self.text="A-"
        }else if score >= 86.0 && score < 89 {
            gradeLbl.self.text = "B+"
        }else if score >= 82.0 && score < 86 {
            gradeLbl.self.text = "B"
        }else if score >= 79.0 && score < 82 {
            gradeLbl.self.text = "B-"
        }else if score>=76.0 && score < 79 {
            gradeLbl.self.text = "C+"
        }else if score >= 72.0 &&  score < 76 {
            gradeLbl.self.text = "C"
        }else if score >= 70.0 && score <= 71.9 {
            gradeLbl.self.text = "C-"
        }else if score >= 60.0 && score<=69.9 {
            gradeLbl.self.text = "D"
        }else if score < 60.0 {
            gradeLbl.self.text = "F"
        }else{
            gradeLbl.self.text = "NA"
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
