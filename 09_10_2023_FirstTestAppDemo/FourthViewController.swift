//
//  FourthViewController.swift
//  09_10_2023_FirstTestAppDemo
//
//  Created by Vishal Jagtap on 27/11/23.
//

import UIKit

class FourthViewController: UIViewController {
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var middleNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    
    var firstNameContainer : String?
    var middleNameContainer : String?
    var lastNameContainer : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindData()
    }
    
    func bindData(){
        self.firstNameLabel.text = firstNameContainer
        self.middleNameLabel.text = middleNameContainer
        self.lastNameLabel.text = lastNameContainer
    }
}
