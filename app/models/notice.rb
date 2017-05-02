class Notice < ApplicationRecord

 def collection_select_data
    "#{title} | #{date}"
 end 

end
