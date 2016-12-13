## Generate a new version 

```
gem build fas.gemspec
gem install ./fas-0.0.0.gem
gem push fas-0.0.0.gem
```

Ruby Gems: https://rubygems.org/gems/fas

## fas.json structure
```
{
	"actions": [{
		"type": "", 
		"action":  ""
	}],
	"lanes": [{
		"name": "",
		"actions": [{
			"type": "", 
			"action":  ""
		}]
	}]
}
```
