//
//  HistoryViewController.swift
//  simple-calc
//
//  Created by Nick Nordale on 5/3/16.
//  Copyright © 2016 Nick Nordale. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {
    
    @IBOutlet weak var historyLabel: UILabel!
    @IBOutlet weak var historyLabel2: UILabel!
    @IBOutlet weak var historyLabel3: UILabel!
    @IBOutlet weak var historyLabel4: UILabel!
    @IBOutlet weak var historyLabel5: UILabel!
    
    var history = [String]()
    var labels = [UILabel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labels.append(historyLabel)
        labels.append(historyLabel2)
        labels.append(historyLabel3)
        labels.append(historyLabel4)
        labels.append(historyLabel5)
        
        var i = 0
        var last = history.count - 1
        
        while i < 5 && last >= 0 {
            labels[i].text = history[last]
            i += 1
            last -= 1
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
