

describe 'Caixa de opções', :dropdown do
    
    it 'item especifico simples' do
        visit '/dropdown'
        select('Loki', from: 'dropdown')
    end

    it 'item especifico com find' do
        visit '/dropdown'
        drop = find('.avenger-list')
        drop.find('option', text: 'Scott Lang').select_option
    end

    it 'qualquer item', :sample do
        visit '/dropdown'
        drop = find('.avenger-list')
        drop.all('option').sample.select_option #ruby ftw - sample sorteia um valor dentro do array
    end
end