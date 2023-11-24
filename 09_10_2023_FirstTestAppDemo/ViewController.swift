//
//  ViewController.swift
//  09_10_2023_FirstTestAppDemo
//
//  Created by Vishal Jagtap on 06/11/23.
//

import UIKit

class ViewController: UIViewController {

    var mainContainer : UIView?
    var welcomeLabel : UILabel?
    var userNameTextField : UITextField?
    var btnClick : UIButton?
    var btnSubmit : UIButton?
    var btnSave : UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View Did load of VC Called")
        customViewThroughCode()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("View Will Appear of VC Called")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("View Did Appear of VC Called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("View Will Disappear of VC called")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("View Did Disappear of VC called")
    }
    
    func customViewThroughCode(){
        let mainContainerFrame = CGRect(x: 10, y: 50, width: self.view.frame.width, height: 600)
        mainContainer = UIView(frame: mainContainerFrame)
        mainContainer!.backgroundColor = .cyan
//        print(mainContainer.frame.width)
//        print(mainContainer.frame.height)
//
//        print(mainContainer.bounds.width)
//        print(mainContainer.bounds.height)
        
        self.view.addSubview(mainContainer!)
        
        let welocmeLabelFrame = CGRect(x: 100, y: 100, width: 200, height: 60)
        
        welcomeLabel = UILabel(frame: welocmeLabelFrame)
        welcomeLabel!.backgroundColor = .lightGray
        welcomeLabel!.textColor = .brown
        welcomeLabel!.font = UIFont(name: "TimesNewRoman", size: 4.0)
//        print("------------")
//        print(welcomeLabel.frame.width)
//        print(welcomeLabel.frame.height)
//
//        print(welcomeLabel.bounds.width)
//        print(welcomeLabel.bounds.height)
//
        welcomeLabel!.text = "Welcome to Bitcode"
//        self.view.addSubview(welcomeLabel)
        mainContainer!.addSubview(welcomeLabel!)
        let userNametextFieldFrame = CGRect(x: 100, y: 200, width: 200, height: 60)
        
        userNameTextField = UITextField(frame: userNametextFieldFrame)
        userNameTextField!.backgroundColor = .lightGray
        userNameTextField!.textColor = .black
        
//        self.view.addSubview(textField)
        mainContainer!.addSubview(userNameTextField!)
        
        let buttonFrame = CGRect(x: 100, y: 300, width: 200, height: 60)
        btnClick = UIButton(frame: buttonFrame)
        btnClick!.setTitle("Click", for: .normal)
        btnClick!.backgroundColor = .lightGray
        btnClick!.addTarget(self,
                           action: #selector(displayWelocmeMessage),
                           for: .touchUpInside)
    
//        self.view.addSubview(btnClick)
        mainContainer!.addSubview(btnClick!)
        
        btnSubmit = UIButton(frame: CGRect(x: 100, y: 400, width: 200, height: 60))
        
        btnSubmit?.backgroundColor = .lightGray
        btnSubmit?.setTitle("Submit", for: .normal)
        btnSubmit?.addTarget(self,
                             action: #selector(btnSubmitClicked),
                             for: .touchUpInside)
        mainContainer!.addSubview(btnSubmit!)
        
        
        btnSave = UIButton(frame: CGRect(x: 100, y: 500, width: 200, height: 60))
        btnSave?.backgroundColor = .lightGray
        btnSave?.setTitle("Save", for: .normal)
        btnSave?.addTarget(
            self,
            action: #selector(btnSaveClicked),
            for: .touchUpInside)
        mainContainer!.addSubview(btnSave!)
    }
    
    @objc func displayWelocmeMessage(){
//        print("Hello From Bitcode!")
        let retrivedUserName = userNameTextField?.text
        welcomeLabel?.text = "Welcome " + retrivedUserName!
    }
    
    @objc func btnSubmitClicked(){
        print("Submit CLicked")
        let thirdViewController = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        self.navigationController?.pushViewController(
            thirdViewController,
            animated: true)
    }
    
    @objc func btnSaveClicked(){
        print("Save Clicked")
    }
}
