describe 'Forms', :forms3 do

    before(:each) do
        visit '/access'
    end
    
    it 'login com sucesso' do

        #login_form = find('#login')
        
        #login_form.find('input[name=username]').set 'stark'
        #login_form.find('input[name=password]').set 'jarvis!'

        ##apesar de correto, o método within do capybara é mais pratico

        within('#login') do
            find('input[name=username]').set 'stark'
            find('input[name=password]').set 'jarvis!'
        end

        click_button 'Entrar'
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end

    it 'cadastro com sucesso' do

        within('#signup') do
            find('input[name=username]').set 'renan'
            find('input[name=password]').set '123'
            click_link 'Criar Conta' #inspecionando elemento, nota-se que o "botao" na verdade é um <a>
        end
            
        expect(page).to have_content 'Dados enviados. Aguarde aprovação do seu cadastro!'
    end
end