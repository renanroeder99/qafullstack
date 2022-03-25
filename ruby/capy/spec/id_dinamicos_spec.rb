describe 'IDs dinamicos', :iddin do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/access'
    end

    it 'cadastro' do

        #$ => termina com
        #^ => começa com
        #* => contem

        find('input[id$=UsernameInput]').set 'renan'
        find('input[id^=PasswordInput]').set '123'
        find('a[id*=GetStartedButton]').click

        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    end
end
