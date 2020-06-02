//
//  ViewController.swift
//  Calc
//
//  Created by LocaJuli on 28/05/2020.
//  Copyright © 2020 LocaJuli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var previousValue = 0
    var currentValue = 0
    
    var plusInProgress = false
    var minusInProgress = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        refresh()
    }
    
    private func refresh() {
        resultLabel.text = "\(currentValue)"
    }
    
    private func refreshResult() {
        resultLabel.text = "\(previousValue)"
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func button1_clicked(_ sender: Any) {
        currentValue = currentValue * 10 + 1
        refresh()
    }
    @IBAction func button2_clicked(_ sender: Any) {
        currentValue = currentValue * 10 + 2
        refresh()
    }
    @IBAction func button3_clicked(_ sender: Any) {
        currentValue = currentValue * 10 + 3
        refresh()
    }
    @IBAction func button4_clicked(_ sender: Any) {

        currentValue = currentValue * 10 + 4
        if minusInProgress && previousValue == 0 {
            currentValue = previousValue - currentValue
        }
        refresh()
    }
    @IBAction func button5_clicked(_ sender: Any) {
        currentValue = currentValue * 10 + 5
        refresh()
    }
    @IBAction func button6_clicked(_ sender: Any) {
        currentValue = currentValue * 10 + 6
        refresh()
    }
    @IBAction func button7_clicked(_ sender: Any) {
        currentValue = currentValue * 10 + 7
        refresh()
    }
    @IBAction func button8_clicked(_ sender: Any) {
        currentValue = currentValue * 10 + 8
        refresh()
    }
    @IBAction func button9_clicked(_ sender: Any) {
        currentValue = currentValue * 10 + 9
        refresh()
    }
    @IBAction func button0_clicked(_ sender: Any) {
        currentValue = currentValue * 10
        refresh()
    }    
    @IBAction func buttonMinus_clicked(_ sender: Any) {
        minusInProgress = true
        plusInProgress = false
        if previousValue == 0 && currentValue != 0{
        previousValue = currentValue
        currentValue = 0
        }
        previousValue = previousValue - currentValue
        currentValue = 0
        refreshResult()
    }
    
    @IBAction func buttonPlus_clicked(_ sender: Any) {
        plusInProgress = true
        minusInProgress = false
        previousValue = currentValue + previousValue
        currentValue = 0
        refreshResult()
    }
    
    @IBAction func buttonMult_clicked(_ sender: Any) {

    }
    
    @IBAction func buttonDivide_clicked(_ sender: Any) {

    }
    
    @IBAction func buttonEval_clicked(_ sender: Any) {
        if plusInProgress {
            currentValue = previousValue + currentValue
        } else if minusInProgress {
            currentValue = previousValue - currentValue
        }
        
        refresh()
    }
    @IBAction func buttonReset_clicked(_ sender: Any) {
        currentValue = 0
        previousValue = 0
        refresh()
    }
    
}

