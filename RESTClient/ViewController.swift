//
//  ViewController.swift
//  RESTClient
//
//  Created by Rollin Francois on 8/22/17.
//  Copyright © 2017 Francois Technology. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Outlets
    
    @IBOutlet weak var radiusField: UITextField!
    @IBOutlet weak var serverResponseView: UITextView!
    
    
    // MARK: Action Methods
    
    @IBAction func onDismissKeyboard(_ sender: Any) {
    }
    
    @IBAction func onCalculateArea(_ sender: Any) {
    }
    

    // MARK: Boiler Plate 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

