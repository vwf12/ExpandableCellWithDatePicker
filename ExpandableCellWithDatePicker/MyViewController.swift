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
        present(tableVC, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
