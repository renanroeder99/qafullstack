describe "Meu primeiro script" do

    it "visitar a página" do
        visit "https://training-wheels-protocol.herokuapp.com/"
        sleep 5 #temporário
        expect(page.title).to eql "Training Wheels Protocol"
    end
end