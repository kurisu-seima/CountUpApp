//
//  CodeCreateViewController.swift
//  CountUp
//
//  Created by くりすせいま on 2020/09/19.
//  Copyright © 2020 せいま. All rights reserved.
//

import UIKit

class CodeCreateViewController: UIViewController {
    
    var countupLabel: UILabel!
    
    var count = 0 {
        didSet {
            countupLabel.text = String(count)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ラベルを配置
        countupLabel = UILabel(frame: CGRect(x: 62, y: 214, width: 290, height: 20.5))
        countupLabel.backgroundColor = .blue
        countupLabel.text = "0"
        countupLabel.textAlignment = .center
        countupLabel.textColor = .white
        view.addSubview(countupLabel)
        
        //ボタンを配置マイナス　プラス
        
        let minusButton = UIButton(frame: CGRect(x: 127, y: 413, width: 70, height: 70))
        let plusButton = UIButton(frame: CGRect(x: 217, y: 413, width: 70, height: 70))
        
        minusButton.backgroundColor = .red
        plusButton.backgroundColor = .blue
        
        minusButton.setTitle("-", for: .normal)
        plusButton.setTitle("+", for: .normal)
        
        
        view.addSubview(minusButton)
        view.addSubview(plusButton)
        
        minusButton.addTarget(self, action: #selector(minusButtonDidTapped(_:)), for: .touchUpInside)
        plusButton.addTarget(self, action: #selector(plusButtonDidTapped(_:)), for: .touchUpInside)
    }
    
    @objc func plusButtonDidTapped(_ sender: Any) {
        count += 1
    }
    
    @objc func minusButtonDidTapped(_ sender: Any) {
        if count != 0 { //count > 0　でも可
            count -= 1
        }
    }
}
