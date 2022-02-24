//
//  ViewController.swift
//  TennisApp
//
//  Created by manju V on 20/02/22.
//  Copyright © 2022 Tcs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var outputTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 
    
    @IBAction func userTappedShowScore(_ sender: Any) {
        outputTextfield.text = ""
        let score = Scores()
        outputTextfield.text = score.FromSequence(sequence: inputTextField.text!)
       
    
    }
    
}

