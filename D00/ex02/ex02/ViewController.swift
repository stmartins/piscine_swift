//
//  ViewController.swift
//  ex02
//
//  Created by Stephane MARTINS on 5/25/18.
//  Copyright © 2018 Stephane MARTINS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resLabel: UILabel!
    
    
    @IBAction func numBtn(_ sender: UIButton) {
        print("bouton " + String(sender.tag-1))
        resLabel.text = resLabel.text! + String(sender.tag-1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

