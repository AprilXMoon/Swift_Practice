//
//  AFirstViewController.swift
//  rootVCTest
//
//  Created by HSIN-I LEE on 2020/2/14.
//  Copyright © 2020 HSIN-I LEE. All rights reserved.
//

import UIKit

class AFirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("A first view controller did appear")
        showBFirstPage()
    }

    private func showBFirstPage() {
        let bFirst = BFirstViewController(nibName: "BFirstViewController", bundle: nil)
        bFirst.modalPresentationStyle = .fullScreen
        present(bFirst, animated: true, completion: nil)
    }
    
    @IBAction func clickShowBFirstPage(_ sender: Any) {
        showBFirstPage()
    }
}
