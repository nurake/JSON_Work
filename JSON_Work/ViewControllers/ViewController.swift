//
//  ViewController.swift
//  JSON_Work
//
//  Created by nurake on 28.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var NextButton: UIButton!
    @IBOutlet weak var StatusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomDogs()
    }

    @IBAction func NextImageButton() {
        randomDogs()
    }
    
}
