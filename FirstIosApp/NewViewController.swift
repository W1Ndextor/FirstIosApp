//
//  NewViewController.swift
//  FirstIosApp
//
//  Created by student on 3/17/16.
//  Copyright © 2016 Josh. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    
    var tipToShow = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tipLabel.text = tipToShow
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
