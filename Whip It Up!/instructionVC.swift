//
//  instructionVC.swift
//  Whip It Up!
//
//  Created by Kory E King on 11/17/16.
//  Copyright © 2016 Kory E King. All rights reserved.
//

import UIKit

class instructionVC: UIViewController {
    
    var instructions : String!

    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var scroll: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if instructions != nil{
            text.text = instructions.stringByReplacingOccurrencesOfString(", and", withString: "\n")
            scroll.contentSize.height = 100
        } else {
            text.textAlignment = .Center
            text.text = "No Instruction Available"
        }
        // Do any additional setup after loading the view.
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
