//
//  SecondViewController.swift
//  test
//
//  Created by Logan Samuels on 11/15/19.
//  Copyright © 2019 AppleInc. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    //MARK: Properties
    var nameText = ""
    @IBOutlet weak var addRecipeLabel: UILabel!
    @IBOutlet weak var nameRecipeField: UITextField!
    @IBOutlet weak var Ingredient1: UITextField!
    @IBOutlet weak var quantity1: UITextField!
    
    @IBOutlet weak var Ingredient2: UITextField!
    @IBOutlet weak var quantity2: UITextField!
    
    @IBOutlet weak var Ingredient3: UITextField!
    @IBOutlet weak var quantity3: UITextField!
    
    @IBOutlet weak var Ingredient4: UITextField!
    @IBOutlet weak var quantity4: UITextField!
    
    @IBOutlet weak var Ingredient5: UITextField!
    @IBOutlet weak var quantity5: UITextField!
    
    @IBOutlet weak var Ingredient6: UITextField!
    @IBOutlet weak var quantity6: UITextField!
    
    @IBOutlet weak var Ingredient7: UITextField!
    @IBOutlet weak var quantity7: UITextField!
    
    @IBOutlet weak var Ingredient8: UITextField!
    @IBOutlet weak var quantity8: UITextField!
    
    @IBAction func submitButton(_ sender: Any) {
       
        self.nameText = nameRecipeField.text!
        performSegue(withIdentifier: "recipeSegue", sender:self)

    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameRecipeField.delegate = self
        Ingredient1.delegate = self
        quantity1.delegate = self
        
        Ingredient2.delegate = self
        quantity2.delegate = self
        
        Ingredient3.delegate = self
        quantity3.delegate = self
        
        Ingredient4.delegate = self
        quantity4.delegate = self
        
        Ingredient5.delegate = self
        quantity5.delegate = self
        
        Ingredient6.delegate = self
        quantity6.delegate = self
        
        Ingredient7.delegate = self
        quantity7.delegate = self
        
        Ingredient8.delegate = self
        quantity8.delegate = self
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    //MARK: UITextFieldDelegate
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        var vc = segue.destination as! ThirdViewController
        if UserDefaults.standard.string(forKey: "recipe1") ?? "" == ""
        {
        UserDefaults.standard.set(self.nameRecipeField.text!, forKey: "recipe1")
            if UserDefaults.standard.string(forKey: "ingredient1") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient1.text!, forKey: "ingredient1")
            }
            
            if UserDefaults.standard.string(forKey: "quantity1") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity1.text!, forKey: "quantity1")
            }
            
            if UserDefaults.standard.string(forKey: "ingredient2") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient2.text!, forKey: "ingredient2")
            }
            
            if UserDefaults.standard.string(forKey: "quantity2") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity2.text!, forKey: "quantity2")
            }
            if UserDefaults.standard.string(forKey: "ingredient3") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient3.text!, forKey: "ingredient3")
            }
            
            if UserDefaults.standard.string(forKey: "quantity3") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity3.text!, forKey: "quantity3")
            }
            
            if UserDefaults.standard.string(forKey: "ingredient4") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient4.text!, forKey: "ingredient4")
            }
            
            if UserDefaults.standard.string(forKey: "quantity4") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity4.text!, forKey: "quantity4")
            }
            
            if UserDefaults.standard.string(forKey: "ingredient5") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient5.text!, forKey: "ingredient5")
            }
            
            if UserDefaults.standard.string(forKey: "quantity5") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity5.text!, forKey: "quantity5")
            }
            
            if UserDefaults.standard.string(forKey: "ingredient6") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient6.text!, forKey: "ingredient6")
            }
            
            if UserDefaults.standard.string(forKey: "quantity6") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity6.text!, forKey: "quantity6")
            }
            if UserDefaults.standard.string(forKey: "ingredient7") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient7.text!, forKey: "ingredient7")
            }
            
            if UserDefaults.standard.string(forKey: "quantity7") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity7.text!, forKey: "quantity7")
            }
            
            if UserDefaults.standard.string(forKey: "ingredient8") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient8.text!, forKey: "ingredient8")
            }
            
            if UserDefaults.standard.string(forKey: "quantity8") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity8.text!, forKey: "quantity8")
            }
            
            
        }
        
        else if UserDefaults.standard.string(forKey: "recipe2") ?? "" == ""
        {
            UserDefaults.standard.set(self.nameRecipeField.text!, forKey: "recipe2")
            
            if UserDefaults.standard.string(forKey: "ingredient1a") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient1.text!, forKey: "ingredient1a")
            }
            
            if UserDefaults.standard.string(forKey: "quantity1a") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity1.text!, forKey: "quantity1a")
            }
            
            if UserDefaults.standard.string(forKey: "ingredient2a") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient2.text!, forKey: "ingredient2a")
            }
            
            if UserDefaults.standard.string(forKey: "quantity2a") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity2.text!, forKey: "quantity2a")
            }
            if UserDefaults.standard.string(forKey: "ingredient3a") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient3.text!, forKey: "ingredient3a")
            }
            
            if UserDefaults.standard.string(forKey: "quantity3a") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity3.text!, forKey: "quantity3a")
            }
            
            if UserDefaults.standard.string(forKey: "ingredient4a") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient4.text!, forKey: "ingredient4a")
            }
            
            if UserDefaults.standard.string(forKey: "quantity4a") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity4.text!, forKey: "quantity4a")
            }
            
            if UserDefaults.standard.string(forKey: "ingredient5a") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient5.text!, forKey: "ingredient5a")
            }
            
            if UserDefaults.standard.string(forKey: "quantity5a") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity5.text!, forKey: "quantity5a")
            }
            
            if UserDefaults.standard.string(forKey: "ingredient6a") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient6.text!, forKey: "ingredient6a")
            }
            
            if UserDefaults.standard.string(forKey: "quantity6a") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity6.text!, forKey: "quantity6a")
            }
            if UserDefaults.standard.string(forKey: "ingredient7a") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient7.text!, forKey: "ingredient7a")
            }
            
            if UserDefaults.standard.string(forKey: "quantity7a") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity7.text!, forKey: "quantity7a")
            }
            
            if UserDefaults.standard.string(forKey: "ingredient8a") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient8.text!, forKey: "ingredient8a")
            }
            
            if UserDefaults.standard.string(forKey: "quantity8a") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity8.text!, forKey: "quantity8a")
            }
            
        }
        
        else if UserDefaults.standard.string(forKey: "recipe3") ?? "" == ""
        {
            UserDefaults.standard.set(self.nameRecipeField.text!, forKey: "recipe3")
            
            if UserDefaults.standard.string(forKey: "ingredient1b") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient1.text!, forKey: "ingredient1b")
            }
            
            if UserDefaults.standard.string(forKey: "quantity1b") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity1.text!, forKey: "quantity1b")
            }
            
            if UserDefaults.standard.string(forKey: "ingredient2b") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient2.text!, forKey: "ingredient2b")
            }
            
            if UserDefaults.standard.string(forKey: "quantity2b") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity2.text!, forKey: "quantity2b")
            }
            if UserDefaults.standard.string(forKey: "ingredient3b") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient3.text!, forKey: "ingredient3b")
            }
            
            if UserDefaults.standard.string(forKey: "quantity3b") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity3.text!, forKey: "quantity3b")
            }
            
            if UserDefaults.standard.string(forKey: "ingredient4b") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient4.text!, forKey: "ingredient4b")
            }
            
            if UserDefaults.standard.string(forKey: "quantity4b") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity4.text!, forKey: "quantity4b")
            }
            
            if UserDefaults.standard.string(forKey: "ingredient5b") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient5.text!, forKey: "ingredient5b")
            }
            
            if UserDefaults.standard.string(forKey: "quantity5b") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity5.text!, forKey: "quantity5b")
            }
            
            if UserDefaults.standard.string(forKey: "ingredient6b") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient6.text!, forKey: "ingredient6b")
            }
            
            if UserDefaults.standard.string(forKey: "quantity6b") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity6.text!, forKey: "quantity6b")
            }
            if UserDefaults.standard.string(forKey: "ingredient7b") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient7.text!, forKey: "ingredient7b")
            }
            
            if UserDefaults.standard.string(forKey: "quantity7b") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity7.text!, forKey: "quantity7b")
            }
            
            if UserDefaults.standard.string(forKey: "ingredient8b") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient8.text!, forKey: "ingredient8b")
            }
            
            if UserDefaults.standard.string(forKey: "quantity8b") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity8.text!, forKey: "quantity8b")
            }
            
        }
        
        else if UserDefaults.standard.string(forKey: "recipe4") ?? "" == ""
        {
           UserDefaults.standard.set(self.nameRecipeField.text!, forKey: "recipe4")
            
            if UserDefaults.standard.string(forKey: "ingredient1c") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient1.text!, forKey: "ingredient1c")
            }
            
            if UserDefaults.standard.string(forKey: "quantity1c") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity1.text!, forKey: "quantity1c")
            }
            
            if UserDefaults.standard.string(forKey: "ingredient2c") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient2.text!, forKey: "ingredient2c")
            }
            
            if UserDefaults.standard.string(forKey: "quantity2c") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity2.text!, forKey: "quantity2c")
            }
            if UserDefaults.standard.string(forKey: "ingredient3c") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient3.text!, forKey: "ingredient3c")
            }
            
            if UserDefaults.standard.string(forKey: "quantity3c") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity3.text!, forKey: "quantity3c")
            }
            
            if UserDefaults.standard.string(forKey: "ingredient4c") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient4.text!, forKey: "ingredient4c")
            }
            
            if UserDefaults.standard.string(forKey: "quantity4c") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity4.text!, forKey: "quantity4c")
            }
            
            if UserDefaults.standard.string(forKey: "ingredient5c") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient5.text!, forKey: "ingredient5c")
            }
            
            if UserDefaults.standard.string(forKey: "quantity5c") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity5.text!, forKey: "quantity5c")
            }
            
            if UserDefaults.standard.string(forKey: "ingredient6c") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient6.text!, forKey: "ingredient6c")
            }
            
            if UserDefaults.standard.string(forKey: "quantity6c") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity6.text!, forKey: "quantity6c")
            }
            if UserDefaults.standard.string(forKey: "ingredient7c") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient7.text!, forKey: "ingredient7c")
            }
            
            if UserDefaults.standard.string(forKey: "quantity7c") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity7.text!, forKey: "quantity7c")
            }
            
            if UserDefaults.standard.string(forKey: "ingredient8c") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient8.text!, forKey: "ingredient8c")
            }
            
            if UserDefaults.standard.string(forKey: "quantity8c") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity8.text!, forKey: "quantity8c")
            }
            
        }
        
        else if UserDefaults.standard.string(forKey: "recipe5") ?? "" == ""
        {
            UserDefaults.standard.set(self.nameRecipeField.text!, forKey: "recipe5")
            
            if UserDefaults.standard.string(forKey: "ingredient1d") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient1.text!, forKey: "ingredient1d")
            }
            
            if UserDefaults.standard.string(forKey: "quantity1d") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity1.text!, forKey: "quantity1d")
            }
            
            if UserDefaults.standard.string(forKey: "ingredient2d") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient2.text!, forKey: "ingredient2d")
            }
            
            if UserDefaults.standard.string(forKey: "quantity2d") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity2.text!, forKey: "quantity2d")
            }
            if UserDefaults.standard.string(forKey: "ingredient3d") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient3.text!, forKey: "ingredient3d")
            }
            
            if UserDefaults.standard.string(forKey: "quantity3d") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity3.text!, forKey: "quantity3d")
            }
            
            if UserDefaults.standard.string(forKey: "ingredient4d") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient4.text!, forKey: "ingredient4d")
            }
            
            if UserDefaults.standard.string(forKey: "quantity4d") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity4.text!, forKey: "quantity4d")
            }
            
            if UserDefaults.standard.string(forKey: "ingredient5d") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient5.text!, forKey: "ingredient5d")
            }
            
            if UserDefaults.standard.string(forKey: "quantity5d") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity5.text!, forKey: "quantity5d")
            }
            
            if UserDefaults.standard.string(forKey: "ingredient6d") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient6.text!, forKey: "ingredient6d")
            }
            
            if UserDefaults.standard.string(forKey: "quantity6d") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity6.text!, forKey: "quantity6d")
            }
            if UserDefaults.standard.string(forKey: "ingredient7d") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient7.text!, forKey: "ingredient7d")
            }
            
            if UserDefaults.standard.string(forKey: "quantity7d") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity7.text!, forKey: "quantity7d")
            }
            
            if UserDefaults.standard.string(forKey: "ingredient8d") ?? "" == ""
            {
                UserDefaults.standard.set(self.Ingredient8.text!, forKey: "ingredient8d")
            }
            
            if UserDefaults.standard.string(forKey: "quantity8d") ?? "" == ""
            {
                UserDefaults.standard.set(self.quantity8.text!, forKey: "quantity8d")
            }
            
        }
        
        else if UserDefaults.standard.string(forKey: "recipe6") ?? "" == ""
        {
            UserDefaults.standard.set(self.nameRecipeField.text!, forKey: "recipe6")
        }
        
        else if UserDefaults.standard.string(forKey: "recipe7") ?? "" == ""
        {
            UserDefaults.standard.set(self.nameRecipeField.text!, forKey: "recipe7")
        }
        
        else if UserDefaults.standard.string(forKey: "recipe8") ?? "" == ""
        {
            UserDefaults.standard.set(self.nameRecipeField.text!, forKey: "recipe8")
        }
        
        else if UserDefaults.standard.string(forKey: "recipe9") ?? "" == ""
        {
           UserDefaults.standard.set(self.nameRecipeField.text!, forKey: "recipe9")
        }
        
        //UserDefaults.standard.removePersistentDomain(forName: Bundle.main.bundleIdentifier!)
        
        //UserDefaults.standard.synchronize()
    }
    //MARK: Actions

}

extension SecondViewController : UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
}
