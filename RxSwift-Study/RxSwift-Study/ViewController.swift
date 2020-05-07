//
//  ViewController.swift
//  RxSwift-Study
//
//  Created by sogihyeon on 2020/05/06.
//  Copyright © 2020 statios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let myButton: UIButton = {
        let button = UIButton()
        button.setTitle("Button", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(tappedMyButton), for: .touchUpInside)
        return button
    }()
    
    var array = [1, 2, 3]
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(myButton)
        myButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        myButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        myButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    @objc func tappedMyButton() {
        print(array[currentIndex])
        if currentIndex != array.count - 1 {
            currentIndex += 1
        }
    }


}

