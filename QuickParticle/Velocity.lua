return function(Parameter)
	
	local Parent = Parameter[1]
	local Strength = Parameter[2] or Vector3.new(1,1,1)
	local DestoryDelay = Parameter[3] or 0.25
	
	local Velocity = Instance.new('BodyVelocity')
	Velocity.Name = 'Velocity'
	Velocity.MaxForce = Vector3.new(1, 1, 1) * math.huge
	Velocity.Velocity = Strength
	Velocity.Parent = Parent
	
	game:GetService('Debris'):AddItem(Velocity , DestoryDelay)
	
	return Velocity
	
end
