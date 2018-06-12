//
//  ViewController.swift
//  DatePicker
//
//  Copyright © 2018 MyCompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

   var arrayFruits = [String]()
    
    @IBOutlet weak var labelFruit: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var labelDate: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       arrayFruits = ["Apple","Banana","Orange","Grapes","Watermelon"]
      self.pickerView.dataSource = self
        self.pickerView.delegate = self
 
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func datePickerValueChange(_ sender: Any) {
        let selectedDate = datePicker.date
        print(selectedDate)
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        let strDate = formatter.string(from: selectedDate)
        self.labelDate.text = strDate
    }
    //MARK: - Pickerview method
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayFruits.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayFruits[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.labelFruit.text = arrayFruits[row]
    }
}














