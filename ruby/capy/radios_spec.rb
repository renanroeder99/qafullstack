describe 'Botoes de Radio', :radio do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/radios'
    end


    it 'selecao por ID' do
        choose('cap')
    end

    after(:each) do
        sleep 3
    end
end