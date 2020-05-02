//
//  FourthViewController.swift
//  Segue-Example-1
//
//  Created by Dharma Teja on 02/05/20.
//  Copyright © 2020 Dharma Teja. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

	@IBAction func unwindfourToOne(_ sender: Any)
	{
		performSegue(withIdentifier: "unWindtoOne", sender: self)
	}
	
	override func viewDidLoad() {
        super.viewDidLoad()


	
        // Do any additional setup after loading the view.
    }
	@IBAction func buttonPressed(_ sender: Any)

	{
		performSegue(withIdentifier: "unwindToTwo", sender: self)
		
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
	
}
