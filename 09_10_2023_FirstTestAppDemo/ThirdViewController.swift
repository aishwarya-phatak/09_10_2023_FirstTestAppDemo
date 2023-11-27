//
//  ThirdViewController.swift
//  09_10_2023_FirstTestAppDemo
//
//  Created by Vishal Jagtap on 23/11/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBOutlet weak var userNameTextField:UITextField!
    @IBOutlet weak var middleNametextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    
    var dataContainer : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        print("View Did Load of TVC Called")
        welcomeLabel.text = dataContainer
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("View Will Appear of TVC Called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("View Did Appear of TVC Called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("View Will Disappear of TVC called")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("View Did Disappear of TVC called")
    }
    
    @IBAction func btnSubmit(_ sender: Any) {
        let retrivedText = userNameTextField.text
        welcomeLabel.text = "Welcome " + retrivedText!
        
        let fourthViewController = (self.storyboard?.instantiateViewController(identifier: "FourthViewController"))! as FourthViewController
        fourthViewController.firstNameContainer = userNameTextField.text
        fourthViewController.middleNameContainer = middleNametextField.text
        fourthViewController.lastNameContainer = lastNameTextField.text
        navigationController?.pushViewController(fourthViewController,animated: true)
        
        //pop view controller 
       // navigationController?.popViewController(animated: true)
    }
}
