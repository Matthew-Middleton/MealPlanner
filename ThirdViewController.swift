//
//  ThirdViewController.swift
//  test
//
//  Created by Logan Samuels on 11/17/19.
//  Copyright © 2019 AppleInc. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var Recipe1: UILabel!
    
    @IBOutlet weak var Recipe2: UILabel!
    
    @IBOutlet weak var Recipe3: UILabel!
    
    @IBOutlet weak var Recipe4: UILabel!
    
    @IBOutlet weak var Recipe5: UILabel!
    
    
    @IBOutlet weak var Recipe6: UILabel!
    
    @IBOutlet weak var Recipe7: UILabel!
    
    @IBOutlet weak var Recipe8: UILabel!
    
    @IBOutlet weak var Recipe9: UILabel!
    
    @IBOutlet weak var Return: UIButton!
    var recipe1Text = ""
    var recipe2Text = ""
    var recipe3Text = ""
    var recipe4Text = ""
    var recipe5Text = ""
    var recipe6Text = ""
    var recipe7Text = ""
    var recipe8Text = ""
    var recipe9Text = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        if UserDefaults.standard.string(forKey: "recipe1") ?? "" != ""
        {
            Recipe1.text = UserDefaults.standard.string(forKey: "recipe1") ?? ""
        }
        
        if UserDefaults.standard.string(forKey: "recipe2") ?? "" != ""
        {
            Recipe2.text = UserDefaults.standard.string(forKey: "recipe2") ?? ""
        }

        if UserDefaults.standard.string(forKey: "recipe3") ?? "" != ""
        {
            Recipe3.text = UserDefaults.standard.string(forKey: "recipe3") ?? ""
        }
        
        if UserDefaults.standard.string(forKey: "recipe4") ?? "" != ""
        {
            Recipe4.text = UserDefaults.standard.string(forKey: "recipe4") ?? ""
        }
        
        if UserDefaults.standard.string(forKey: "recipe5") ?? "" != ""
        {
            Recipe5.text = UserDefaults.standard.string(forKey: "recipe5") ?? ""
        }

        if UserDefaults.standard.string(forKey: "recipe6") ?? "" != ""
        {
            Recipe6.text = UserDefaults.standard.string(forKey: "recipe6") ?? ""
        }

        if UserDefaults.standard.string(forKey: "recipe7") ?? "" != ""
        {
            Recipe7.text = UserDefaults.standard.string(forKey: "recipe7") ?? ""
        }

        if UserDefaults.standard.string(forKey: "recipe8") ?? "" != ""
        {
            Recipe8.text = UserDefaults.standard.string(forKey: "recipe8") ?? ""
        }

        if UserDefaults.standard.string(forKey: "recipe9") ?? "" != ""
        {
            Recipe9.text = UserDefaults.standard.string(forKey: "recipe9") ?? ""
        }
        // Do any additional setup after loading the view.
        
        //UserDefaults.standard.removePersistentDomain(forName: Bundle.main.bundleIdentifier!)
        
        //UserDefaults.standard.synchronize()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func goBack(_ sendar:Any)
    {
    
        performSegue(withIdentifier: "unwindSegue", sender:self)
    }

}
