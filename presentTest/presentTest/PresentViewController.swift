//
//  PresentViewController.swift
//  presentTest
//
//  Created by HSIN-I LEE on 2020/2/23.
//  Copyright © 2020 April LEE. All rights reserved.
//

import UIKit

class PresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func dismissView(_ sender: Any) {
        dismiss(animated: true , completion: nil)
    }
    

}
