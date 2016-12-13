## Generate a new version 

gem build fas.gemspec
gem install ./fas-0.0.0.gem
gem push fas-0.0.0.gem

https://rubygems.org/gems/fas

## fas.json structure
{
	"actions": [],
	"targetActions": [{
		"target": "",
		"actions": []
	}]
}

Example: 
{
	"actions": [],
	"targetActions": [{
		"target": "",
		"actions": []
	}]
}