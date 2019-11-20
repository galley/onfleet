module Onfleet
  module Actions
    module Tasks
      module ListAll
        module ClassMethods
          def list_all(filters = {})
            response = Onfleet.request(list_url_for(filters), :get)
            binding.pry
            response['tasks'].compact.map { |item| new(item) }
          end

          private

          def list_url_for(filters)
            [api_url, query_params(filters)].compact.join('?')
          end

          def query_params(filters)
            filters && filters
              .collect { |key, value| "#{key}=#{URI.encode_www_form_component(value)}" }
              .join('&')
          end
        end

        def self.included(base)
          base.extend(ClassMethods)
        end
      end
    end
  end
end
