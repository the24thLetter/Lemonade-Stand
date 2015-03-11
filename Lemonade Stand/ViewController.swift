//
//  ViewController.swift
//  Lemonade Stand
//
//  Created by Xavier Davis on 3/7/15.
//  Copyright (c) 2015 Xavier Davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Views
    @IBOutlet var MainView: UIView!
    @IBOutlet weak var InvView: UIView!
    @IBOutlet weak var SupplyView: UIView!
    @IBOutlet weak var LemonadeView: UIView!
    @IBOutlet weak var StartView: UIView!
    
    //Labels
    @IBOutlet weak var InvLemonsLabel: UILabel!
    @IBOutlet weak var InvIceLabel: UILabel!
    @IBOutlet weak var InvMoneyLabel: UILabel!
    @IBOutlet weak var LemonBuyCountLabel: UILabel!
    @IBOutlet weak var IceBuyCountLabel: UILabel!
    @IBOutlet weak var TotalCostLabel: UILabel!
    @IBOutlet weak var LemonLemonadeCountLabel: UILabel!
    @IBOutlet weak var IceLemonadeCountLabel: UILabel!
    
    //Buttons
    @IBOutlet weak var SupLemonsStep: UIStepper!
    @IBOutlet weak var SupIceStep: UIStepper!
    @IBOutlet weak var LemonadeLemonsStep: UIStepper!
    @IBOutlet weak var LemonadeIceStep: UIStepper!
    @IBOutlet weak var StartButton: UIBarButtonItem!
  
    
    var totalCost: Double = 0
    var lemonInv = 1
    var iceInv = 1
    var moneyInv = 10
    var moneyInvInit = 10
    var lemonInvInit = 1
    var iceInvInit = 1
    var paidCustomers: Int = Int()
    var totalCustomers: Int = Int()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        LemonadeIceStep.value = 0
        LemonadeLemonsStep.value = 0
        SupLemonsStep.value = 0
        SupIceStep.value = 0
        moneyInvInit = moneyInv
        lemonInvInit = lemonInv
        iceInvInit = iceInv
        UpdateView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewDidAppear(animated: Bool) {
        if ((moneyInv == 0 && (lemonInv == 0 || iceInv == 0)) || (moneyInv == 1 && lemonInv == 0) || (moneyInv == 2 && lemonInv == 0 && iceInv == 0)) {
            showAlertWithText(header: "You Lose", message: "You ran out of money to proceed after serving " + "\(paidCustomers)" + " Customers. Resetting...")
            moneyInv = 10
            lemonInv = 1
            iceInv = 1
            moneyInvInit = 10
            lemonInvInit = 1
            iceInvInit = 1
            totalCustomers = 0
            paidCustomers = 0
            UpdateView()
        }
    }
    
    func UpdateView() {
        
        InvLemonsLabel.text = "\(lemonInv)"
        InvIceLabel.text = "\(iceInv)"
        InvMoneyLabel.text = "\(moneyInv)"
        LemonBuyCountLabel.text = "\(SupLemonsStep.value)"
        IceBuyCountLabel.text = "\(SupIceStep.value)"
        TotalCostLabel.text = "\(totalCost)"
        LemonLemonadeCountLabel.text = "\(LemonadeLemonsStep.value)"
        IceLemonadeCountLabel.text = "\(LemonadeIceStep.value)"
        if(LemonadeIceStep.value >= 1 && LemonadeLemonsStep.value >= 1) {
            StartButton.enabled = true
        }
        else {
            StartButton.enabled = false
        }
    }
    
    func UpdateCostMixInv() {
        totalCost = SupLemonsStep.value * 2 + SupIceStep.value
        moneyInv = moneyInvInit - Int(totalCost)
        lemonInv = lemonInvInit + Int(SupLemonsStep.value) - Int(LemonadeLemonsStep.value)
        iceInv = iceInvInit + Int(SupIceStep.value) - Int(LemonadeIceStep.value)
    }


    @IBAction func BuyLemons(sender: UIStepper) {
        UpdateCostMixInv()
        if(totalCost > Double(moneyInvInit)) {
            showAlertWithText(message: "Not enough money to buy that many lemons! Resetting to previous value")
            SupLemonsStep.value -= 1
            UpdateCostMixInv()
        }
        else if(lemonInv < 0) {
            showAlertWithText(message: "Oops, you wouldn't have enough lemons for your mix if you did that. Reverting..")
            SupLemonsStep.value += 1
            UpdateCostMixInv()
        }
        UpdateView()
    }
    
    @IBAction func BuyIce(sender: UIStepper) {
        UpdateCostMixInv()
        if(totalCost > Double(moneyInvInit)) {
            showAlertWithText(message: "Not enough money to buy that many ice cubes! Resetting to previous value")
            SupIceStep.value -= 1
            UpdateCostMixInv()
        }
        else if(iceInv < 0) {
            showAlertWithText(message: "Oops, you wouldn't have enough ice for your mix if you did that. Reverting..")
            SupIceStep.value += 1
            UpdateCostMixInv()
        }
        UpdateView()
    }

    @IBAction func AddLemons(sender: UIStepper) {
        UpdateCostMixInv()
        if(lemonInv < 0) {
            showAlertWithText(message: "Not enough lemons for that mix! Resetting to previous value")
            LemonadeLemonsStep.value -= 1
            UpdateCostMixInv()
        }
        UpdateView()
    }
    
    @IBAction func AddIce(sender: UIStepper) {
        UpdateCostMixInv()
        if(iceInv < 0) {
            showAlertWithText(message: "Not enough ice cubes for that mix! Resetting to previous value")
            LemonadeIceStep.value -= 1
            UpdateCostMixInv()
        }
        UpdateView()
    }
    
    
    func showAlertWithText (header: String = "Warning", message: String) {
        
        var alert = UIAlertController(title: header, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var DestViewController : ViewController2 = segue.destinationViewController as ViewController2
        
        DestViewController.mix = LemonadeLemonsStep.value / LemonadeIceStep.value
        DestViewController.moneyInv = moneyInv
        DestViewController.lemonInv = lemonInv
        DestViewController.iceInv = iceInv
        DestViewController.totalCustomers = totalCustomers
        DestViewController.paidCustomers = paidCustomers
    }
    

}

