//
//  TextfieldViewController.swift
//  SimpleDiary
//
//  Created by SWUCOMPUTER on 13/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class TextfieldViewController: UIViewController {

    var dateStr: String!
    var wthStr: String!
    var moodStr: String!
    
    @IBOutlet var textInput: UITextField!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var weatherLabel: UILabel!
    @IBOutlet var moodLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let contentString = dateStr
        {
            dateLabel.text = contentString
            weatherLabel.text = wthStr
            moodLabel.text = moodStr
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toTextView"
        {
            let destVC = segue.destination as! ResultViewController
            var dateStr: String = ""
            var weatherStr: String = ""
            var moodStr: String = ""
            let diary: String = textInput.text!
            
            dateStr += dateLabel.text!
            weatherStr += weatherLabel.text!
            moodStr += moodLabel.text!
            
            destVC.dateStr = dateStr
            destVC.wthStr = weatherStr
            destVC.moodStr = moodStr
            destVC.diaryStr = diary
        }
    }

}
