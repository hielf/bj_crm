# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Dict
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '住宅', :dict_type => 'estateType', :code => 1})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '商铺', :dict_type => 'estateType', :code => 2})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '写字楼', :dict_type => 'estateType', :code => 3})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '厂房', :dict_type => 'estateType', :code => 4})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '动产', :dict_type => 'assetType', :code => 1})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '不动产', :dict_type => 'assetType', :code => 2})
