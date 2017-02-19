//
//  SpreedView.swift
//  SpeedReader
//
//  Created by Cai Glencross on 2/18/17.
//  Copyright © 2017 Cai Glencross. All rights reserved.
//

import UIKit

class SpreedView: ViewController {
    var timer=Timer()
    var data: SpreedData!
    var counter = 0
    @IBOutlet weak var display: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { (timer) in
            self.display.text = self.data.words[self.counter]
            self.counter += 1
            
            if( self.counter >= self.data.words.count) {
                timer.invalidate()
            }
        })
        
        // Do any additional setup after loading the view.
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
