//
//  HomeViewController.swift
//  Meeting-Room
//
//  Created by FARIT GATIATULLIN on 05.08.2021.
//

import UIKit

final class MyTableViewController: UITableViewController {
    var date: Date?
    var datePickerHidden = true
    var datePickerHeght: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(
            DateTableCell.nib,
                    forCellReuseIdentifier: DateTableCell.identifier
        )
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 0)
        tableView.alwaysBounceVertical = false
        tableView.tableFooterView = UIView()
        tableView.separatorColor = UIColor.systemGray
        tableView.allowsSelection = true

    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//
//
//        if indexPath.section == 0 && indexPath.row == 0 {
//            let height: CGFloat = datePickerHidden ? 44.0 : 44.0 + datePickerHeght
//            print("Height in tableview: \(height)")
//            return height
//        }
//
//        return super.tableView(tableView, heightForRowAt: indexPath)
//
//
//    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
                withIdentifier: "DateTableCell") as? DateTableCell
        else {
            return UITableViewCell()
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if let cell = tableView.cellForRow(at: indexPath) as? DateTableCell {
//            datePickerHidden.toggle()
//            print("\(tableView.rowHeight)")
//            print("\(cell.frame.height)")
//
//            cell.datePicker.isHidden.toggle()
//            tableView.beginUpdates()
//            tableView.endUpdates()
//            tableView.deselectRow(at: indexPath, animated: false)
//               }
//        if let cell = tableView.cellForRow(at: indexPath) as? DateTableCell {
//        let pickerIndex = IndexPath(row: 0, section: 0)
//        if pickerIndex == indexPath {
//
//            datePickerHidden.toggle()
////            cell.datePicker.isHidden.toggle()
////            cell.tapAction()
////            UIView.animate(withDuration: 0.3, animations: { () -> Void in
//                self.tableView.beginUpdates()
//                // apple bug fix - some TV lines hide after animation
//                self.tableView.deselectRow(at: indexPath, animated: true)
//                self.tableView.endUpdates()
////            })
//        }
//    }
    }
    }
