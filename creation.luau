local Workspace = game:GetService("Workspace")

-------------------------------------------------
-- CONFIGURACIÓN
-------------------------------------------------

local WIDTH = 60
local HEIGHT = 30

-------------------------------------------------
-- CREAR CARPETA
-------------------------------------------------

local folder = Instance.new("Folder")
folder.Name = "PongGame"
folder.Parent = Workspace

-------------------------------------------------
-- FUNCIÓN PARA CREAR PARTS
-------------------------------------------------

local function CreatePart(name,size,pos,color)

	local p = Instance.new("Part")

	p.Name = name

	p.Size = size

	p.Position = pos

	p.Anchored = true

	p.TopSurface = Enum.SurfaceType.Smooth

	p.BottomSurface = Enum.SurfaceType.Smooth

	p.Color = color

	p.Parent = folder

	return p

end

-------------------------------------------------
-- PISO
-------------------------------------------------

CreatePart(

	"Floor",

	Vector3.new(60,1,30),

	Vector3.new(0,0,0),

	Color3.fromRGB(60,60,60)

)

-------------------------------------------------
-- PARED SUPERIOR
-------------------------------------------------

CreatePart(

	"TopWall",

	Vector3.new(60,5,1),

	Vector3.new(0,2.5,15),

	Color3.fromRGB(255,255,255)

)

-------------------------------------------------
-- PARED INFERIOR
-------------------------------------------------

CreatePart(

	"BottomWall",

	Vector3.new(60,5,1),

	Vector3.new(0,2.5,-15),

	Color3.fromRGB(255,255,255)

)

-------------------------------------------------
-- PALETA IZQUIERDA
-------------------------------------------------

CreatePart(

	"LeftPaddle",

	Vector3.new(1,4,6),

	Vector3.new(-28,2,0),

	Color3.fromRGB(0,170,255)

)

-------------------------------------------------
-- PALETA DERECHA
-------------------------------------------------

CreatePart(

	"RightPaddle",

	Vector3.new(1,4,6),

	Vector3.new(28,2,0),

	Color3.fromRGB(255,0,0)

)

-------------------------------------------------
-- PELOTA
-------------------------------------------------

local ball = Instance.new("Part")

ball.Shape = Enum.PartType.Ball

ball.Name = "Ball"

ball.Size = Vector3.new(2,2,2)

ball.Position = Vector3.new(0,2,0)

ball.Color = Color3.new(1,1,1)

ball.Anchored = true

ball.Parent = folder
