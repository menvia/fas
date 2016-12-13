class Fas
  def self.init(lane)
  	if lane.nil?
  		puts 'You need to define a lane'
  	else 
	  	# Load fas.json file
		require 'json'
		file = File.read('fas.json')
		data_hash = JSON.parse(file)

		# Require base libraries
		require 'fileutils'
		require 'zip'

		# First of all, perform all base actions
		data_hash['actions'].each do |action|
			executeAction(action)
		end

		# Now run lane specific actions
		data_hash['lanes'].each do |currentLane|
			if currentLane['name'] == lane
				currentLane['actions'].each do |action|
					executeAction(action)
	  			end
			end
		end

		# That is it!
		puts 'Done!'
	end
  end

  def self.executeAction(action)
  	actionType = action['type']
  	actionScript = action['action']
  	case actionType
	when 'git'
	  system('git ' + actionScript)
	when 'rm'
	  File.delete(*Dir.glob(actionScript))
	when 'rmdir'
	  FileUtils.rm_rf(Dir.glob(actionScript))
	when 'search'
	  puts Dir.glob(actionScript)
	when 'unzip'
		Zip::File.open(actionScript) do |zipfile|
		  zipfile.each do |entry|
		    # The 'next if...' code can go here, though I didn't use it
		    unless File.exist?(entry.name)
		      FileUtils::mkdir_p(File.dirname(entry.name))
		      zipfile.extract(entry, entry.name) 
		    end
		  end
		end
	else
	  return "puts 'Warning! Non supported type: " + actionType + "'"
	end
  end
end