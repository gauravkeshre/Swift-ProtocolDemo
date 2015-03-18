//
//  GKTVC.swift
//  Vimic
//
//  Created by Gaurav Keshre on 3/17/15.
//  Copyright (c) 2015 Gaurav Keshre. All rights reserved.
//

import Foundation
import UIKit
class GKTVC: UITableViewController {

    var arr: NSArray =  ["a", "b", "c", "d"]
    
    func viewDidload(){
        super.viewDidLoad()

        self.tableView.reloadData()
        var frame : CGRect = self.view.bounds
       // frame.size.height = 20
        
        var v : UIView = UIView(frame: frame)
        v.backgroundColor = UIColor.redColor()
        self.tableView.tableHeaderView = v
    }
    
    //MARK: - UITableViewDataSource methods
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 20    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arr.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        var aCell: GKProtocol
        switch indexPath.row{
        case 0: //a
            aCell = tableView.dequeueReusableCellWithIdentifier("ACell", forIndexPath: indexPath) as ACell
            (aCell as ACell).setStatus(flag: indexPath.section % 2 == 0 )
            break
            
        case 1: //b
            aCell = tableView.dequeueReusableCellWithIdentifier("BCell", forIndexPath: indexPath) as BCell
            break
        case 2: //c
            aCell = tableView.dequeueReusableCellWithIdentifier("CCell", forIndexPath: indexPath) as CCell
            break
        case 3: //d
            aCell = tableView.dequeueReusableCellWithIdentifier("DCell", forIndexPath: indexPath) as DCell
 
        default:
        aCell = tableView.dequeueReusableCellWithIdentifier("ACell", forIndexPath: indexPath) as ACell
            
        }
        aCell.setData!(arr[indexPath.row] as String)
        
        return aCell as UITableViewCell
    }
    
        //MARK: - UITableViewDelegate methods
   override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 44
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int)-> UIView{
        let cell : UITableViewCell = tableView.dequeueReusableCellWithIdentifier("Header") as UITableViewCell
        return cell
   
    }
    


}