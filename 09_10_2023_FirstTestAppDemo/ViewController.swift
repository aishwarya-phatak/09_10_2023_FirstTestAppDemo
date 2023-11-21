//
//  ViewController.swift
//  09_10_2023_FirstTestAppDemo
//
//  Created by Vishal Jagtap on 06/11/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("View Did load Called")
        customViewThroughCode()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("View Will Appear Called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("View Did Appear Called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("View Will Disappear called")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("View Did Disappear called")
    }
    
    func customViewThroughCode(){
        let mainContainerFrame = CGRect(x: 50, y: 50, width: self.view.frame.width - 50 , height: 600)
        let mainContainer = UIView(frame: mainContainerFrame)
        mainContainer.backgroundColor = .cyan
//        print(mainContainer.frame.width)
//        print(mainContainer.frame.height)
//
//        print(mainContainer.bounds.width)
//        print(mainContainer.bounds.height)
        
        self.view.addSubview(mainContainer)
        
        let welocmeLabelFrame = CGRect(x: 100, y: 100, width: 200, height: 60)
        
        let welcomeLabel = UILabel(frame: welocmeLabelFrame)
        welcomeLabel.backgroundColor = .lightGray
        welcomeLabel.textColor = .brown
        welcomeLabel.font = UIFont(name: "TimesNewRoman", size: 4.0)
//        print("------------")
//        print(welcomeLabel.frame.width)
//        print(welcomeLabel.frame.height)
//
//        print(welcomeLabel.bounds.width)
//        print(welcomeLabel.bounds.height)
//
        welcomeLabel.text = "Welcome to Bitcode"
//        self.view.addSubview(welcomeLabel)
        mainContainer.addSubview(welcomeLabel)
        let textFieldFrame = CGRect(x: 100, y: 200, width: 200, height: 60)
        
        let textField = UITextField(frame: textFieldFrame)
        textField.backgroundColor = .lightGray
        textField.textColor = .black
        
//        self.view.addSubview(textField)
        mainContainer.addSubview(textField)
        
        let buttonFrame = CGRect(x: 100, y: 300, width: 200, height: 60)
        let btnClick = UIButton(frame: buttonFrame)
        btnClick.setTitle("Click", for: .normal)
        btnClick.backgroundColor = .lightGray
    
//        self.view.addSubview(btnClick)
        mainContainer.addSubview(btnClick)
    }
}
