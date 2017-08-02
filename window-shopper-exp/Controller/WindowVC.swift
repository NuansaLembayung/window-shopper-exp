//
//  ViewController.swift
//  window-shopper-exp
//
//  Created by Nuansa Lembayung on 1/8/17.
//  Copyright © 2017 Inno Ideas. All rights reserved.
//

import UIKit

class WindowVC: UIViewController {

    @IBOutlet weak var hoursLbl: UILabel!
    @IBOutlet weak var unitLbl: UILabel!
    @IBOutlet weak var wageTxt: UITextField!
    @IBOutlet weak var priceTxt: UITextField!
    @IBOutlet weak var calcBtn: UIButton!
    
    var status:Bool = true
    var calculate:Calculate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateBtn(_ sender: Any) {
        if status {
            let hour:Int = Calculate.countHours(wage: Double(wageTxt.text!)!, price: Double(priceTxt.text!)!)
            hoursLbl.text = "\(hour)"
            hoursLbl.isHidden = false
            unitLbl.isHidden = false
            calcBtn.setTitle("Clear Calculator", for: .normal)
            status = !status
        } else {
            hoursLbl.isHidden = true
            unitLbl.isHidden = true
            wageTxt.text = ""
            priceTxt.text = ""
            calcBtn.setTitle("Calculate", for: .normal)
            status = !status
        }
    }
    
}

