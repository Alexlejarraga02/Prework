//
//  ViewController.swift
//  HelloWorld
//
//  Created by user245041 on 8/24/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fnTextField: UITextField!
    @IBOutlet weak var lnTextField: UITextField!
    @IBOutlet weak var sTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberOfPets: UILabel!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPets.text = "\(Int(sender.value))"
    }
    
    @IBAction func IntroduceDidTapped(_ sender: UIButton) {
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        let introduction = "My name is \(fnTextField.text!) \(lnTextField.text!) and I attend \(sTextField.text!). I am currently in my \(year!) year and I own \(numberOfPets.text!) pets. It is \(morePetsSwitch.isOn) that I want more pets."
        
        let alertController = UIAlertController(title: "My introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style:.default, handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

