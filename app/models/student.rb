class Student < ApplicationRecord


  def self.listing on_search
    unless on_search
      all
    else
      where("name like ? and institution_name like ?", "%#{on_search["name"]}%",  "%#{on_search["institution_name"]}%")
    end
  end
end
