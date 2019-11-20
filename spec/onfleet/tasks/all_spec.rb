RSpec.describe Onfleet::Tasks::All do
  let(:all) { described_class.new(params) }
  let(:params) { { id: 'a-task', short_id: 'at', recipients: ['jeff'] } }

  describe ".list_all" do
    subject { -> { described_class.list_all(query_params) } }

    context "with query params" do
      let(:query_params) { { from: 1572408000000, completeBeforeBefore: 1573499400000, completeAfterAfter: 1573491300000 } }
      it_should_behave_like Onfleet::Actions::Tasks::ListAll, path: 'tasks/all?from=1572408000000&completeBeforeBefore=1573499400000&completeAfterAfter=1573491300000'
    end
  end
end
