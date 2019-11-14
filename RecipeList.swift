
public class RecipeList
{
	private var list = Set<Recipe>()
	public var list_size = 0

	public init(new_list: Set<Recipe>?)
	{
		if(new_list != nil)
		{
			self.list = self.list.union(new_list!)
		}
	}
	/*Inserts the item into the list
	*	option=1: Inserts the item unconditionally
	*	option=2: Insert the item if it isn't already a member
	*	Returns the boolean value of the success
	*/
	public func add_recipe(item: Recipe) -> Bool
	{
		let valid_insert = self.list.insert(item)
    if(valid_insert.0==true)
    {
      self.list_size += 1
    }
		return valid_insert.0
	}
	
	/*Removes the specified ingredient name if it is present within the list
	*	Returns the item if it was in the list, otherwise returns nil
	*/
	public func remove_recipe(name: String) -> Recipe?
	{
		for (_, item) in self.list.enumerated()
		{
			if(item.get_meal_name().elementsEqual(name))/*The same item*/
			{
        self.list_size -= 1
				return self.list.remove(item)
			}
		}
		return nil
	}
	
	/*Returns the list as an EnumeratedSequence which takes the form of a
	* list containing an (index, value) pair
	*/
	public func get_list() -> Set<Recipe>
	{
		return self.list
	}
	
	/*Checks if the given recipe name is a member of the list
	Returns the boolean value of the statement.
	*/
	public func is_member(name: String) -> Bool
	{
		var bool_val = false
		for (_, item) in self.list.enumerated()
		{
      bool_val = item.get_meal_name().elementsEqual(name)
			if(bool_val)/*Item is in list*/
			{
				break
			}
		}
		return bool_val
	}
	
	/*Checks if the list is empty
	*/
	public func is_empty() -> Bool
	{
		return self.list.isEmpty
	}
}