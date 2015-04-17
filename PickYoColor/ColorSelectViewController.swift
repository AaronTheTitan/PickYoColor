//
//  ColorSelectViewController.swift
//  PickYoColor
//
//  Created by Aaron Bradley on 4/17/15.
//  Copyright (c) 2015 Aaron Bradley. All rights reserved.
//

import UIKit

protocol ColorSelectViewControllerDelegate {
  func didPickColor(color: UIColor)
}

class ColorSelectViewController: UIViewController {

  var delegate: ColorSelectViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


  @IBAction func blueButtonTapped(button: UIButton) {
    colorButtonTapped(button.backgroundColor!)
  }

  @IBAction func orangeButtonTapped(button: UIButton) {
    colorButtonTapped(button.backgroundColor!)
  }

  @IBAction func yellowButtonTapped(button: UIButton) {
    colorButtonTapped(button.backgroundColor!)
  }

  @IBAction func redButtonTapped(button: UIButton) {
    colorButtonTapped(button.backgroundColor!)
  }

  func colorButtonTapped(colorToSend: UIColor) {
    delegate?.didPickColor(colorToSend)
    navigationController?.popToRootViewControllerAnimated(true)

  }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */



}
