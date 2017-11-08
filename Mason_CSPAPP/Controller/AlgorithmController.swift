//
//  AlgorithmController.swift
//  Mason_CSPAPP
//
//  Created by Childers, Mason on 10/26/17.
//  Copyright © 2017 Childers, Mason. All rights reserved.
//

import UIKit

public class AlgorithmController: UIViewController {

    override public func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override public func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func setupAlgorithm() -> Void
    {
        var algorithmSteps : [String] = []
        
        let algorithm :String = "These are the instructions ao create a project in Java using Eclipse and Github \n"
        let stepOne :String = "First, create your Java project on Eclipse \n"
        let stepTwo :String = "Second, create your packages inside your Java project \n"
        let stepThree :String = "Third, create your classes inside your packages inside your Java project \n"
        let stepFour :String = "Fourth, create a new repository on Github \n"
        let stepFive :String = "Fifth, commit on Github \n"
        let stepSix :String = "Lastly, publish your repository to Github \n"
        
        algorithmSteps = [stepOne, stepTwo, stepThree, stepFour, stepFive, stepSix]
        
        let attributesDictionary = [ NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithm, attributes: attributesDictionary)
        
        for step in algorithmSteps
        {
            let bullet :String = " "
            let formattedStep :String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range: NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        algorithmText.attributedText = fullAttributedString
    }
    
    private func createParagraphStyle() -> NSParagraphStyle
    {
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        
        return paragraphStyle
    }
    
    @IBOutlet weak var algorithmText: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
