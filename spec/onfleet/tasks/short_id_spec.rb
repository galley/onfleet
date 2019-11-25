RSpec.describe Onfleet::Tasks::ShortId do
  let(:all) { described_class.new(params) }
  let(:params) { { id: 'a-task', short_id: 'at', recipients: ['jeff'] } }

  describe ".get_by_short_id" do
    subject { -> { described_class.get_by_short_id(short_id) } }
    let(:short_id) { 'at' }
    it_should_behave_like Onfleet::Actions::Tasks::GetShortId, path: 'tasks/shortId/at'
  end
end
