//
//  ViewController.swift
//  AsDeporteTodoList
//
//  Created by Damián Tapia Nava on 18/07/18.
//  Copyright © 2018 asdeporte. All rights reserved.
//

import UIKit

class RootViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let v = UIView(frame:CGRect(x: 100, y: 100, width: 50, height: 50))
        v.backgroundColor = .red
        self.view.addSubview(v)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

