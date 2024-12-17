//
//ViewController.swift
//  Created by Mac on 17/12/24.


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mySegmentedControl: UISegmentedControl!
    @IBOutlet weak var firstContainerView: UIView!
    @IBOutlet weak var secondContainerView: UIView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the default selected segment index
        mySegmentedControl.selectedSegmentIndex = 0
        
    }
    @IBAction func handleSegmentChange(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            
            // Show the first container view and hide the second
            firstContainerView.isHidden = false
            secondContainerView.isHidden = true
            
        case 1:
            
            // Show the second container view and hide the first
            firstContainerView.isHidden = true
            secondContainerView.isHidden = false
        
           
        default:
            break
        }
    }
}
