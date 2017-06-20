//
//  tipViewController.swift
//  tip
//
//  Created by Leo on 20/06/2017.
//  Copyright © 2017 Leo. All rights reserved.
//

import UIKit

class tipViewController: UIViewController {
    
   
    let percent = Double("100")
    
    @IBOutlet weak var moneyText: UITextField!
    @IBOutlet weak var tipText: UITextField!
    @IBOutlet weak var resultText: UITextField!
    
    
    @IBAction func resulitBtn(_ sender: UIButton) {
        
       let money = Double(moneyText.text!)
       let tip = Double(tipText.text!)
       
      
        if money != nil && tip != nil {
            
            let result = money! * tip! / percent!
            resultText.text = "\(result)"
            
        }
        
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //2個漸層的顏色
        let color1 = UIColor(red: 1, green: 0, blue: 0.68, alpha: 1)
        let color2 = UIColor(red: 0.7, green: 0, blue: 0.11, alpha: 1)
        
        //漸層的CGLayer
        let gradient = CAGradientLayer()
        gradient.frame = self.view.frame
        gradient.colors = [color1.cgColor, color2.cgColor]
        
        //將漸層加入畫面
        self.view.layer.insertSublayer(gradient, at: 0)


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
