
When("page fully loads") do
  #enabled?
  # page.has_css?("#movie_player > div.html5-video-container > video")
  #Logo
  expect(page).to have_css("div[id*='logo-icon-container']")
  #Input
  expect(page).to have_selector("input", :id =>"search")
  #Button
  expect(page).to have_selector("button", :id =>"search-icon-legacy")
  #Suggested
  expect(page).to have_selector("div", :id =>"related")
  #Menu
  page.find(:xpath, '//*[@id="guide-icon"]').click
  expect(page).to have_selector("div", :id =>"sections")
end

Then("I can see elements") do
  #displayed?
  #Logo
  result = page.find_by_id("logo-icon-container", match: :first, visible: true)[:id]
  expect('logo-icon-container').to eq(result)
  #Input
  result = page.find_by_id("search", match: :first, visible: true)[:id]
  expect('search').to eq(result)
  #Button
  result = page.find_by_id("search-icon-legacy", visible: true)[:id]
  expect('search-icon-legacy').to eq(result)
  #Suggested
  result = page.find_by_id("related", match: :first, visible: true)[:id]
  expect('related').to eq(result)
  #Menu
  result = page.find_by_id("sections", visible: true)[:id]
  expect('sections').to eq(result)
end