//
//  HomeViewController.swift
//  Meeting-Room
//
//  Created by FARIT GATIATULLIN on 05.08.2021.
//

import UIKit

final class MyTableViewController: UITableViewController {
    var date: Date?
    var datePickerVisible = false
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
//        var height: CGFloat = 44
//
//        if indexPath.row == 0 {
//            if datePickerVisible {
//                height = 44 + datePickerHeght
//
//            }
//        }
//        print("Date picker height: \(datePickerHeght)")
//        print("Cell  height: \(height)")
//        return height
//    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
                withIdentifier: "DateTableCell") as? DateTableCell
        else {
            return UITableViewCell()
        }
        datePickerHeght = cell.datePickerHeight
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) as? DateTableCell {
            datePickerVisible.toggle()
            print("\(tableView.rowHeight)")
            print("\(cell.frame.height)")

            cell.datePicker.isHidden.toggle()
            tableView.beginUpdates()
            tableView.endUpdates()
            tableView.deselectRow(at: indexPath, animated: false)
               }
    }
    }
