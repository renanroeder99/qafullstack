describe 'Forms', :forms do
    it 'login com sucesso' do
        visit 'https://training-wheels-protocol.herokuapp.com/login'
        
        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'jarvis!'

        click_button 'Login'

        expect(find('#flash').visible?).to be true

        expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'

        ##esta é a mais efetiva
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end

    it 'senha incorreta', :incorreta do
       visit 'https://training-wheels-protocol.herokuapp.com/login' 
       fill_in 'userId', with: 'stark'
       fill_in 'password', with: 'toca Raul!'

       click_button 'Login'

       expect(find('#flash')).to have_content 'Senha é invalida!'
    end

    it 'usuario nao cadastrado' do
       visit 'https://training-wheels-protocol.herokuapp.com/login'
       fill_in 'userId', with: 'miranha'
       fill_in 'password', with: 'toca Raul!'

       click_button 'Login'

       expect(find('#flash')).to have_content 'O usuário informado não está cadastrado!'
    end
end