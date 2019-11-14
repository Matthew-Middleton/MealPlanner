import XCTest

class Tester: XCTestCase {
    func testNewIngredient() {
        let ingr = Ingredient(name: "Milk", item_type: "Dairy", quantity: 1, unit:"")
        XCTAssertEqual(ingr.get_name(), "Milk")
        XCTAssertEqual(ingr.get_item_type(), "Dairy")
        XCTAssertEqual(ingr.adjust_quantity(amount:0), 1)
    }
    func testNewIngredient2() {
        let ingr = Ingredient(name: "Milk", item_type: "Dairy", quantity: 1, unit: "Gallon")
        XCTAssertEqual(ingr.get_unit(), "Gallon")
    }
    func testNewRecipe() {
        let ingr = Ingredient(name: "Borgir", item_type: "Sandwich", quantity: 1, unit: "Borgir")
        var ingredients: Set = [ingr] 
        let rcp = Recipe(meal_name: "Borgir", ingredients: ingredients, directions: "Eat borgir")
        XCTAssertEqual(rcp.get_meal_name(), "Borgir")
        for (index, item) in rcp.get_ingredients().enumerated()
        {
          XCTAssertEqual(item, ingredients)
        }
        XCTAssertEqual(rcp.get_directions(), "Eat borgir")
    }
    func testRecipeAddIngredient() {
        let ingr = Ingredient(name: "Borgir", item_type: "Sandwich", quantity: 1, unit: "Borgir")
        var ingredients: Set = [ingr] 
        var comp: Set = [ingr]

        let rcp = Recipe(meal_name: "Borgir", ingredients: ingredients, directions: "Eat borgir")

        let mustard = Ingredient(name: "Mustard", item_type: "Condiment", quantity: 1, unit: "Bottle")
        comp.insert(mustard)

        rcp.add_ingredient(item: mustard)
        XCTAssertEqual((rcp.get_ingredients().0).0, ingredients)
    }
    func testRecipeRemoveIngredient() {
        let ingr = Ingredient(name: "Borgir", item_type: "Sandwich", quantity: 1, unit: "Borgir")
        let mustard = Ingredient(name: "Mustard", item_type: "Condiment", quantity: 1, unit: "Bottle")
        var ingredients: Set = [ingr, mustard]
        var comp: Set = [ingr, mustard]

        let rcp = Recipe(meal_name: "Borgir", ingredients: ingredients, directions: "Eat borgir")
        comp.remove(mustard)
        rcp.remove_ingredient(ingredient: mustard)
        XCTAssertEqual((rcp.get_ingredients().0).0, ingredients)
    }
}