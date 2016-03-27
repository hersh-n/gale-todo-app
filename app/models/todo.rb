class Todo < ActiveRecord::Base

scope :complete, -> { where(status: 1) }
scope :incomplete, -> { where(status: 0) }



# when marked as complete
#   status = 0

# def completed
#   if status == 0
#   move to bottom of list
#   remove button to mark as complete
#   add css

# end


def mark_complete!
  self.update_attribute(:status, 1)
end

def priority_word
  if self.priority == 1
    return 'High'
  elsif self.priority == 2
    return 'Medium'
  elsif self.priority == 3
    return 'Low'
  end

end






end
