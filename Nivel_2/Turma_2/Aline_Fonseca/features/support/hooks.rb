<<<<<<< HEAD

Before do
	Capybara.reset_sessions!
end

After do |scenario|
Dir.mkdir('reports') unless Dir.exist?('reports')

	sufix = ('error' if scenario.failed?) || 'success'
	name = scenario.name.tr(' ', '_').downcase

	page.save_screenshot("report/#{sufix}-#{name}.png")
	embed("report/#{sufix}-#{name}.png", 'image/png', 'SCREENSHOT')
=======

Before do
	Capybara.reset_sessions!
end

After do |scenario|
Dir.mkdir('reports') unless Dir.exist?('reports')

	sufix = ('error' if scenario.failed?) || 'success'
	name = scenario.name.tr(' ', '_').downcase

	page.save_screenshot("report/#{sufix}-#{name}.png")
	embed("report/#{sufix}-#{name}.png", 'image/png', 'SCREENSHOT')
>>>>>>> 60cae5b1315000b6b6b60c06b7922a4de99409c0
end