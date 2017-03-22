

Before do
	Capybara.reset_sessions!
end

After do |scenario|
Dir.mkdir('report_screenshots') unless Dir.exist?('report_screenshots')

	sufix = ('error' if scenario.failed?) || 'success'
	name = scenario.name.tr(' ', '_').downcase	
	time = "#{Time.now.strftime('%Y-%m-%d_%H-%M-%S')}"

	page.save_screenshot("report_screenshots/#{sufix}-#{name + "-#{time}"}.png")	
	embed("report_screenshots/#{sufix}-#{name + "-#{time}"}.png", 'image/png', 'SCREENSHOT')
end