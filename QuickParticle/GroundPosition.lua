return function(Parameter)
	
	local Part = Parameter[1]
	local IgnoreList = Parameter[2] or Part
	
	local RaycastParameters = RaycastParams.new()
	RaycastParameters.FilterDescendantsInstances = IgnoreList
	RaycastParameters.FilterType = Enum.RaycastFilterType.Blacklist
	local Hit = workspace:Raycast(Part.Position, Part.CFrame.UpVector * -10, RaycastParameters)
	return Hit.Position
	
end
