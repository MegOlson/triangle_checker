require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangle path', {:type => :feature}) do
  it('processes the user entry and returns its type of triangle') do
    visit('/')
    fill_in('side1', :with => '5')
    fill_in('side2', :with => '5')
    fill_in('side3', :with => '5')
    click_button('Go!')
    expect(page).to have_content('Equilateral')
  end
  it('processes the user entry and returns its type of triangle') do
    visit('/')
    fill_in('side1', :with => '1')
    fill_in('side2', :with => '2')
    fill_in('side3', :with => '3')
    click_button('Go!')
    expect(page).to have_content('Not a triangle')
  end
  it('processes the user entry and returns its type of triangle') do
    visit('/')
    fill_in('side1', :with => '3')
    fill_in('side2', :with => '3')
    fill_in('side3', :with => '5')
    click_button('Go!')
    expect(page).to have_content('Isosceles')
  end
  it('processes the user entry and returns its type of triangle') do
    visit('/')
    fill_in('side1', :with => '5')
    fill_in('side2', :with => '8')
    fill_in('side3', :with => '4')
    click_button('Go!')
    expect(page).to have_content('Scalene')
  end
end
