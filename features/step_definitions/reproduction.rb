Then("I check visualization") do
  page.has_css?("#movie_player > div.html5-video-container > video")
end