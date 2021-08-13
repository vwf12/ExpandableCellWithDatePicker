//
//  DateTableCell.swift
//  Meeting-Room
//
//  Created by FARIT GATIATULLIN on 06.08.2021.
//

import UIKit

class DateTableCell: UITableViewCell {
    enum DatePickerAspectRatioСonstants {
        case compact
        case regular
        
        var ratio: CGFloat {
            switch self {
            case .compact:
                return 77 / 75
            case .regular:
                return 76 / 75
            }
        }
    }
    
    enum CellState {
        case collapsed
        case expanded
    }
    
    @IBOutlet weak var fullView: UIView!
    @IBOutlet weak var baseView: UIView!
    @IBOutlet weak var dateLabel: UILabel! {
        didSet {
            if let date = date {
                self.date = date
            } else {
                self.date = Date()
            }
        }
    }
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker! {
        didSet {
            datePicker.isHidden = true
        }
    }
    @IBOutlet weak var stackView: UIStackView!

    @IBAction func setDate(_ sender: UIDatePicker) {
        date = sender.date
        
    }
    
    static let identifier = "DateTableCell"
    static var nib: UINib {
           return UINib(nibName: String(describing: self), bundle: nil)
    }
    var cellState: CellState = .collapsed
    var date: Date?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupDatePickerConstraints()
        let tap = UITapGestureRecognizer(target: self, action: #selector(tapAction))
        self.baseView.addGestureRecognizer(tap)
    }
    
    @objc private func tapAction() {
        if let tableview = superview as? UITableView {
            tableview.beginUpdates()
            self.datePicker.isHidden.toggle()
            tableview.endUpdates()
        }
        }
    
    private func setupDatePickerConstraints() {
        let screenWidth = UIScreen.main.bounds.width
        var aspectRatioMultiplier: CGFloat {
            screenWidth <= 320.0
                ? DatePickerAspectRatioСonstants.compact.ratio
                : DatePickerAspectRatioСonstants.regular.ratio
        }
        datePicker.heightAnchor.constraint(
            equalTo: datePicker.widthAnchor,
            multiplier: aspectRatioMultiplier).isActive = true
    }
}
