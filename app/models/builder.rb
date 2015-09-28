class Builder < ActiveRecord::Base
    def to_param
        [id, bname.parameterize].join("-")
    end

end
