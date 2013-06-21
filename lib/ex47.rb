class Room
	attr_accessor :name, :description, :paths

	def initialize(name, description)
		@name = name
		@description = description
		@paths = {}
		@door = "unlocked"
	end

	def go(direction)
		if @door == "unlocked"
			@paths[direction]
		else
			"Door locked"
		end
	end

	def add_paths(paths)
		@paths.update(paths)
	end

	def door
		@door == "locked" ? @door = "unlocked" : @door = "locked"
	end
			
end