
class Potluck
  attr_accessor :date, :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    dishes_in_category = []
    @dishes.each do |dish|
      if dish.category == category
        dishes_in_category << dish
      end
    end
    dishes_in_category
  end

  def get_name_from_category(category)
    dishes_in_category = []
    @dishes.each do |dish|
      if dish.category == category
        dishes_in_category << dish.name
      end
    end
    dishes_in_category.sort
  end

  def menu
    @dishes.reduce({}) do |hash, dish|
      category = (dish.category.to_s + "s").to_sym
      hash[category] = get_name_from_category(dish.category)
      hash
    end
  end

  def ratio(type)
    type_total = 0
    if @dishes.category = type
      type_total += 1
    end
    @dishes.category.count / type_total
  end

end


def menu
  @dishes.reduce({}) do |hash, dish|
    category = (dish.category.to_s + "s").to_sym
    hash[category] = get_name_from_category(dish.category)
    hash
  end
end
