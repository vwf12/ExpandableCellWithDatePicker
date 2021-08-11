//
//  TestViewController.swift
//  Meeting-Room
//
//  Created by FARIT GATIATULLIN on 10.08.2021.
//

import UIKit

class TestViewController: UIViewController {

    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var shortView: UIView!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBAction func testButton(_ sender: Any) {
        datePicker.isHidden.toggle()
        if datePicker.isHidden {
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveLinear, animations: {
                self.heightConstraint.constant = 44
                        self.view.layoutIfNeeded()
                    }, completion: nil)
            
        } else {
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveLinear, animations: {
                self.heightConstraint.constant = 424
                        self.view.layoutIfNeeded()
                    }, completion: nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
