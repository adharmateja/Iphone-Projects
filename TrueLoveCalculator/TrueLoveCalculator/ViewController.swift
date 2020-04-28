//
//  ViewController.swift
//  TrueLoveCalculator
//
//  Created by Dharma Teja on 28/04/20.
//  Copyright © 2020 Dharma Teja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var lovebetween: UILabel!
	@IBOutlet weak var percentageLabel: UILabel!
	@IBOutlet weak var girlandboynames: UILabel!
	@IBOutlet weak var femaleName: UITextField!
	@IBOutlet weak var maleName: UITextField!

	@IBOutlet weak var calculatebutton: UIButton!



	var shortString = [] as Array

override func viewDidLoad() {
super.viewDidLoad()
	lovebetween.isHidden = true
	percentageLabel.isHidden = true
	girlandboynames.isHidden = true

}


	func shortenNumber(firstStep:Array<Int>) ->Array<Any>
{
	if firstStep.count > 1
	{
		let  firstNumber:Int = firstStep[0]
		let  last:Int = firstStep[firstStep.count-1]
		let add: Int = firstNumber + last
		var firstnum = 0
		var secondnum = 0
		if add > 10
		{
		  firstnum = add/10
		  secondnum = add%10
		  shortString.append(firstnum)
		  shortString.append(secondnum)
		}
		else
		{
			shortString.append(add)

		}

		print(shortString)
		var temp = [] as Array

		for x in firstStep
		{
			temp.append(x)
		}
		temp.removeFirst()
		temp.removeLast()
		if temp.count != 0
		{
			shortenNumber(firstStep:temp as! Array<Int>)
		}
		return shortString
	}
	else{
		let  firstNumber:Int = firstStep[0]

		shortString.append(firstNumber)
		return shortString
	}


}

func firstStep(maleName:String, femaleName:String) -> Array<Int>
{
let combinedName = "\(maleName) loves \(femaleName)"

let lowerVal = combinedName.lowercased()
let tempVal = lowerVal.replacingOccurrences(of: " ", with: "")
let arr = Array(tempVal)

var tempArraycount = [Int]()
var stringArray = [Character]()
for temp in arr
{

	var count:Int = 0
  if !stringArray.contains(temp)
  {
     for temp1 in arr
      {
        if temp == temp1
         {
         count = count+1
         }
      }
         tempArraycount.append(count)
         stringArray.append(temp)
  }

}
return tempArraycount
}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
// Dispose of any resources that can be recreated.
	}
	@IBAction func calculateLove(_ sender: Any)
	{
		let text_female: String = femaleName.text!
		let text_male: String = maleName.text!

			var finalString:String  = ""
			let FirstStep = (firstStep(maleName:text_male,femaleName:text_female))
			var output = FirstStep
			repeat {
				shortString = [] as Array
				shortString =  shortenNumber(firstStep: output)
				if shortString.count==2
				{
					lovebetween.isHidden = false
					percentageLabel.isHidden = false
					girlandboynames.isHidden = false
					calculatebutton.setTitle("Reset", for: .normal)
					girlandboynames.text = ("\(text_female) & \(text_male)")
					percentageLabel.text = ("\(shortString[0])\(shortString[1])%")
					break
				}
				output = shortString as! [Int]
			}while(shortString.count>2);

	  


	}


	
}


