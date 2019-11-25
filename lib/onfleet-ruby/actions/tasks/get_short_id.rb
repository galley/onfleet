module Onfleet
  module Actions
    module Tasks
      module GetShortId
        module ClassMethods
          def get_by_short_id(id)
            api_url = "#{self.api_url}/#{id}"
            response = Onfleet.request(api_url, :get)
            Util.constantize(name).new(response)
          end
        end

        def self.included(base)
          base.extend(ClassMethods)
        end
      end
    end
  end
end
