describe 'Botoes de Radio', :radio do

    before(:each) do
        visit '/radios'
    end


    it 'selecao por ID' do
        choose('cap')
    end
end