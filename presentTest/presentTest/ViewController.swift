//
//  ViewController.swift
//  presentTest
//
//  Created by April LEE on 2020/2/23.
//  Copyright © 2020 April LEE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(#file)
        print("------")
        print(#filePath)
        print("------")
        print(#fileID)
        print(#dsohandle)
        print(#column)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        print("viewWillApper")
    }
    

    
    @IBAction func clickShowAlertViewWithFullScreen(_ sender: Any) {
        
        let alertView = UIAlertController(title: "test", message: "Full screen", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)
        alertView.addAction(okAction)
        
        self.present(alertView, animated: true, completion: nil)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "PresentViewController")
               
        controller.modalPresentationStyle = .fullScreen
        alertView.present(controller, animated: true, completion: nil)
        
    }
    
    @IBAction func clickShowAlertViewWithOverFullScreen(_ sender: Any) {
        
        let alertView = UIAlertController(title: "test", message: "Over full screen", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "ok", style: .default, handler: nil)
        alertView.addAction(okAction)
        
        present(alertView, animated: true, completion: nil)
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "PresentViewController")
               
        controller.modalPresentationStyle = .overFullScreen
        alertView.present(controller, animated: true, completion: nil)
    }
    
    
    @IBAction func clickFullscreenButton(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "PresentViewController")
        
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
        
    }
    
    @IBAction func clickOverFullscreenButton(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "PresentViewController")
        
        
        controller.modalPresentationStyle = .overFullScreen
        present(controller, animated: true, completion: nil)
    }
}

