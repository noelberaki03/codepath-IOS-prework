//
//  ViewController.swift
//  IOS-prework
//
//  Created by Noel Beraki on 4/4/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var schoolTextField: UITextField!
    @IBOutlet weak var jobTextField: UITextField!
    @IBOutlet weak var description2: UITextField!
    @IBOutlet weak var usersDescription: UITextField!
    @IBOutlet weak var detailsField: UITextView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var schoolLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameTextField.placeholder = "Enter your name"
        schoolTextField.placeholder = "Enter your school"
        jobTextField.placeholder = "Enter your job"
    }


    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomBGColor = changeColor()
        view.backgroundColor = randomBGColor
    }
   
    
    @IBAction func changeDetailsField(_ sender: UIButton) {
        var name = ""
        if nameTextField.text?.isEmpty == false {
            name = "Hello " + (nameTextField.text ?? "NA") + "!\n"
        }
        else {
            name = "No name entered\n"
        }
        
        var school = ""
        if schoolTextField.text?.isEmpty == false {
            school = "You go to " + (schoolTextField.text ?? "NA") + "\n"
        }
        else {
            school = "No school entered\n"
        }
        
        var job = ""
        if jobTextField.text?.isEmpty == false {
            if schoolTextField.text?.isEmpty == false {
                job = "and you work as a " + (jobTextField.text ?? "NA") + "\n"
            }
            else {
                job = "You work as a " + (jobTextField.text ?? "NA") + "\n"
            }
        }
        else {
            job = "No job entered\n"
        }
        
        detailsField.text = name + school + job
    }

    
    func changeColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        
        let brightness = (0.299 * red + 0.587 * green + 0.114 * blue)
        if brightness < 0.5 {
            nameLabel.textColor = .white
            schoolLabel.textColor = .white
            jobLabel.textColor = .white
        }
        else {
            nameLabel.textColor = .black
            schoolLabel.textColor = .black
            jobLabel.textColor = .black
        }
        
        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
}
