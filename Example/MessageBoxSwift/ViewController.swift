//
//  ViewController.swift
//  MessageBoxSwift
//
//  Created by jprothwell@gmail.com on 10/11/2018.
//  Copyright (c) 2018 jprothwell@gmail.com. All rights reserved.
//

import UIKit
import MessageBoxSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
    }

    @IBAction func onButton(_ sender: Any) {
        
        MessageBox("消息内容",cancelActionTitle:"no")
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

