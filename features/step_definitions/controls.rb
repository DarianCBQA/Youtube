Given("I load youtube page with controls") do
  visit 'https://www.youtube.com/watch?v=zpt15XIjpas'
end

When("video loads") do
  page.has_css?("#movie_player > div.html5-video-container > video")
end

Then("I can check controls") do
  #Play/Pause
  sleep(3)
  page.find('button.ytp-play-button').click
  sleep(3)
  page.find('button.ytp-play-button').click
  sleep(3)
  #Next
  page.find('a.ytp-next-button').click
  sleep(3)
end