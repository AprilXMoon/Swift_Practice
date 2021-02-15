//
//  BSecondViewController.swift
//  rootVCTest
//
//  Created by HSIN-I LEE on 2020/2/14.
//  Copyright © 2020 HSIN-I LEE. All rights reserved.
//

import UIKit

class BSecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("B Second view controller did appear")
    }
    
    @IBAction func clickPresentOther(_ sender: Any) {
        if let window = UIApplication.shared.keyWindow {
            let finalpage = FinalViewController(nibName: "FinalViewController", bundle: nil)
            window.rootViewController = finalpage
        }
    }
    
    @IBAction func clickClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
