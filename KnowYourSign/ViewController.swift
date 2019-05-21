//
//  ViewController.swift
//  KnowYourSign
//
//  Created by Helena on 5/21/19.
//  Copyright © 2019 CS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var birthDateField: UITextField!
    
    var viewModel = UserSignViewModel()
    var datePicker = UIDatePicker()
    var nameLabel : String?
    var birthDateLabel : String?
    var resultsLabel : String?
    var testDate : Date?
    var test = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDate()
        setupTapGesture()
        ZodiacSigns.shared.addSigns()
    }
    
    private func setupDate() {
        datePicker.datePickerMode = .date
        birthDateField.inputView = datePicker
        datePicker.addTarget(self, action: #selector(ViewController.dateChanged), for: .valueChanged)
    }
    
    private func setupTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.viewTapped(gestureRecognizer:)))
        
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func dateChanged(datePicker: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        
        if let selectedDate = dateFormatter.string(from: datePicker.date) as String? {
            birthDateLabel = selectedDate
        }
        testDate = datePicker.date
        resultsLabel = viewModel.getSign(from: testDate!)

        view.endEditing(true)
    }
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
        view.endEditing(true)
        
    }



}

