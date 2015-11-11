//
//  ViewController.swift
//  FoodInWorld
//
//  Created by Diego Gomes on 10/11/2015.
//  Copyright © 2015 Nylon. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate {
    @IBOutlet var image1: UIImageView!
    @IBOutlet var image2: UIImageView!
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var menssage: UILabel!

    
    var data = [[]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

