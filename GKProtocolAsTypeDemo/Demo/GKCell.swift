//
//  GKCell.swift
//  Vimic
//
//  Created by Gaurav Keshre on 3/17/15.
//  Copyright (c) 2015 Gaurav Keshre. All rights reserved.
//
import UIKit


class ACell: UITableViewCell, GKProtocol {
    @IBOutlet weak var aLabel: UILabel!
    @IBOutlet weak var bLabel: UILabel!

    func setData(data : String){
        println ("ACell : setData");
        self.aLabel.text = data
    }
    
    //NON- PROTOCOL Method
    func setStatus(#flag: Bool){
        let str: String = flag ? "ON" : "OFF"
        self.bLabel.text = str
    }
}

class BCell: UITableViewCell, GKProtocol {
    @IBOutlet weak var aLabel: UILabel!
    func setData(data : String){
        println ("BCell : setData");
        self.aLabel.text = data
        
    }
}
class CCell: UITableViewCell, GKProtocol {
    @IBOutlet weak var aLabel: UILabel!
    func setData(data : String){
        println ("CCell : setData");
        self.aLabel.text = data
        
    }
}

class DCell: UITableViewCell, GKProtocol {
    @IBOutlet weak var aLabel: UILabel!
    func setData(data : String){
        println ("DCell : setData");
        self.aLabel.text = data
    }
    
}