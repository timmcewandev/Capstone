//
//  intoViewController.swift
//  tK Fan
//
//  Created by sudo on 5/30/17.
//  Copyright © 2017 sudo. All rights reserved.
//

import UIKit

class intoViewController: UIViewController {



    @IBOutlet weak var teamkalib: UntitledView!
        
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)

     self.teamkalib.addUntitledAnimation()
            
            
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(4), execute: {
                
                
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let secondViewController = storyboard.instantiateViewController(withIdentifier: "HelloWorld") as UIViewController
                self.present(secondViewController, animated: true, completion: nil)
                
                
            })
            
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
            }







