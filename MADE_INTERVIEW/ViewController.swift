//
//  ViewController.swift
//  MADE_INTERVIEW
//
//  Created by Gaskins, Hannah on 8/23/19.
//  Copyright © 2019 Gaskins, Hannah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let button = UIButton(type: .system)
    let labelViewOne = UILabel(frame: CGRect(x: 45, y: 250, width: 0, height: 0))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.setTitle(NSLocalizedString("button", comment: "action button"), for: .normal)
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title2)
        button.tintColor = .white
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        button.frame = CGRect(x: 150, y: 550, width: 100, height: 50)
        
        labelViewOne.text = NSLocalizedString("Hide Me", comment: "hide")
        labelViewOne.textColor = .black
        labelViewOne.font = UIFont.systemFont(ofSize: 85.0)
        labelViewOne.textAlignment = .center
        labelViewOne.sizeToFit()
        
        self.view.addSubview(labelViewOne)
        self.view.addSubview(button)
    }
    
    @objc func buttonClicked(sender : UIButton) {
        
        if labelViewOne.text == NSLocalizedString("Hide Me", comment: "hide") {
            labelViewOne.text = ""
        } else if labelViewOne.text == "" {
            labelViewOne.text = NSLocalizedString("Hide Me", comment: "hide")
        }
    }
}

