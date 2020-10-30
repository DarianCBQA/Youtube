
When("search input and button loads") do
  #Input
  result = page.find_by_id("search", match: :first, visible: true)[:id]
  expect('search').to eq(result)
  #Button
  result = page.find_by_id("search-icon-legacy", visible: true)[:id]
  expect('search-icon-legacy').to eq(result)
end

Then("I check search") do
  #send keys
  fill_in('search_query', with: 'capybara')
  # click button
  click_button('search-icon-legacy')
  sleep(3)
end