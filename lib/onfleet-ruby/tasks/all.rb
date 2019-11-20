module Onfleet
  module Tasks
    class All < OnfleetObject
      include Onfleet::Actions::Tasks::ListAll

      def self.api_url
        'tasks/all'
      end
    end
  end
end
