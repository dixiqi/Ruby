#encoding:utf-8


class User < ActiveRecord::Base
  def validate
    if name.blank?
      errors.add(:name, "姓名不能为空！")
    end

    if year < 1910 or year > 2011
      errors.add(:year, "出生年份必需在1910年到2011年之间")
    end

    if sex.blank?
      errors.add(:sex, "性别不能为空！")
    end

    if not phone.match(/((0\d{3}|\d{2})-(\d{7}|\d{8}))|(1\d{10})/)
      errors.add(:phone, "电话号码格式错误！")
    end
  end
end
