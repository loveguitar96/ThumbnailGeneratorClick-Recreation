# ThumbnailGenerator:Click Recreation
a modern roblox thumbnailgenerator recreation for ViewportFrames

NOTE: this was mainly meant for my use, some stuff will be a bit wonky so you're on your own to fix that

# SETUP
if you haven't already, create a ViewportFrame
next, create a WorldModel and place it in the new ViewportFrame as a child, name it "World"
place anything inside the new World object, like a character or model, anything would work basically
and finally, insert the Click.luau script and place it inside the ViewportFrame as a child

# DO I NEED TO DO ANYTHING ELSE?
after doing the setup process, no! just load the script every time something changed in the model and it will work flawlessly

# DETAILS ON HOW IT WORKS
when running the game, it'll create a new camera, set the FOV to 80, and replicate the ZoomToExtents service, which basically zooms into the model you put in the World object
it will then change the orientation of the camera to -23.927, -153.659, 0 which is commonly used by the ThumbnailGenerator service
it will finally then zoom the camera out by 0.5 studs, because the replicated ZoomToExtents service ain't perfect and zooms in a bit too far

you're done!!!! go have fun ig

# FEW EXAMPLE IMAGES

<img src="https://raw.githubusercontent.com/loveguitar96/ThumbnailGeneratorClick-Recreation/refs/heads/main/Screenshot%202026-07-27%20190349.png">
<img src="https://raw.githubusercontent.com/loveguitar96/ThumbnailGeneratorClick-Recreation/refs/heads/main/Screenshot%202026-07-27%20190459.png">
<img src="https://raw.githubusercontent.com/loveguitar96/ThumbnailGeneratorClick-Recreation/refs/heads/main/Screenshot%202026-07-27%20191421.png">
<img src="https://raw.githubusercontent.com/loveguitar96/ThumbnailGeneratorClick-Recreation/refs/heads/main/Screenshot%202026-07-27%20193018.png">
