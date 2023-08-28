//
//  ViewController.swift
//  NewProject
//
//  Created by Apple on 18/08/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textFieldOne: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    @IBAction func sendToVC2Presed(_ sender: Any) {
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "NewViewController") as? NewViewController {
            vc.delegate = self
            vc.str = textFieldOne.text ?? ""
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }


}

extension ViewController: NewProtocol{
    
    func changeText(text: String) {
        textFieldOne.text = text
    }

}

