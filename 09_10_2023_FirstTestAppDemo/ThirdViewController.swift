//
//  ThirdViewController.swift
//  09_10_2023_FirstTestAppDemo
//
//  Created by Vishal Jagtap on 23/11/23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var userNameTextField: UITextField!
    
    override func viewDidLoad() {
        print("View Did Load of TVC Called")
        super.viewDidLoad()
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
    }
}
