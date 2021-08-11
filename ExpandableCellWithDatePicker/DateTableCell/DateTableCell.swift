//
//  DateTableCell.swift
//  Meeting-Room
//
//  Created by FARIT GATIATULLIN on 06.08.2021.
//

import UIKit

class DateTableCell: UITableViewCell {
    @IBOutlet weak var fullView: UIView!
    @IBOutlet weak var baseView: UIView!
    @IBOutlet weak var datePicker: UIDatePicker! {
        didSet {
            datePicker.isHidden = true
        }
    }
    
    @IBOutlet weak var stackView: UIStackView!
    
    var datePickerHeight: CGFloat = 0
    static let identifier = "DateTableCell"
    static var nib: UINib {
           return UINib(nibName: String(describing: self), bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code


        print(datePickerHeight)
//        datePicker.translatesAutoresizingMaskIntoConstraints = false
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
