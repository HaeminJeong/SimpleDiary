//
//  ResultViewController.swift
//  SimpleDiary
//
//  Created by SWUCOMPUTER on 13/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var dateStr: String!
    var wthStr: String!
    var moodStr: String!
    var diaryStr: String!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var weatherLabel: UILabel!
    @IBOutlet var moodLabel: UILabel!
    @IBOutlet var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let contentString = diaryStr {
            textLabel.text = contentString
            dateLabel.text = dateStr
            weatherLabel.text = wthStr
            moodLabel.text = moodStr
        }
    }

}
