module Geometry
( sphereVolume
, sphereArea
, cubeVolume
, cubbeArea
, cuboidArea
, cuboidVolume
) where

sphereVolumn :: Float -> Float
sphereVolumn redius = (4.0 / 3.0) * pi (radius ^ 3)

sphereArea :: Float -> Float
sphereArea radius = 4 * pi * (radius ^ 2)

cubeVolume :: Float -> Float
cubeVolume side = cuboidVolume side side side

cubeArea :: Float -> Float
cubeArea side = cuboidArea side side side


