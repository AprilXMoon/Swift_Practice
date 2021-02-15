//
//  BFirstViewController.swift
//  rootVCTest
//
//  Created by HSIN-I LEE on 2020/2/14.
//  Copyright © 2020 HSIN-I LEE. All rights reserved.
//

import UIKit

class BFirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("B first view controller did appear")
    }


    @IBAction func clickPresentOther(_ sender: Any) {
        let aSecond = ASecondViewController(nibName: "ASecondViewController", bundle: nil)
        aSecond.modalPresentationStyle = .fullScreen
        present(aSecond, animated: true, completion: nil)
    }
    
    
    @IBAction func clickClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
}
