module Onfleet
  module Tasks
    class ShortId < OnfleetObject
      include Onfleet::Actions::Tasks::GetShortId

      def self.api_url
        'tasks/shortId'
      end
    end
  end
end
