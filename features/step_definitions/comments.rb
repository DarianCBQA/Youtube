Given("I load youtube page with comments") do
  visit 'https://www.youtube.com/watch?v=zpt15XIjpas'
end

When("comments load") do
  expect(page).to have_selector("div", :id =>"contents")
end

Then("I can see comments") do
  #scroll optional
  result = page.find_by_id("contents", visible: true)[:id]
  expect('contents').to eq(result)
end