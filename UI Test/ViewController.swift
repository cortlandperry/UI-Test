//
//  ViewController.swift
//  UI Test
//
//  Created by Cortland Perry on 10/18/17.
//  Copyright © 2017 Cortland Perry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var textLabel: UILabel!
    
    
    
    @IBAction func sendRight(_ sender: UIButton) {
        textLabel.text = textLabel.text! + textFieldRight.text!;
        textFieldRight.text = "";
    }
    
    @IBAction func sendLeft(_ sender: UIButton) {
        textLabel.text = textLabel.text! + textFieldLeft.text!;
        textFieldLeft.text = "";
    }
    
    @IBAction func clear(_ sender: UIButton) {
        textLabel.text = "";
    }
    
    @IBAction func clearVowels(_ sender: UIButton) {
        let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"];
        textLabel.text = String((textLabel.text)!.characters.filter({!vowels.contains($0)}));
        
        
    }
    
    @IBOutlet weak var textFieldRight: UITextField!
    
    @IBOutlet weak var textFieldLeft: UITextField!
}

