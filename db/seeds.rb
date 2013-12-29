# encoding: utf-8
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

Dict.find_or_create_by_name_and_dict_type_and_code({:name => '借款合同', :dict_type => 'contractType', :code => 1})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '咨询合同', :dict_type => 'contractType', :code => 2})

Dict.find_or_create_by_name_and_dict_type_and_code({:name => '担保', :dict_type => 'guaranteeType', :code => 3})

Dict.find_or_create_by_name_and_dict_type_and_code({:name => '人民币', :dict_type => 'curType', :code => 1})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '美元', :dict_type => 'curType', :code => 2})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '港币', :dict_type => 'curType', :code => 3})

Dict.find_or_create_by_name_and_dict_type_and_code({:name => '正常', :dict_type => 'userStatus', :code => 1})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '销户', :dict_type => 'userStatus', :code => 2})

Dict.find_or_create_by_name_and_dict_type_and_code({:name => '转账', :dict_type => 'paymentType', :code => 1})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '现金', :dict_type => 'paymentType', :code => 2})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '其他', :dict_type => 'paymentType', :code => 3})

Dict.find_or_create_by_name_and_dict_type_and_code({:name => '上游客户', :dict_type => 'reportcustType', :code => 1})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '下游客户', :dict_type => 'reportcustType', :code => 2})

Dict.find_or_create_by_name_and_dict_type_and_code({:name => '上海客户', :dict_type => 'custRegion', :code => 1})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '外地客户', :dict_type => 'custRegion', :code => 2})

Dict.find_or_create_by_name_and_dict_type_and_code({:name => '生日提醒', :dict_type => 'noteType', :code => 3})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '还息提醒', :dict_type => 'noteType', :code => 4})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '配偶生日提醒', :dict_type => 'noteType', :code => 5})

#银行
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '招商银行', :dict_type => 'custBank', :code => 1})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '建设银行', :dict_type => 'custBank', :code => 2})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '上海银行', :dict_type => 'custBank', :code => 3})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '邮储银行', :dict_type => 'custBank', :code => 4})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '民生银行', :dict_type => 'custBank', :code => 5})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '上海农商行', :dict_type => 'custBank', :code => 6})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '平安银行', :dict_type => 'custBank', :code => 7})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '稠州银行', :dict_type => 'custBank', :code => 8})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '浦发银行', :dict_type => 'custBank', :code => 9})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '浙商银行', :dict_type => 'custBank', :code => 10})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '杭州银行', :dict_type => 'custBank', :code => 11})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '宁波银行', :dict_type => 'custBank', :code => 12})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '渤海银行', :dict_type => 'custBank', :code => 13})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '工商银行', :dict_type => 'custBank', :code => 14})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '广发银行', :dict_type => 'custBank', :code => 15})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '渣打银行', :dict_type => 'custBank', :code => 16})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '中国银行', :dict_type => 'custBank', :code => 17})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '光大银行', :dict_type => 'custBank', :code => 18})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '交通银行', :dict_type => 'custBank', :code => 19})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '华夏银行', :dict_type => 'custBank', :code => 20})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '南京银行', :dict_type => 'custBank', :code => 21})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '中信银行', :dict_type => 'custBank', :code => 22})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '北京银行', :dict_type => 'custBank', :code => 23})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '北京银行', :dict_type => 'custBank', :code => 23})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '农业银行', :dict_type => 'custBank', :code => 24})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '花旗银行', :dict_type => 'custBank', :code => 25})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '汇丰银行', :dict_type => 'custBank', :code => 26})
Dict.find_or_create_by_name_and_dict_type_and_code({:name => '兴业银行', :dict_type => 'custBank', :code => 27})

