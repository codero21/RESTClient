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
        radiusField.resignFirstResponder()
        
    }
    
    @IBAction func onCalculateArea(_ sender: Any) {
        
        let radius: String = radiusField.text!
        
        if radius.isEmpty {
            return
        }
        
        let serviceURL: String = "http://www.asmtechnology.com/MathService/CircleArea/?radius=\(radius)"
        
        let url: URL! = URL(string: serviceURL)
        
        let request: URLRequest = URLRequest(url: url)
        
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = 15.0
        
        let session: URLSession! = URLSession(configuration: configuration, delegate: nil, delegateQueue: OperationQueue.main)
        
        
        let task = session.dataTask(with: request, completionHandler: { (data, respose, error) in
                                if data != nil {
                            let decodedString = String(data: data!,
                                                       encoding: String.Encoding.utf8)
                            self.serverResponseView.text = decodedString!
                        }
                        
                    });
        
        task.resume()
        
    }
    
    
    
    // MARK: Methods
    
    func handleBackgroundTap(sender: UITapGestureRecognizer) {
        radiusField.resignFirstResponder()
    }
    
    
    

    // MARK: Boiler Plate 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // let tapRecognizer = UITapGestureRecognizer(target: self, action: Selector(("handleBackgroundTap:")))
        
        // tapRecognizer.cancelsTouchesInView = false
        
        // self.view.addGestureRecognizer(tapRecognizer)
        
        // clear the initial content of the text view when the ciew is loaded.
        serverResponseView.text = ""
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

