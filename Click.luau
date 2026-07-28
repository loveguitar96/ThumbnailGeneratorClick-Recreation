local viewportFrame = script.Parent
local starterCharacter = viewportFrame:WaitForChild("World")

local camera = Instance.new("Camera")
camera.Name = "Camera"
camera.DiagonalFieldOfView = 109.24 -- i wish i couldve used fov but whatever it works
camera.Parent = viewportFrame

viewportFrame.CurrentCamera = camera

local orientation = Vector3.new(-23.927, -153.659, 0) -- the real service looked at the lookvector and changed it depending on that but this is fine it works yeah wow uh

local function getCameraOffset(fov, extentsSize)
	local halfSize = extentsSize.Magnitude / 2
	local fovDivisor = math.tan(math.rad(fov / 2))
	return halfSize / fovDivisor
end

local function zoomToExtents(camera, instance)
	local isModel = instance:IsA("Model") -- is it??

	local instanceCFrame = isModel and instance:GetModelCFrame() or instance.CFrame
	local extentsSize = isModel and instance:GetExtentsSize() or instance.Size

	local cameraOffset = getCameraOffset(camera.FieldOfView, extentsSize)

	local cameraRotation = CFrame.fromOrientation(
		math.rad(orientation.X),
		math.rad(orientation.Y),
		math.rad(orientation.Z)
	)

	local instancePosition = instanceCFrame.Position

	camera.CFrame = cameraRotation
		+ instancePosition
		+ (-cameraRotation.LookVector * cameraOffset)
		+ (-cameraRotation.LookVector * .5) -- it likes to zoom in a bit so i gotta zoom it out a bit, .5 studs should do it ig
	camera.Focus = CFrame.new(instancePosition)
end

zoomToExtents(camera, starterCharacter)