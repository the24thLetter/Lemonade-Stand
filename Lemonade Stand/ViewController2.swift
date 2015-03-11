//
//  ViewController2.swift
//  Lemonade Stand
//
//  Created by Xavier Davis on 3/10/15.
//  Copyright (c) 2015 Xavier Davis. All rights reserved.
//

import Foundation
import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var Customer1View: UIImageView!
    @IBOutlet weak var Customer2View: UIImageView!
    @IBOutlet weak var Customer3View: UIImageView!
    @IBOutlet weak var Customer4View: UIImageView!
    @IBOutlet weak var Customer5View: UIImageView!
    @IBOutlet weak var Customer6View: UIImageView!
    @IBOutlet weak var Customer7View: UIImageView!
    @IBOutlet weak var Customer8View: UIImageView!
    @IBOutlet weak var Customer9View: UIImageView!
    @IBOutlet weak var Customer10View: UIImageView!
    
    //Customer Name Labels
    @IBOutlet weak var Person1Name: UILabel!
    @IBOutlet weak var Person2Name: UILabel!
    @IBOutlet weak var Person3Name: UILabel!
    @IBOutlet weak var Person4Name: UILabel!
    @IBOutlet weak var Person5Name: UILabel!
    @IBOutlet weak var Person6Name: UILabel!
    @IBOutlet weak var Person7Name: UILabel!
    @IBOutlet weak var Person8Name: UILabel!
    @IBOutlet weak var Person9Name: UILabel!
    @IBOutlet weak var Person10Name: UILabel!
    //Customer Pref Labels
    @IBOutlet weak var Person1Pref: UILabel!
    @IBOutlet weak var Person2Pref: UILabel!
    @IBOutlet weak var Person3Pref: UILabel!
    @IBOutlet weak var Person4Pref: UILabel!
    @IBOutlet weak var Person5Pref: UILabel!
    @IBOutlet weak var Person6Pref: UILabel!
    @IBOutlet weak var Person7Pref: UILabel!
    @IBOutlet weak var Person8Pref: UILabel!
    @IBOutlet weak var Person9Pref: UILabel!
    @IBOutlet weak var Person10Pref: UILabel!
    //Customer Paid Labels
    @IBOutlet weak var Person1Paid: UILabel!
    @IBOutlet weak var Person2Paid: UILabel!
    @IBOutlet weak var Person3Paid: UILabel!
    @IBOutlet weak var Person4Paid: UILabel!
    @IBOutlet weak var Person5Paid: UILabel!
    @IBOutlet weak var Person6Paid: UILabel!
    @IBOutlet weak var Person7Paid: UILabel!
    @IBOutlet weak var Person8Paid: UILabel!
    @IBOutlet weak var Person9Paid: UILabel!
    @IBOutlet weak var Person10Paid: UILabel!
    
    //Sumamry Labels
    @IBOutlet weak var SummaryCustomers: UILabel!
    @IBOutlet weak var SummaryRevenue: UILabel!
    @IBOutlet weak var MixMade: UILabel!
    @IBOutlet weak var CustomersServed: UILabel!
    
    var mix: Double = Double()
    var moneyInv: Int = Int()
    var lemonInv: Int = Int()
    var iceInv: Int = Int()
    var revenue: Int = 0
    var totalCustomers: Int = Int()
    var todaymix = String()
    var paidCustomers: Int = Int()
    
    override func viewDidLoad() {
        var dayCustomers: [Customer] = LemonadeStandBrain.createCustomers()
        var index = 0
        for customer in dayCustomers {
            index += 1
            switch index {
            case 1:
                Customer1View.image = customer.image
                Person1Name.text = customer.name
                Person1Pref.text = customer.pref
                if ((customer.pref == "Favors Acidic" && mix > 1) || (customer.pref == "Favors Equal" && mix == 1) || (customer.pref == "Favors Dilluted" && mix < 1)){
                    Person1Paid.text = "+ $1!"
                    Person1Paid.textColor = UIColor.greenColor()
                    revenue += 1
                    paidCustomers += 1
                }
                else {
                    Person1Paid.text = "No Sale"
                    Person1Paid.textColor = UIColor.blackColor()
                }
                Customer1View.hidden = false
                Person1Name.hidden = false
                Person1Pref.hidden = false
                Person1Paid.hidden = false
            case 2:
                Customer2View.image = customer.image
                Person2Name.text = customer.name
                Person2Pref.text = customer.pref
                if ((customer.pref == "Favors Acidic" && mix > 1) || (customer.pref == "Favors Equal" && mix == 1) || (customer.pref == "Favors Dilluted" && mix < 1)){
                    Person2Paid.text = "+ $1!"
                    Person2Paid.textColor = UIColor.greenColor()
                    revenue += 1
                    paidCustomers += 1
                }
                else {
                    Person2Paid.text = "No Sale"
                    Person2Paid.textColor = UIColor.blackColor()
                }
                Customer2View.hidden = false
                Person2Name.hidden = false
                Person2Pref.hidden = false
                Person2Paid.hidden = false
                
            case 3:
                Customer3View.image = customer.image
                Person3Name.text = customer.name
                Person3Pref.text = customer.pref
                if ((customer.pref == "Favors Acidic" && mix > 1) || (customer.pref == "Favors Equal" && mix == 1) || (customer.pref == "Favors Dilluted" && mix < 1)){
                    Person3Paid.text = "+ $1!"
                    Person3Paid.textColor = UIColor.greenColor()
                    revenue += 1
                    paidCustomers += 1
                }
                else {
                    Person3Paid.text = "No Sale"
                    Person3Paid.textColor = UIColor.blackColor()
                }
                Customer3View.hidden = false
                Person3Name.hidden = false
                Person3Pref.hidden = false
                Person3Paid.hidden = false
                
            case 4:
                Customer4View.image = customer.image
                Person4Name.text = customer.name
                Person4Pref.text = customer.pref
                if ((customer.pref == "Favors Acidic" && mix > 1) || (customer.pref == "Favors Equal" && mix == 1) || (customer.pref == "Favors Dilluted" && mix < 1)){
                    Person4Paid.text = "+ $1!"
                    Person4Paid.textColor = UIColor.greenColor()
                    revenue += 1
                    paidCustomers += 1
                }
                else {
                    Person4Paid.text = "No Sale"
                    Person4Paid.textColor = UIColor.blackColor()
                }
                Customer4View.hidden = false
                Person4Name.hidden = false
                Person4Pref.hidden = false
                Person4Paid.hidden = false
                
            case 5:
                Customer5View.image = customer.image
                Person5Name.text = customer.name
                Person5Pref.text = customer.pref
                if ((customer.pref == "Favors Acidic" && mix > 1) || (customer.pref == "Favors Equal" && mix == 1) || (customer.pref == "Favors Dilluted" && mix < 1)){
                    Person5Paid.text = "+ $1!"
                    Person5Paid.textColor = UIColor.greenColor()
                    revenue += 1
                    paidCustomers += 1
                }
                else {
                    Person5Paid.text = "No Sale"
                    Person5Paid.textColor = UIColor.blackColor()
                }
                Customer5View.hidden = false
                Person5Name.hidden = false
                Person5Pref.hidden = false
                Person5Paid.hidden = false
                
            case 6:
                Customer6View.image = customer.image
                Person6Name.text = customer.name
                Person6Pref.text = customer.pref
                if ((customer.pref == "Favors Acidic" && mix > 1) || (customer.pref == "Favors Equal" && mix == 1) || (customer.pref == "Favors Dilluted" && mix < 1)){
                    Person6Paid.text = "+ $1!"
                    Person6Paid.textColor = UIColor.greenColor()
                    revenue += 1
                    paidCustomers += 1
                }
                else {
                    Person6Paid.text = "No Sale"
                    Person6Paid.textColor = UIColor.blackColor()
                }
                Customer6View.hidden = false
                Person6Name.hidden = false
                Person6Pref.hidden = false
                Person6Paid.hidden = false
                
            case 7:
                Customer7View.image = customer.image
                Person7Name.text = customer.name
                Person7Pref.text = customer.pref
                if ((customer.pref == "Favors Acidic" && mix > 1) || (customer.pref == "Favors Equal" && mix == 1) || (customer.pref == "Favors Dilluted" && mix < 1)){
                    Person7Paid.text = "+ $1!"
                    Person7Paid.textColor = UIColor.greenColor()
                    revenue += 1
                    paidCustomers += 1
                }
                else {
                    Person7Paid.text = "No Sale"
                    Person7Paid.textColor = UIColor.blackColor()
                }
                Customer7View.hidden = false
                Person7Name.hidden = false
                Person7Pref.hidden = false
                Person7Paid.hidden = false
                
            case 8:
                Customer8View.image = customer.image
                Person8Name.text = customer.name
                Person8Pref.text = customer.pref
                if ((customer.pref == "Favors Acidic" && mix > 1) || (customer.pref == "Favors Equal" && mix == 1) || (customer.pref == "Favors Dilluted" && mix < 1)){
                    Person8Paid.text = "+ $1!"
                    Person8Paid.textColor = UIColor.greenColor()
                    revenue += 1
                    paidCustomers += 1
                }
                else {
                    Person8Paid.text = "No Sale"
                    Person8Paid.textColor = UIColor.blackColor()
                }
                Customer8View.hidden = false
                Person8Name.hidden = false
                Person8Pref.hidden = false
                Person8Paid.hidden = false
                
            case 9:
                Customer9View.image = customer.image
                Person9Name.text = customer.name
                Person9Pref.text = customer.pref
                if ((customer.pref == "Favors Acidic" && mix > 1) || (customer.pref == "Favors Equal" && mix == 1) || (customer.pref == "Favors Dilluted" && mix < 1)){
                    Person9Paid.text = "+ $1!"
                    Person9Paid.textColor = UIColor.greenColor()
                    revenue += 1
                    paidCustomers += 1
                }
                else {
                    Person9Paid.text = "No Sale"
                    Person9Paid.textColor = UIColor.blackColor()
                }
                Customer9View.hidden = false
                Person9Name.hidden = false
                Person9Pref.hidden = false
                Person9Paid.hidden = false
                
            case 10:
                Customer10View.image = customer.image
                Person10Name.text = customer.name
                Person10Pref.text = customer.pref
                if ((customer.pref == "Favors Acidic" && mix > 1) || (customer.pref == "Favors Equal" && mix == 1) || (customer.pref == "Favors Dilluted" && mix < 1)){
                    Person10Paid.text = "+ $1!"
                    Person10Paid.textColor = UIColor.greenColor()
                    revenue += 1
                    paidCustomers += 1
                }
                else {
                    Person10Paid.text = "No Sale"
                    Person10Paid.textColor = UIColor.blackColor()
                }
                Customer10View.hidden = false
                Person10Name.hidden = false
                Person10Pref.hidden = false
                Person10Paid.hidden = false
                
            default:
                Person10Name.text = "Error"
                Person10Name.hidden = false
            }
        }
        if (mix == 1) {
            todaymix = "Equal Parts"
        }
        else if (mix < 1) {
            todaymix = "Dilluted"
        }
        else if (mix > 1) {
            todaymix = "Acidic"
        }
        
        MixMade.text = "Today's Mix was " + todaymix
        SummaryCustomers.text = "\(dayCustomers.count)" + " Customers Visited"
        SummaryRevenue.text = "$" + "\(revenue)" + " Revenue Made"
        totalCustomers += dayCustomers.count
        CustomersServed.text = "\(paidCustomers)" + " / " + "\(totalCustomers)" + " Served To Date"
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var RetViewController : ViewController = segue.destinationViewController as ViewController
        RetViewController.moneyInv = moneyInv + revenue
        RetViewController.lemonInv = lemonInv
        RetViewController.iceInv = iceInv
        RetViewController.paidCustomers = paidCustomers
        RetViewController.totalCustomers = totalCustomers
        Customer1View.hidden = true
        Person1Name.hidden = true
        Person1Pref.hidden = true
        Person1Paid.hidden = true
        Customer2View.hidden = true
        Person2Name.hidden = true
        Person2Pref.hidden = true
        Person2Paid.hidden = true
        Customer3View.hidden = true
        Person3Name.hidden = true
        Person3Pref.hidden = true
        Person3Paid.hidden = true
        Customer4View.hidden = true
        Person4Name.hidden = true
        Person4Pref.hidden = true
        Person4Paid.hidden = true
        Customer5View.hidden = true
        Person5Name.hidden = true
        Person5Pref.hidden = true
        Person5Paid.hidden = true
        Customer6View.hidden = true
        Person6Name.hidden = true
        Person6Pref.hidden = true
        Person6Paid.hidden = true
        Customer7View.hidden = true
        Person7Name.hidden = true
        Person7Pref.hidden = true
        Person7Paid.hidden = true
        Customer8View.hidden = true
        Person8Name.hidden = true
        Person8Pref.hidden = true
        Person8Paid.hidden = true
        Customer9View.hidden = true
        Person9Name.hidden = true
        Person9Pref.hidden = true
        Person9Paid.hidden = true
        Customer10View.hidden = true
        Person10Name.hidden = true
        Person10Pref.hidden = true
        Person10Paid.hidden = true
    }

}

