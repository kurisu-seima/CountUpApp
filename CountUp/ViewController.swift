//
//  ViewController.swift
//  CountUp
//
//  Created by くりすせいま on 2020/09/19.
//  Copyright © 2020 せいま. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countUpLabel: UILabel!
    
    var count = 0 {
        didSet {
            countUpLabel.text = String(count)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("")
    }

    @IBAction func minusButtonDidTapped(_ sender: Any) {
        if count > 0 {
            count -= 1
        }
    }
    
    @IBAction func plusButtonDidTapped(_ sender: Any) {
        count +=  1
    }
}

