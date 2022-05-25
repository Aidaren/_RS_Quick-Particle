local Weld = {}

function Weld.CreateWeld(Parameter)
	
	local Part0 = Parameter[1]
	local Part1 = Parameter[2]
	local WeldName = Parameter[3] or "Weld"
	local C0 = Parameter[4] or CFrame.new(0,0,0)
	
	local Weld = Instance.new('Weld')
	Weld.Part0 = Part0
	Weld.Part1 = Part1
	Weld.Parent = Part0
	Weld.Name = WeldName
	
end

function Weld.BreakWeld(Parameter)
	
	local WeldParent = Parameter[1]
	local WeldName = Parameter[2] or "Weld"
	local DestoryDelay = Parameter[3] or nil
	
	if DestoryDelay then
		game:GetService("Debris"):AddItem(WeldParent:FindFirstChild(WeldName) , DestoryDelay)
	else
		game:GetService("Debris"):AddItem(WeldParent:FindFirstChild(WeldName) , task.wait())
	end
	
end

return Weld
