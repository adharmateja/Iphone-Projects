//
//  SecondViewController.swift
//  Segue-Example-1
//
//  Created by Dharma Teja on 02/05/20.
//  Copyright © 2020 Dharma Teja. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

	var delegate: forwardMessageProtocol?
	@IBOutlet weak var svcTextField: UITextField!
	@IBOutlet weak var svcLabel: UILabel!
	var data = ""
	override func viewDidLoad() {
        super.viewDidLoad()

	   svcLabel.text = data

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	@IBAction func unwindToTwo(_ sender: UIStoryboardSegue)
	{
		
	}

	  // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

	@IBAction func buttonForward(_ sender: Any)
   {
	//delegate?.messageForwarding("jkjkjk")
	//dismiss(animated: true, completion: nil)
	}

}
