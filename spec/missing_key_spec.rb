describe Hash do
  it "should always know which keys are left" do
    h = { a: 1, b: 2, c: 3 }
    h.each do |k, v|
      h.delete :a
      expect(h.keys).to eq [:b, :c]
    end
  end
end
