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
    var sign = 1
    
    var plusInProgress = false
    var minusInProgress = false
    var multInProgress = false
    var divideInProgress = false
    
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
        if minusInProgress && previousValue == 0 {
            currentValue = previousValue - currentValue
        }
        refresh()
        
        /*if currentValue >= 0 {
            currentValue = sign * (currentValue * 10 + 1)
        } else if currentValue < 0 {
        currentValue = sign * (currentValue * 10 - 1)
        } else if minusInProgress && previousValue == 0 {
            currentValue = previousValue - currentValue
        }
        sign = 1*/
    }
    @IBAction func button2_clicked(_ sender: Any) {
        currentValue = currentValue * 10 + 2
        if minusInProgress && previousValue == 0 {
            currentValue = previousValue - currentValue
        }
        refresh()
    }
    @IBAction func button3_clicked(_ sender: Any) {
        currentValue = currentValue * 10 + 3
        if minusInProgress && previousValue == 0 {
            currentValue = previousValue - currentValue
        }
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
        if minusInProgress && previousValue == 0 {
            currentValue = previousValue - currentValue
        }
        refresh()
    }
    @IBAction func button6_clicked(_ sender: Any) {
        currentValue = currentValue * 10 + 6
        if minusInProgress && previousValue == 0 {
            currentValue = previousValue - currentValue
        }
        refresh()
    }
    @IBAction func button7_clicked(_ sender: Any) {
        currentValue = currentValue * 10 + 7
        if minusInProgress && previousValue == 0 {
            currentValue = previousValue - currentValue
        }
        refresh()
    }
    @IBAction func button8_clicked(_ sender: Any) {
        currentValue = currentValue * 10 + 8
        if minusInProgress && previousValue == 0 {
            currentValue = previousValue - currentValue
        }
        refresh()
    }
    @IBAction func button9_clicked(_ sender: Any) {
        currentValue = currentValue * 10 + 9
        if minusInProgress && previousValue == 0 {
            currentValue = previousValue - currentValue
        }
        refresh()
    }
    @IBAction func button0_clicked(_ sender: Any) {
        currentValue = currentValue * 10
        if minusInProgress && previousValue == 0 {
            currentValue = previousValue - currentValue
        }
        refresh()
    }
    @IBAction func buttonNegative_clicked(_ sender: Any) {
        //sign = sign * -1
        currentValue = currentValue * -1
        refresh()
    }
    @IBAction func buttonMinus_clicked(_ sender: Any) {
        if plusInProgress {
            buttonPlus_clicked((Any).self)
            plusInProgress = false
        } else if multInProgress {
            buttonMult_clicked((Any).self)
            multInProgress = false
        } else if divideInProgress {
            buttonDivide_clicked((Any).self)
            divideInProgress = false
        }
        
        minusInProgress = true
        //plusInProgress = false
        //multInProgress = false
        //divideInProgress = false
        
        if previousValue == 0 && currentValue != 0{
        previousValue = currentValue
        currentValue = 0
        }
        previousValue = previousValue - currentValue
        currentValue = 0
        refreshResult()
        
    }
    
    @IBAction func buttonPlus_clicked(_ sender: Any) {
        if minusInProgress {
            buttonMinus_clicked((Any).self)
            minusInProgress = false
        } else if multInProgress {
            buttonMult_clicked((Any).self)
            multInProgress = false
        } else if divideInProgress {
            buttonDivide_clicked((Any).self)
            divideInProgress = false
        }
        plusInProgress = true
        //minusInProgress = false
        //multInProgress = false
        //divideInProgress = false
        previousValue = currentValue + previousValue
        currentValue = 0
        refreshResult()
    }
    
    @IBAction func buttonMult_clicked(_ sender: Any) {
        if plusInProgress {
            buttonPlus_clicked((Any).self)
            plusInProgress = false
        } else if divideInProgress {
            buttonDivide_clicked((Any).self)
            divideInProgress = false
        } else if minusInProgress {
            buttonMinus_clicked((Any).self)
            minusInProgress = false
        } else if multInProgress == false && previousValue == 0 {
            previousValue = currentValue
            currentValue = 0
        } else if multInProgress {
            previousValue = currentValue * previousValue
            currentValue = 0
        }
        multInProgress = true
        refreshResult()
        
    }
    
    @IBAction func buttonDivide_clicked(_ sender: Any) {
        if minusInProgress {
            buttonMinus_clicked((Any).self)
            minusInProgress = false
        } else if multInProgress {
            buttonMult_clicked((Any).self)
            multInProgress = false
        } else if plusInProgress {
            buttonDivide_clicked((Any).self)
            plusInProgress = false
        } else if divideInProgress == false && previousValue == 0 {
            previousValue = currentValue
            currentValue = 0
            refreshResult()
        }
        if divideInProgress && currentValue == 0 {
            resultLabel.text = "Error"
        }
        else if divideInProgress {
            previousValue = previousValue / currentValue
            currentValue = 0
            refreshResult()
        }
        divideInProgress = true
    }
    
    @IBAction func buttonEval_clicked(_ sender: Any) {
        if plusInProgress {
            previousValue = previousValue + currentValue
            currentValue = 0
            plusInProgress = false
        } else if minusInProgress {
            previousValue = previousValue - currentValue
            currentValue = 0
            minusInProgress = false
        } else if multInProgress {
            previousValue = previousValue * currentValue
            currentValue = 0
            multInProgress = false
        } else if divideInProgress {
            previousValue = previousValue / currentValue
            currentValue = 0
            divideInProgress = false
        }
        refreshResult()
    }
    @IBAction func buttonReset_clicked(_ sender: Any) {
        currentValue = 0
        previousValue = 0
        
        plusInProgress = false
        minusInProgress = false
        multInProgress = false
        divideInProgress = false
        
        refresh()
    }
    
}

