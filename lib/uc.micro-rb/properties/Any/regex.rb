module UCMicro
  module Properties
    module Any
      # original REGEX = /[\0-\uD7FF\uDC00-\uFFFF]|[\uD800-\uDBFF][\uDC00-\uDFFF]|[\uD800-\uDBFF]/

      # Ruby can't handle surrogate pairs and consider those ranges (xD800-xDFFF) as "invalid".  remove them for now
      # http://stackoverflow.com/a/397285/2781043
      REGEX = /[\0-\uD7FF\uE000-\uFFFF]/
    end
  end
end