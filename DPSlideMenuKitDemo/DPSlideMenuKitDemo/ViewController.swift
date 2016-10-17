//
//  ViewController.swift
//  DPSlideMenuKitDemo
//
//  Created by Hongli Yu on 8/17/16.
//  Copyright © 2016 Hongli Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var drawerView: UIView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let drawer: DPDrawerViewController? = self.storyboard?.instantiateViewController(withIdentifier: "DPDrawerViewController") as? DPDrawerViewController
    self.addChildViewController(drawer!)
    self.view.addSubview(drawer!.view)

    let homeViewController: DPHomeViewController? = self.storyboard?.instantiateViewController(withIdentifier: "DPHomeViewController") as? DPHomeViewController
    
    let leftMenuViewController: DPLeftMenuViewController = self.storyboard?.instantiateViewController(withIdentifier: "leftmenu") as! DPLeftMenuViewController
    drawer?.reset(leftViewController: leftMenuViewController,
                  centerViewController: homeViewController)
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }

}

