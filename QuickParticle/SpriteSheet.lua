return function(Parameter)
	
	local DefaultParticle = Instance.new("ParticleEmitter")
	DefaultParticle.Name = "Default"
	
	local ParticlePreset = Parameter[1] or script.Default
	local SpriteSheet = Parameter[2] or warn('No textures passed!')
	local Parent = Parameter[3] or warn('No parent set!')
	DefaultParticle.Parent = Parent
	local EmitCount = Parameter[4] or 10
	local FrameTime = Parameter[5] or 0.03
	local DebrisDelay = Parameter[6] or 0
	
	for Index = 1 , EmitCount do
		
		local Particle = ParticlePreset:Clone()
		Particle.Parent = Parent
		Particle:Emit(1)
		
		task.spawn(function()
			
			for Index , Value in SpriteSheet do
				Particle.Texture = Value
				task.wait(FrameTime)
			end
			
			game:GetService('Debris'):AddItem(Particle, Particle.Lifetime.Max + DebrisDelay)
			
		end)
		
	end
	
end
