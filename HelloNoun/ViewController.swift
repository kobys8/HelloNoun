//
//  ViewController.swift
//  HelloNoun
//
//  Created by Koby Samuel on 9/23/15.
//  Copyright © 2015 Koby Samuel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet weak var userOutput: UILabel!

	@IBOutlet weak var userInput: UITextField!
	
	@IBOutlet var typeButtons: UISegmentedControl!
	
	@IBAction func setOutput(sender: AnyObject) {
		//var index: Int
		//for char in (userInput.text?.characters)! {
		//	index++
		//}
		let convertedToString: String = userInput.text!
		//	let stringLengthToIndex: String.Index = index - 3
		if convertedToString.hasSuffix("ing") || convertedToString.hasSuffix("s") || convertedToString.hasSuffix("ed") {
			let alertController = UIAlertController(title: "You Entered a Verb!", message: "Based on the ending of the word you entered, this word is not a noun. Please enter a noun.", preferredStyle: UIAlertControllerStyle.Alert)
			alertController.addAction(UIAlertAction(title:"OK, OK, Sorry!", style:UIAlertActionStyle.Destructive, handler:nil))
			self.presentViewController(alertController, animated: true, completion: nil)
		}
		else if convertedToString.hasSuffix("able") || convertedToString.hasSuffix("ible") || convertedToString.hasSuffix("al") || convertedToString.hasSuffix("ful") || convertedToString.hasSuffix("ic") || convertedToString.hasSuffix("ive") || convertedToString.hasSuffix("less") || convertedToString.hasSuffix("ous")  {
			let alertController = UIAlertController(title: "You Entered an Adjective!", message: "Based on the ending of your word, this word is not a noun. Please enter a noun.", preferredStyle: UIAlertControllerStyle.Alert)
			
			alertController.addAction(UIAlertAction(title:"OK, OK, Sorry!", style:UIAlertActionStyle.Destructive, handler:nil))
			self.presentViewController(alertController, animated: true, completion: nil)
		}
		else {
			userOutput.text = convertedToString
		}
	}
	
/*	func goThisFarBack(numberOfTimesBack: Int, stringHere: String) ->String {
		//var completedSubString: String = stringHere.substringFromIndex(stringHere.endIndex)
		let origStringChars = Array(stringHere.characters)
		var finishedStringChars: [Character] = []
		var loopThroughTimes: Int = 0
		while(loopThroughTimes != numberOfTimesBack) {
			finishedStringChars.append(origStringChars[origStringChars.count - loopThroughTimes])
			//completedSubString += completedSubString.substringFromIndex(stringHere.endIndex - completedSubString.endIndex)
			loopThroughTimes++
		}
		for sizeOfArray in finishedStringChars.count {
			
		}
		//NSLog(completedSubString)
	} */
	
	override func viewDidLoad() {
		super.viewDidLoad()
		userInput.placeholder = "Enter noun here"
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

