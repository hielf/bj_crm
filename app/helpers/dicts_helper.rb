module DictsHelper
  def get_dict_by_type(type)
    Dict.find_all_by_dict_type(type)
  end
end
