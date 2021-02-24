RSpec.describe "static_page", type: :feature do
    it "shows static_content" do
        visit pages_blog_path
        expect(page).to have_content('Hello world')

    end
    
end
