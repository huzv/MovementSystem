local Config = {}

Config.Animations = {
	-- Core Movement
	Idle = "rbxassetid://129167975194921",
	Walk = "rbxassetid://74963412878972",
	WalkRight = "rbxassetid://114205522791235",
	WalkLeft = "rbxassetid://136134434673460",
	WalkBack = "rbxassetid://77112087610941",
	Run = "rbxassetid://136386628895137",
	RunRight = "rbxassetid://92724030819177",
	RunLeft = "rbxassetid://125003218636821",
	RunBack = "rbxassetid://104984778796082",

	-- Airborne
	Jump = "rbxassetid://130696136156582",
	Fall = "rbxassetid://72187710173713",
	Land = "rbxassetid://75344337329271",

	-- Transitions
	WalkEnd = "rbxassetid://136433742730200",
	RunEnd = "rbxassetid://124941670189832",
	RunToWalk = "rbxassetid://133774517771841",
	WalkToRun = "rbxassetid://114928645188193",
	BackWalkEnd = "rbxassetid://105772350584480",
	LeftWalkEnd = "rbxassetid://98942161021579",
	RightWalkEnd = "rbxassetid://105892748863301",
}

-- Movement Default
Config.Movement = {
	BaseWalkSpeed = 16,
	BaseRunSpeed = 32,
	BaseJumpPower = 50,
	-- How fast the character rotates to face movement direction (radians/sec)
	TurnSpeed = 10,
}

-- Camera Default
Config.Camera = {
	-- Mouse sensitivity
	Sensitivity = 0.25,
	-- Vertical look limits
	MinPitch = -75,
	MaxPitch = 75,
	-- Zoom
	DefaultZoom = 12,
	MinZoom = 4,
	MaxZoom = 30,
	ZoomStep = 2,
	ZoomSmoothing = 10, -- interpolation speed

	-- Camera offset from character root
	DefaultOffset = Vector3.new(0, 2, 0),
	-- ShiftLock shoulder offset (right shoulder)
	ShiftLockOffset = Vector3.new(1.75, 2, 0),
	-- Collision
	CollisionRadius = 0.5, -- radius of the sphere used for wall collision raycasting
}

-- Transition Durations
Config.AnimationBlend = {
	DefaultFade = 0,
	TransitionFade = 0,
	JumpFade = 0,
	LandFade = 0,
}

return Config
