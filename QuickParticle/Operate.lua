local Operate = {}

function Operate.EmitAll(Parameter)
	
	local Parent = Parameter[1]
	local EmitDelay = Parameter[2] or task.wait()
	
	for Index , Value in Parent:GetDescendants() do
		
		task.delay(EmitDelay , function()
			
			if Value:IsA("ParticleEmitter") then
				
				if Value:GetAttribute("EmitDelay") then
					
					task.delay(Value:GetAttribute("EmitDelay") , function()
						
						Value:Emit(Value:GetAttribute("EmitCount"))
						
					end)
					
				else
					
					Value:Emit(Value:GetAttribute("EmitCount"))
					
				end
				
			end
			
		end)
		
	end
	
end

function Operate.EnableAll(Parameter)
	
	local Parent = Parameter[1]
	local EnableDelay = Parameter[2] or task.wait()
	
	for Index , Value in Parent:GetDescendants() do
		
		task.delay(EnableDelay , function()
			
			if Value:IsA("ParticleEmitter") or Value:IsA("Beam") then
				
				Value.Enabled = true
				
			end
			
		end)
		
	end
	
end

function Operate.DisableAll(Parameter)
	
	local Parent = Parameter[1]
	local DisableDelay = Parameter[2] or task.wait()
	
	for Index , Value in Parent:GetDescendants() do
		
		task.delay(DisableDelay , function()
			
			if Value:IsA("ParticleEmitter") or Value:IsA("Beam") then
				
				Value.Enabled = false
				
			end
			
		end)
		
	end
	
end

return Operate
