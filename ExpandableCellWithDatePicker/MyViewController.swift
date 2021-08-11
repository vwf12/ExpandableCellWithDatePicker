//
//  MyViewController.swift
//  Meeting-Room
//
//  Created by FARIT GATIATULLIN on 04.08.2021.
//

import UIKit

class MyViewController: UIViewController {
    @IBAction func test(_ sender: Any) {

        let tableVC = MyTableViewController()
        tableVC.date = self.date
        present(tableVC, animated: true, completion: nil)
    }
    @IBAction func setDate(_ sender: UIDatePicker) {
        self.date = sender.date
    }
    var date = Date()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
