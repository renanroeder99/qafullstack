describe 'Drag and Drop', :dragdrop do
   
    before(:each) do
        visit '/drag_and_drop'
    end

    it 'troca miranha de cap para stark' do
        stark = find('.team-stark .column')
        cap = find('.team-cap .column')

        spider = find('img[alt$=Aranha]')
        spider.drag_to stark

        expect(stark).to have_css 'img[alt$=Aranha]'
        expect(cap).not_to have_css 'img[alt$=Aranha]'
    end
end