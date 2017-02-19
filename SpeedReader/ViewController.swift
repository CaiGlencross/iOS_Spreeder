//
//  ViewController.swift
//  SpeedReader
//
//  Created by Cai Glencross on 2/18/17.
//  Copyright © 2017 Cai Glencross. All rights reserved.
//

import UIKit
import CoreFoundation

class ViewController: UIViewController {

    @IBOutlet weak var spreedButton: UIButton!
    @IBOutlet weak var PasteTextView: UITextView!
    @IBOutlet weak var SpeedBox: UITextField!
    @IBOutlet weak var ChunkBox: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        PasteTextView?.layer.borderWidth=1
        PasteTextView?.layer.borderColor=UIColor.black.cgColor
        PasteTextView?.layer.cornerRadius=5
        
        spreedButton?.layer.backgroundColor=UIColor.black.cgColor
        spreedButton?.layer.cornerRadius=5
        
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    
        
    }
    
    @IBAction func Spreed(_ sender: Any) {
        var data = SpreedData()
        let stringArr = PasteTextView!.text.characters.split{$0 == " "}.map(String.init)
        print(stringArr)
       let dv = self.storyboard?.instantiateViewController(withIdentifier: "screen") as! SpreedView
        data.words = stringArr
        if let chunk = Int(ChunkBox.text!){
            data.chunk = chunk
        }
        
        if let speed = Int(SpeedBox.text!){
            data.speed = speed
        }
        dv.data=data
        self.present(dv, animated: false, completion: nil)
    }
    
    func dismissKeyboard(){
        self.view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

