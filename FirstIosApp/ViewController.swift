//
//  ViewController.swift
//  FirstIosApp
//
//  Created by student on 3/15/16.
//  Copyright © 2016 Josh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var monsterImageView: UIImageView!
    
    @IBOutlet weak var tipPercentTextField: UITextField!
    
    @IBOutlet weak var amountTextField: UITextField!
    
    var monsters = ["Astro", "Fluffy", "Munchie", "Squido"]
    
    @IBOutlet weak var tipLabel: UILabel!
    
    var calculatedTip = ""
    
    
    @IBAction func calculateTip(sender: UIButton) {
        var tip = 0.0
        var dAmount = 0.0
        var dPercent = 0.0
        //let allows us to creat immutable variables, here they are amount and percent we are storing atever text is being put into the text fields
        
        //anything that is out into the ui is treated as a string so...
        if let amount = amountTextField.text, percent = tipPercentTextField.text {
            //...we convert them to doubles
            //the ! is there because the ib outlets for amount and percent textfields are weak
            dAmount = Double(amount)!
            dPercent = Double(percent)!
            tip = dAmount * dPercent
        }
        //update label text
        tipLabel.text = "Tip is $\(String(tip))"
        
        calculatedTip = "Tip is $\(String(tip))"
        
        performSegueWithIdentifier("GoToNewView", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "GoToNewView" {
            let newViewController = segue.destinationViewController as? NewViewController
            //in new view controller were setting the vriable tiptoshow = to calclated tip
            newViewController?.tipToShow = calculatedTip
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //creating instance of jokes class keyword let will not allow this object to be changed...for changabe objects use var
        let jokes = Jokes()
        for joke in jokes.jokes{
            print(joke)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeMonster(sender: UISegmentedControl) {
        
        let index = sender.selectedSegmentIndex
        monsterImageView.image = UIImage(named: monsters[index])
        
    }

}

