//
//  FourthViewController.swift
//  test
//
//  Created by Logan Samuels on 11/18/19.
//  Copyright © 2019 AppleInc. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    
    @IBOutlet weak var groceryList: UILabel!
   
    @IBOutlet weak var Done: UIButton!
    
    
    @IBOutlet weak var recipeOne: UILabel!
    
    @IBOutlet weak var ingredientOne: UILabel!
    @IBOutlet weak var ingredientTwo: UILabel!
    @IBOutlet weak var ingredientThree: UILabel!
    @IBOutlet weak var ingredientFour: UILabel!
    @IBOutlet weak var ingredientFive: UILabel!
    @IBOutlet weak var ingredientSix: UILabel!
    @IBOutlet weak var ingredientSeven: UILabel!
    @IBOutlet weak var ingredientEight: UILabel!
    @IBOutlet weak var quantityOne: UILabel!
    @IBOutlet weak var quantityTwo: UILabel!
    @IBOutlet weak var quantityThree: UILabel!
    @IBOutlet weak var quantityFour: UILabel!
    @IBOutlet weak var quantityFive: UILabel!
    @IBOutlet weak var quantitySix: UILabel!
    @IBOutlet weak var quantitySeven: UILabel!
    @IBOutlet weak var quantityEight: UILabel!
    
    @IBOutlet weak var recipeTwo: UILabel!
    
    @IBOutlet weak var ingredientOneA: UILabel!
    @IBOutlet weak var ingredientTwoA: UILabel!
    @IBOutlet weak var ingredientThreeA: UILabel!
    @IBOutlet weak var ingredientFourA: UILabel!
    @IBOutlet weak var ingredientFiveA: UILabel!
    @IBOutlet weak var ingredientSixA: UILabel!
    @IBOutlet weak var ingredientSevenA: UILabel!
    @IBOutlet weak var ingredientEightA: UILabel!
    @IBOutlet weak var quantityOneA: UILabel!
    @IBOutlet weak var quantityTwoA: UILabel!
    @IBOutlet weak var quantityThreeA: UILabel!
    @IBOutlet weak var quantityFourA: UILabel!
    @IBOutlet weak var quantityFiveA: UILabel!
    @IBOutlet weak var quantitySixA: UILabel!
    @IBOutlet weak var quantitySevenA: UILabel!
    @IBOutlet weak var quantityEightA: UILabel!
    
    @IBOutlet weak var recipeThree: UILabel!
    
    @IBOutlet weak var ingredientOneB: UILabel!
    @IBOutlet weak var ingredientTwoB: UILabel!
    @IBOutlet weak var ingredientThreeB: UILabel!
    @IBOutlet weak var ingredientFourB: UILabel!
    @IBOutlet weak var ingredientFiveB: UILabel!
    @IBOutlet weak var ingredientSixB: UILabel!
    @IBOutlet weak var ingredientSevenB: UILabel!
    @IBOutlet weak var ingredientEightB: UILabel!
    @IBOutlet weak var quantityOneB: UILabel!
    @IBOutlet weak var quantityTwoB: UILabel!
    @IBOutlet weak var quantityThreeB: UILabel!
    @IBOutlet weak var quantityFourB: UILabel!
    @IBOutlet weak var quantityFiveB: UILabel!
    @IBOutlet weak var quantitySixB: UILabel!
    @IBOutlet weak var quantitySevenB: UILabel!
    @IBOutlet weak var quantityEightB: UILabel!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if UserDefaults.standard.string(forKey: "recipe1") ?? "" != ""
        {
            recipeOne.text = UserDefaults.standard.string(forKey: "recipe1") ?? ""
        }
        
        if UserDefaults.standard.string(forKey: "recipe2") ?? "" != ""
        {
            recipeTwo.text = UserDefaults.standard.string(forKey: "recipe2") ?? ""
        }
        
        if UserDefaults.standard.string(forKey: "recipe3") ?? "" != ""
        {
            recipeThree.text = UserDefaults.standard.string(forKey: "recipe3") ?? ""
        }
        
        
        if UserDefaults.standard.string(forKey: "ingredient1") ?? "" != ""
        {
            ingredientOne.text = UserDefaults.standard.string(forKey: "ingredient1") ?? ""
        }
        if UserDefaults.standard.string(forKey: "quantity1") ?? "" != ""
        {
            quantityOne.text = UserDefaults.standard.string(forKey: "quantity1") ?? ""
        }
        
        if UserDefaults.standard.string(forKey: "ingredient2") ?? "" != ""
        {
            ingredientTwo.text = UserDefaults.standard.string(forKey: "ingredient2") ?? ""
        }
        if UserDefaults.standard.string(forKey: "quantity2") ?? "" != ""
        {
            quantityTwo.text = UserDefaults.standard.string(forKey: "quantity2") ?? ""
        }
        
        if UserDefaults.standard.string(forKey: "ingredient3") ?? "" != ""
        {
            ingredientThree.text = UserDefaults.standard.string(forKey: "ingredient3") ?? ""
        }
        if UserDefaults.standard.string(forKey: "quantity3") ?? "" != ""
        {
            quantityThree.text = UserDefaults.standard.string(forKey: "quantity3") ?? ""
        }
        if UserDefaults.standard.string(forKey: "ingredient4") ?? "" != ""
        {
            ingredientFour.text = UserDefaults.standard.string(forKey: "ingredient4") ?? ""
        }
        if UserDefaults.standard.string(forKey: "quantity4") ?? "" != ""
        {
            quantityFour.text = UserDefaults.standard.string(forKey: "quantity4") ?? ""
        }
        if UserDefaults.standard.string(forKey: "ingredient5") ?? "" != ""
        {
            ingredientFive.text = UserDefaults.standard.string(forKey: "ingredient5") ?? ""
        }
        if UserDefaults.standard.string(forKey: "quantity5") ?? "" != ""
        {
            quantityFive.text = UserDefaults.standard.string(forKey: "quantity5") ?? ""
        }
        if UserDefaults.standard.string(forKey: "ingredient6") ?? "" != ""
        {
            ingredientSix.text = UserDefaults.standard.string(forKey: "ingredient6") ?? ""
        }
        if UserDefaults.standard.string(forKey: "quantity6") ?? "" != ""
        {
            quantitySix.text = UserDefaults.standard.string(forKey: "quantity6") ?? ""
        }
        if UserDefaults.standard.string(forKey: "ingredient7") ?? "" != ""
        {
            ingredientSeven.text = UserDefaults.standard.string(forKey: "ingredient7") ?? ""
        }
        if UserDefaults.standard.string(forKey: "quantity7") ?? "" != ""
        {
            quantitySeven.text = UserDefaults.standard.string(forKey: "quantity7") ?? ""
        }
        if UserDefaults.standard.string(forKey: "ingredient8") ?? "" != ""
        {
            ingredientEight.text = UserDefaults.standard.string(forKey: "ingredient8") ?? ""
        }
        if UserDefaults.standard.string(forKey: "quantity8") ?? "" != ""
        {
            quantityEight.text = UserDefaults.standard.string(forKey: "quantity8") ?? ""
        }
     
        if UserDefaults.standard.string(forKey: "ingredient1a") ?? "" != ""
        {
            ingredientOneA.text = UserDefaults.standard.string(forKey: "ingredient1a") ?? ""
        }
        if UserDefaults.standard.string(forKey: "quantity1a") ?? "" != ""
        {
            quantityOneA.text = UserDefaults.standard.string(forKey: "quantity1a") ?? ""
        }
        
        if UserDefaults.standard.string(forKey: "ingredient2a") ?? "" != ""
        {
            ingredientTwoA.text = UserDefaults.standard.string(forKey: "ingredient2a") ?? ""
        }
        if UserDefaults.standard.string(forKey: "quantity2a") ?? "" != ""
        {
            quantityTwoA.text = UserDefaults.standard.string(forKey: "quantity2a") ?? ""
        }
        
        if UserDefaults.standard.string(forKey: "ingredient3a") ?? "" != ""
        {
            ingredientThreeA.text = UserDefaults.standard.string(forKey: "ingredient3a") ?? ""
        }
        if UserDefaults.standard.string(forKey: "quantity3a") ?? "" != ""
        {
            quantityThreeA.text = UserDefaults.standard.string(forKey: "quantity3a") ?? ""
        }
        if UserDefaults.standard.string(forKey: "ingredient4a") ?? "" != ""
        {
            ingredientFourA.text = UserDefaults.standard.string(forKey: "ingredient4a") ?? ""
        }
        if UserDefaults.standard.string(forKey: "quantity4a") ?? "" != ""
        {
            quantityFourA.text = UserDefaults.standard.string(forKey: "quantity4a") ?? ""
        }
        if UserDefaults.standard.string(forKey: "ingredient5a") ?? "" != ""
        {
            ingredientFiveA.text = UserDefaults.standard.string(forKey: "ingredient5a") ?? ""
        }
        if UserDefaults.standard.string(forKey: "quantity5a") ?? "" != ""
        {
            quantityFiveA.text = UserDefaults.standard.string(forKey: "quantity5a") ?? ""
        }
        if UserDefaults.standard.string(forKey: "ingredient6a") ?? "" != ""
        {
            ingredientSixA.text = UserDefaults.standard.string(forKey: "ingredient6a") ?? ""
        }
        if UserDefaults.standard.string(forKey: "quantity6a") ?? "" != ""
        {
            quantitySixA.text = UserDefaults.standard.string(forKey: "quantity6a") ?? ""
        }
        if UserDefaults.standard.string(forKey: "ingredient7a") ?? "" != ""
        {
            ingredientSevenA.text = UserDefaults.standard.string(forKey: "ingredient7a") ?? ""
        }
        if UserDefaults.standard.string(forKey: "quantity7a") ?? "" != ""
        {
            quantitySevenA.text = UserDefaults.standard.string(forKey: "quantity7a") ?? ""
        }
        if UserDefaults.standard.string(forKey: "ingredient8a") ?? "" != ""
        {
            ingredientEightA.text = UserDefaults.standard.string(forKey: "ingredient8a") ?? ""
        }
        if UserDefaults.standard.string(forKey: "quantity8a") ?? "" != ""
        {
            quantityEightA.text = UserDefaults.standard.string(forKey: "quantity8a") ?? ""
        }
        
        if UserDefaults.standard.string(forKey: "ingredient1b") ?? "" != ""
        {
            ingredientOneB.text = UserDefaults.standard.string(forKey: "ingredient1b") ?? ""
        }
        if UserDefaults.standard.string(forKey: "quantity1b") ?? "" != ""
        {
            quantityOneB.text = UserDefaults.standard.string(forKey: "quantity1b") ?? ""
        }
        
        if UserDefaults.standard.string(forKey: "ingredient2b") ?? "" != ""
        {
            ingredientTwoB.text = UserDefaults.standard.string(forKey: "ingredient2b") ?? ""
        }
        if UserDefaults.standard.string(forKey: "quantity2b") ?? "" != ""
        {
            quantityTwoB.text = UserDefaults.standard.string(forKey: "quantity2b") ?? ""
        }
        
        if UserDefaults.standard.string(forKey: "ingredient3b") ?? "" != ""
        {
            ingredientThreeB.text = UserDefaults.standard.string(forKey: "ingredient3b") ?? ""
        }
        if UserDefaults.standard.string(forKey: "quantity3b") ?? "" != ""
        {
            quantityThreeB.text = UserDefaults.standard.string(forKey: "quantity3b") ?? ""
        }
        if UserDefaults.standard.string(forKey: "ingredient4b") ?? "" != ""
        {
            ingredientFourB.text = UserDefaults.standard.string(forKey: "ingredient4b") ?? ""
        }
        if UserDefaults.standard.string(forKey: "quantity4b") ?? "" != ""
        {
            quantityFourB.text = UserDefaults.standard.string(forKey: "quantity4b") ?? ""
        }
        if UserDefaults.standard.string(forKey: "ingredient5b") ?? "" != ""
        {
            ingredientFiveB.text = UserDefaults.standard.string(forKey: "ingredient5b") ?? ""
        }
        if UserDefaults.standard.string(forKey: "quantity5b") ?? "" != ""
        {
            quantityFiveB.text = UserDefaults.standard.string(forKey: "quantity5b") ?? ""
        }
        if UserDefaults.standard.string(forKey: "ingredient6b") ?? "" != ""
        {
            ingredientSixB.text = UserDefaults.standard.string(forKey: "ingredient6b") ?? ""
        }
        if UserDefaults.standard.string(forKey: "quantity6b") ?? "" != ""
        {
            quantitySixB.text = UserDefaults.standard.string(forKey: "quantity6b") ?? ""
        }
        if UserDefaults.standard.string(forKey: "ingredient7b") ?? "" != ""
        {
            ingredientSevenB.text = UserDefaults.standard.string(forKey: "ingredient7b") ?? ""
        }
        if UserDefaults.standard.string(forKey: "quantity7b") ?? "" != ""
        {
            quantitySevenB.text = UserDefaults.standard.string(forKey: "quantity7b") ?? ""
        }
        if UserDefaults.standard.string(forKey: "ingredient8b") ?? "" != ""
        {
            ingredientEightB.text = UserDefaults.standard.string(forKey: "ingredient8b") ?? ""
        }
        if UserDefaults.standard.string(forKey: "quantity8b") ?? "" != ""
        {
            quantityEightB.text = UserDefaults.standard.string(forKey: "quantity8b") ?? ""
        }
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

    @IBAction func doneButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    
}

