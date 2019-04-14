//
//  SubSelectViewController.swift
//  SimpleDiary
//
//  Created by SWUCOMPUTER on 13/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class SubSelectViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet var weatherInfo: UILabel!
    @IBOutlet var moodInfo: UILabel!
    @IBOutlet var pickerWeatherMood: UIPickerView!
    @IBOutlet var date: UILabel!
    var info: String?
    let weatherArray: Array<String> = ["맑음", "흐림", "비옴", "눈", "우박", "추움", "더움"]
    let moodArray: Array<String> = ["기쁨", "보통", "슬픔", "우울", "화남", "즐거움"]
    override func viewDidLoad() {
        super.viewDidLoad()
        let cotent = info
        // Do any additional setup after loading the view.
        if let contentString = cotent {
            date.text = contentString
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSubView"
        {
            let destVC = segue.destination as! TextfieldViewController
            var dateStr: String = ""
            var weatherStr: String = "날씨 :"
            var moodStr: String = "기분 : "
            
            dateStr += date.text!
            weatherStr += weatherInfo.text!
            moodStr += moodInfo.text!
            
            destVC.dateStr = dateStr
            destVC.wthStr = weatherStr
            destVC.moodStr = moodStr
        }
    }
    @IBAction func getValue() {
        let weather = weatherArray[self.pickerWeatherMood.selectedRow(inComponent: 0)]
        let mood = moodArray[self.pickerWeatherMood.selectedRow(inComponent: 1)]
        
        self.weatherInfo.text = weather
        self.moodInfo.text = mood
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0
        {
          return weatherArray.count
        }
        else
        {
            return moodArray.count
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0
        {
            return weatherArray[row]
        }
        else
        {
            return moodArray[row]
        }
    }
}
