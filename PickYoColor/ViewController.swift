//
//  ViewController.swift
//  PickYoColor
//
//  Created by Aaron Bradley on 4/17/15.
//  Copyright (c) 2015 Aaron Bradley. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ColorSelectViewControllerDelegate {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.


  }

  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(true)
    println("\(view.backgroundColor)")
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  func didPickColor(color: UIColor) {
    view.backgroundColor = color
  }

  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if let colorPickerVC = segue.destinationViewController as? ColorSelectViewController {
      colorPickerVC.delegate = self
    }
  }

}

