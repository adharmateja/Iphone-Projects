//
//  ViewController.swift
//  Segue-Example-1
//
//  Created by Dharma Teja on 02/05/20.
//  Copyright © 2020 Dharma Teja. All rights reserved.
//

import UIKit

class ViewController: UIViewController,forwardMessageProtocol
{
	func messageForwarding(_ message: String)
	{
		vc1TextLabel.text = message
		vc1TextField.text = " "
	}


	@IBOutlet weak var vc1TextLabel: UILabel!

	@IBOutlet weak var vc1TextField: UITextField!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		vc1TextLabel.text = "please enter"
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func vcSendButtonPressed(_ sender: UIButton)
	{
		performSegue(withIdentifier: "sendForward", sender: self)
	}

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "sendForward"
		{
			let secondVc = segue.destination as! SecondViewController

			secondVc.data = vc1TextField.text!
			secondVc.delegate = self
		}
	}

	@IBAction func unWindtoOne(_ sender: UIStoryboardSegue)
	{
		
	}

}

