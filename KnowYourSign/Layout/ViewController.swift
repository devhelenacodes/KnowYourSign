//
//  ViewController.swift
//  KnowYourSign
//
//  Created by Helena on 5/21/19.
//  Copyright © 2019 CS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var birthDateField: UITextField!
    @IBOutlet weak var screenPageControl: UIPageControl!
    @IBOutlet weak var myScrollView: UIScrollView!
    @IBOutlet weak var firstCard: CardLayout!
    @IBOutlet weak var secondCard: CardLayout!
    @IBOutlet weak var resultsLabel: UILabel!
    
    fileprivate let viewModel = UserSignViewModel()
    var datePicker = UIDatePicker()
    var nameLabel : String?
    var birthDateLabel : String?
    var resultsStrLabel : String?
    var testDate : Date?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultsLabel.sizeToFit()
        myScrollView.delegate = self

        setupSlideScrollView()
        setupCardFormat(card: firstCard)
        setupCardFormat(card: secondCard)
        setupDate()
        setupTapGesture()
        setupPageControl()
        
        ZodiacSigns.shared.addSigns()
    }

    
    private func setupSlideScrollView() {
        myScrollView.contentSize = CGSize(width: 335 * CGFloat(2), height: 250)
    }
    
    private func setupCardFormat(card: CardLayout) {
        card.backgroundColor = UIColor(red: 0.98, green: 0.98, blue: 0.98, alpha: 1)
        card.layer.cornerRadius = 5
        card.layer.shadowOffset = CGSize(width: 0, height: 5)
        card.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.1).cgColor
        card.layer.shadowOpacity = 1
        card.layer.shadowRadius = 10
            }
    
    private func setupDate() {
        datePicker.datePickerMode = .date
        datePicker.maximumDate = Date()
        birthDateField.inputView = datePicker
        nameField.addTarget(self, action: #selector(ViewController.nameChanged), for: .editingChanged)
        datePicker.addTarget(self, action: #selector(ViewController.dateChanged), for: .valueChanged)
    }
    
    private func setupTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.viewTapped(gestureRecognizer:)))
        
        view.addGestureRecognizer(tapGesture)
    }
    
    private func setupPageControl() {
        screenPageControl.numberOfPages = 2
        screenPageControl.currentPage = 0
    }
    
    @objc func nameChanged() {
        resultsLabel.text =  viewModel.setLabelString(name: nameField.text, sign: resultsStrLabel)
    }
    
    @objc func dateChanged(datePicker: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        
        if let selectedDate = dateFormatter.string(from: datePicker.date) as String? {
            birthDateLabel = selectedDate
            birthDateField.text = birthDateLabel
        }
        testDate = datePicker.date
        resultsStrLabel = viewModel.getSign(from: testDate!)
        resultsLabel.text =  viewModel.setLabelString(name: nameField.text, sign: resultsStrLabel)

        resultsLabel.sizeToFit()
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex = round(scrollView.contentOffset.x/335)
        screenPageControl.currentPage = Int(pageIndex)
    }
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
        view.endEditing(true)
        
    }



}
