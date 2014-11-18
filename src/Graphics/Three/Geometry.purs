module Graphics.Three.Geometry where

import           Control.Monad.Eff
import           Data.Function
import           Graphics.Three.Types
import           Graphics.Three.Util

foreign import data Geometry :: *

createBox :: forall eff. Number -> 
                         Number -> 
                         Number -> 
                         Eff (three :: Three | eff) Geometry
createBox = ffi ["width", "height", "depth", ""] 
    "new THREE.BoxGeometry(width, height, depth)"

createCircle :: forall eff. Number -> 
                            Number -> 
                            Number -> 
                            Number -> 
                            Eff (three :: Three | eff) Geometry
createCircle = ffi ["radius", "segments", "thetaStart", "thetaLength", ""] 
    "new THREE.CircleGeometry(radius, segments, thetaStart, thetaLength)"

{--
foreign import createCircle 
    "var circle = new THREE.CircleGeometry(radius, segments, thetaStart, thetaLength)" 
    :: Number -> Number -> Number -> Number -> Geometry
--}
