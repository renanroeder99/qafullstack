describe 'alerta de js', :alerts do

    before(:each) do
        visit '/javascript_alerts'
    end

    it 'alerta' do
        click_button 'Alerta'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Isto é uma mensagem de alerta'
    end

    it 'sim confirma' do
        click_button 'Confirma'
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'

        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content 'Mensagem confirmada'
    end

    it 'nao confirma' do
        click_button 'Confirma'
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'

        page.driver.browser.switch_to.alert.dismiss
        expect(page).to have_content 'Mensagem não confirmada'
    end

    it 'accept prompt', :accept_prompt do

        accept_prompt(with: 'Renan') do
            click_button 'Prompt'
        end

        expect(page).to have_content 'Olá, Renan'
    end

    #desafio: dismiss prompt
    ##meu teste, e acertei ^~^
    it 'dismiss prompt', :dismiss_prompt do
        # Quando eu não aceito esse prompt, então a mensagem deve ser "Olá, null"
        dismiss_prompt do
            click_button 'Prompt'
        end

        expect(page).to have_content 'Olá, null'

    end

end