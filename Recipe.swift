public class Recipe: Equatable, Hashable
{
	//list of ingredients or an array of ingredients, if an array will need to resize dynamically
	private var meal = ""
	private var list = Set<Ingredient>()
  public var list_size = 0
	private var directions = ""
	
	public init(meal_name: String)
	{
		self.meal = meal_name
	}
	
	public init(meal_name: String, ingredients: Set<Ingredient>)
	{
		self.meal = meal_name
		self.list = self.list.union(ingredients)
	}
	
	public init(meal_name: String, ingredients: Set<Ingredient>, directions: String)
	{
		self.meal = meal_name
		self.list = self.list.union(ingredients)
		self.directions = directions
	}
	
	/*Overrides the class variable meal with name.
	Ideally we would like for interactive change of a string so as to not
		constantly overwrite, but modify instead.*/
	public func set_meal_name(name: String)
	{
		self.meal = name
	}
	
	/*Adds an ingredient(item) into the list.
	*	option = 1: Adds the item into the list unconditionally
	*	option = 2: Adds the item into the list only if it isn't present
	*	Returns the boolean value of the successful insertion
	*/
	public func add_ingredient(item: Ingredient) -> Bool
	{
		let valid_insert = self.list.insert(item)
    if(valid_insert.0==true)
    {
      self.size += 1
    }
    return valid_insert.0
	}
	
  public func remove_ingredient(name: String) -> Ingredient?
  {
    for (_, item) in self.list.enumerated()
		{
			if(item.get_name().elementsEqual(name))/*In list*/
			{
				self.list_size -= 1
				return self.list.remove(item)
			}
		}
		return nil
  }
	/*Overrides the class variable directions with text.
	Ideally we would like for interactive change of a string so as to not
		constantly overwrite, but modify instead.*/
	public func set_directions(text: String)
	{
		self.directions = text
	}
	
	/*Returns the class variable name meal
	*/
	public func get_meal_name() -> String
	{
		return self.meal
	}
	
	/*Returns the class variable ingredient
	*/
	public func get_ingredients() -> EnumeratedSequence<Set<Ingredient>>
	{
		return self.list.enumerated()
	}
	
	/*Returns the directions otherwise states that there aren't any*/
	public func get_directions() -> String
	{
		return (self.directions.isEmpty) ? "No directions" : self.directions
	}
	
	/*Compares difference in letters of a string
		traditional comparator return values*/
	public func compare(item: Recipe) -> Int
	{
		var retval = 0
		for (letter1, letter2) in zip(self.meal, item.meal)
		{
			retval = Int(String(letter1))! - Int(String(letter2))!   
			if(retval != 0)
			{
				break
			}
		}
		return retval
	}
	
	/*Checks to see if the Ingredient is in the list
	*/
	public func is_member(item: Ingredient) -> Bool
	{
		return list.contains(item)
	}

  	public func hash(into hasher: inout Hasher)
  	{
    		hasher.combine(self.meal)
    		hasher.combine(self.list)
    		hasher.combine(self.directions)
  	}
  
  	public static func ==(lhs: Recipe, rhs: Recipe) -> Bool
  	{
    		return lhs.meal.elementsEqual(rhs.meal)
  	}
}
