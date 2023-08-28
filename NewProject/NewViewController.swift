//
//  NewViewController.swift
//  NewProject
//
//  Created by Apple on 18/08/2023.
//

import UIKit

protocol NewProtocol {
    func changeText(text: String)
}

class NewViewController: UIViewController {
    
    var str = ""

    @IBOutlet var textFieldTwo: UITextField!
    //    var value: Int?
    var delegate: NewProtocol? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldTwo.text = str

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendToVC1Pressed(_ sender: UIButton) {
        if self.textFieldTwo.text != nil {
            delegate?.changeText(text: textFieldTwo.text ?? "No data")
            self.navigationController?.popViewController(animated: true)
        }
    }
}
