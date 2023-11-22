//
//  SecondViewController.swift
//  09_10_2023_FirstTestAppDemo
//
//  Created by Vishal Jagtap on 22/11/23.
//

import UIKit

class SecondViewController: UIViewController {
    var welcomeLabel : UILabel?
    var btn1 : UIButton?
    var btn2 : UIButton?
    var btn3 : UIButton?
    var btn4 : UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createViewThroughCode()
    }
    
    func createViewThroughCode(){
        welcomeLabel = UILabel(frame: CGRect(x: 50, y: 200, width: 200, height: 40))
        welcomeLabel?.backgroundColor = .clear
        welcomeLabel?.text = "Welcome to Bitcode!"
        self.view.addSubview(welcomeLabel!)
        
        btn1 = UIButton(frame: CGRect(x: 50, y: 280, width: 200, height: 40))
        btn1?.backgroundColor = .lightGray
        btn1?.setTitle("Btn1", for: .normal)
        btn1?.addTarget(self,
                        action: #selector(setColour(sender:)),
                        for: .touchUpInside)
        btn1?.tag = 1
        self.view.addSubview(btn1!)
        
        btn2 = UIButton(frame: CGRect(x: 50, y: 360, width: 200, height: 40))
        btn2?.backgroundColor = .lightGray
        btn2?.setTitle("Btn2", for: .normal)
        btn2?.addTarget(self,
                        action: #selector(setColour(sender:)),
                        for: .touchUpInside)
        btn2?.tag = 2
        self.view.addSubview(btn2!)
        
        btn3 = UIButton(frame: CGRect(x: 50, y: 440, width: 200, height: 40))
        btn3?.backgroundColor = .lightGray
        btn3?.setTitle("Btn3", for: .normal)
        btn3?.addTarget(self,
                        action: #selector(setColour(sender:)),
                        for: .touchUpInside)
        btn3?.tag = 3
        self.view.addSubview(btn3!)
        
        btn4 = UIButton(frame: CGRect(x: 50, y: 520, width: 200, height: 40))
        btn4?.backgroundColor = .lightGray
        btn4?.setTitle("Btn4", for: .normal)
        btn4?.addTarget(self,
                        action: #selector(setColour(sender:)),
                        for: .touchUpInside)
        btn4!.tag = 4
        self.view.addSubview(btn4!)
    }
    
    @objc func setColour(sender : UIButton){
        print(sender.currentTitle!)
        print(sender.tag)
//        if sender.tag == 1{
//            welcomeLabel?.backgroundColor = .red
//        } else if(sender.tag == 2){
//            welcomeLabel?.backgroundColor = .green
//        } else if(sender.tag == 3){
//            welcomeLabel?.backgroundColor = .blue
//        }
        
        switch sender.tag {
        case 1:
            welcomeLabel?.backgroundColor = .red
        case 2 :
            welcomeLabel?.backgroundColor = .brown
        case 3 :
            welcomeLabel?.backgroundColor = .blue
        case 4 :
            welcomeLabel?.backgroundColor = .green
        default:
            welcomeLabel?.backgroundColor = .lightGray
        }
    }
}
