//
//  AddFeedViewController.swift
//  MyBart
//
//  Created by Rajesh Gundapaneni on 6/6/16.
//  Copyright © 2016 cseio. All rights reserved.
//

import UIKit

class AddFeedViewController: UIViewController {

    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var addressLabel: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func SaveButtonClick() {
        
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
