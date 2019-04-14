//
//  ViewController.swift
//  SimpleDiary
//
//  Created by SWUCOMPUTER on 13/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var dateInfoLabel: UILabel!
    @IBOutlet var pickerDate: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDateView" {
            let destVC = segue.destination as! SubSelectViewController
            var outString: String = "날짜 : "
            outString += self.dateInfoLabel.text!
            destVC.info = outString
        }
    }
    @IBAction func getDateTime() {
        let dateFomatter = DateFormatter()
        dateFomatter.dateStyle = .long
        self.dateInfoLabel.text = dateFomatter.string(from: self.pickerDate.date)
    }
}

