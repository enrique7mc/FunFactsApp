//
//  ViewController.swift
//  FunFacts
//
//  Created by admin on 07/07/15.
//  Copyright (c) 2015 enrique7mc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funcFactButton: UIButton!
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func showFunFact() {
        var color = colorWheel.randomColor()
        view.backgroundColor = color
        funcFactButton.tintColor = color
        funFactLabel.text = factBook.randomFact()
    }
}

