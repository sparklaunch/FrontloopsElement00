//
//  ViewController.swift
//  FrontloopsElement00
//
//  Created by Jinwook Kim on 2021/04/28.
//

import UIKit

let pickerItems: [String] = [
    "Sort by price",
    "Sort by name",
    "Sort by reference"
]

class MainViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var container: UIView!
    @IBOutlet weak var pickerView: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
        self.container.layer.cornerRadius = 10
        self.container.layer.shadowColor = UIColor.darkGray.cgColor
        self.container.layer.shadowOffset = CGSize(width: 3, height: 3)
        self.container.layer.shadowRadius = 15.0
        self.container.layer.shadowOpacity = 0.7
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerItems.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerItems[row]
    }
}
