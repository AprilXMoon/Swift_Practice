//
//  ASecondViewController.swift
//  rootVCTest
//
//  Created by HSIN-I LEE on 2020/2/14.
//  Copyright © 2020 HSIN-I LEE. All rights reserved.
//

import UIKit

class ASecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("A Second view controller did appear")
        showBSecondPage()
    }

    private func showBSecondPage() {
        let bSecond = BSecondViewController(nibName: "BSecondViewController", bundle: nil)
        bSecond.modalPresentationStyle = .fullScreen
        present(bSecond, animated: true, completion: nil)
    }
    
    @IBAction func clickShowBSecondPage(_ sender: Any) {
        showBSecondPage()
    }
}
