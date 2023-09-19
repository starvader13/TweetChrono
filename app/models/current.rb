class Current < ActiveSupport::CurrentAttributes
    # class used in request to assign things like the user or timezone
    attribute :user
end
