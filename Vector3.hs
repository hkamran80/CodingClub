module Vector3 
( Vector3
, add
, sub
, mul
, dot
, cross
, lensq
, len
, norm
) where



import Control.Applicative
import qualified Data.Foldable as F



data Vector3 a = Vec3 a a a deriving (Eq, Show)



instance Functor Vector3 where
    fmap f (Vec3 x y z) = Vec3 (f x) (f y) (f z)

instance Applicative Vector3 where
    pure x = Vec3 x x x
    (Vec3 fx fy fz) <*> (Vec3 x y z) = Vec3 (fx x) (fy y) (fz z)

instance F.Foldable Vector3 where
    foldr f n (Vec3 x y z) = f x (f y (f z n))



add :: Floating a => Vector3 a -> Vector3 a -> Vector3 a
add u v = (+) <$> u <*> v

sub :: Floating a => Vector3 a -> Vector3 a -> Vector3 a
sub u v = (-) <$> u <*> v

mul :: Floating a => a -> Vector3 a -> Vector3 a
mul n v = (* n) <$> v

dot :: Floating a => Vector3 a -> Vector3 a -> a
dot u v = F.foldr (+) 0 ((*) <$> u <*> v)

cross :: Floating a => Vector3 a -> Vector3 a -> Vector3 a
cross u v = (-) <$> ((*) <$> rotatec u <*> rotate v) <*> ((*) <$> rotate u <*> rotatec v) where
    rotate (Vec3 x y z) = Vec3 z x y
    rotatec (Vec3 x y z) = Vec3 y z x

lensq :: Floating a => Vector3 a -> a
lensq v = dot v v

len :: Floating a => Vector3 a -> a
len = sqrt . lensq

norm :: Floating a => Vector3 a -> Vector3 a
norm v = (/ len v) <$> v
