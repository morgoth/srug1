require "portierka"

describe OndraszekPortierka do
  before do
    @portierka = OndraszekPortierka.new(:niebieski)
  end

  it "should call Straz.wezwij with dormitory name" do
    Straz.should_receive(:wezwij).with(:ondraszek).and_return(true)
    response = @portierka.wezwij_straz
    response.should == true
  end
end
