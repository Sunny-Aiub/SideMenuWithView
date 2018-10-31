//
//  ViewController.swift
//  SideMenuWithView
//
//  Created by Md. Mahadhi Hassan Chowdhury on 10/31/18.
//  Copyright © 2018 Md. Mahadhi Hassan Chowdhury. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leadingConstraintHome: NSLayoutConstraint!
    @IBOutlet weak var trailingConstraintHome: NSLayoutConstraint!
    
    @IBOutlet weak var homeView: UIView!
    
    var showMenuFlag : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        homeView.layer.shadowOpacity = 1
        homeView.layer.shadowRadius = 30
        
    }

    override func viewWillAppear(_ animated: Bool) {
        
        leadingConstraintHome.constant = 0
        trailingConstraintHome.constant = 0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func showMenu(_ sender: Any) {
       
        if showMenuFlag {
            leadingConstraintHome.constant = 0
            trailingConstraintHome.constant = 0
            
        } else {
            leadingConstraintHome.constant = self.view.bounds.width/2
            trailingConstraintHome.constant = -(self.view.bounds.width/2)
            
        }
        showMenuFlag = !showMenuFlag
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
    
}

