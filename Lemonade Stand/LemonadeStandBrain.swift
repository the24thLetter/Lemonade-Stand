//
//  LemonadeStandBrain.swift
//  Lemonade Stand
//
//  Created by Xavier Davis on 3/7/15.
//  Copyright (c) 2015 Xavier Davis. All rights reserved.
//

import Foundation
import UIKit

class LemonadeStandBrain {
    
    class func createCustomers() -> [Customer] {
        
        let maxCustomers = 10
        var customers: [Customer] = []
        
        var numOfCustomers = Int(arc4random_uniform(UInt32(maxCustomers))) + 1
        for var customer = 1; customer <= numOfCustomers; customer++ {
            customers.append(createCustomer(maxCustomers))
        }
        return customers
    }
    
    class func createCustomer(maxCustomers: Int) -> Customer {
        
        var thisCustomer: Customer
        let favorAcidic = 0.4
        let favorDilluted = 0.6
        var favor: String = "Error"
        var randomNumber = Int(arc4random_uniform(UInt32(maxCustomers))) + 1
        var randomDouble = Double(Float(arc4random()) / Float(UINT32_MAX))
        if (randomDouble < favorAcidic) {
            favor = "Favors Acidic"
        }
        else if (randomDouble >= favorAcidic && randomDouble <= favorDilluted) {
            favor = "Favors Equal"
            }
        else if (randomDouble > favorDilluted){
            favor = "Favors Dilluted"
            }
        
        switch randomNumber {
            case 1:
                thisCustomer = Customer(name: "Israel", image: UIImage(named: "Israel.jpg"), pref: favor)
            case 2:
                thisCustomer = Customer(name: "Xavier", image: UIImage(named: "Xavier.jpg"), pref: favor)
            case 3:
                thisCustomer = Customer(name: "Sarah", image: UIImage(named: "Sarah.jpg"), pref: favor)
            case 4:
                thisCustomer = Customer(name: "Kristin", image: UIImage(named: "Kristin.jpg"), pref: favor)
            case 5:
                thisCustomer = Customer(name: "Marcell", image: UIImage(named: "Marcell.jpg"), pref: favor)
            case 6:
                thisCustomer = Customer(name: "Eric", image: UIImage(named: "Eric.jpg"), pref: favor)
            case 7:
                thisCustomer = Customer(name: "Norma", image: UIImage(named: "Norma.jpg"), pref: favor)
            case 8:
                thisCustomer = Customer(name: "Clarence", image: UIImage(named: "Clarence.jpg"), pref: favor)
            case 9:
                thisCustomer = Customer(name: "Chase", image: UIImage(named: "Chase.jpg"), pref: favor)
            case 10:
                thisCustomer = Customer(name: "Alexis", image: UIImage(named: "Alexis.jpg"), pref: favor)
            default:
                thisCustomer = Customer(name: "Error", image: UIImage(named: "Xavier.jpg"), pref: favor)
    
        }
        return thisCustomer
    }
    
    class func brain() {
        
    }
    
}

