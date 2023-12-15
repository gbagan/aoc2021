module AOC.Util where
import           AOC.Prelude
import           AOC.List (count)
import           Relude.Unsafe ((!!))
import qualified Data.HashMap.Strict as HMap
import           AOC.V2 (V2(..))

freqs :: Hashable a => [a] -> HashMap a Int
freqs = HMap.fromListWith (+) . map (,1)
{-# INLINE freqs #-}

majority :: (a -> Bool) -> [a] -> Bool
majority f l = 2 * count f l >= length l

median :: Ord a => [a] -> a
median l = sort l !! (length l `div` 2)

cartesianProduct :: [a] -> [b] -> [(a, b)]
cartesianProduct l1 l2 = (,) <$> l1 <*> l2
{-# INLINE cartesianProduct #-}

clamp :: Ord a => (a, a) -> a -> a
clamp (l, u) = max l . min u
{-# INLINE clamp #-}

listTo2dMap :: [[a]] -> HashMap (V2 Int) a
listTo2dMap l =
    HMap.fromList
        [(V2 i j, v)
        | (i, row) <- zip [0..] l
        , (j, v) <- zip [0..] row
        ]

binToInt :: [Bool] -> Int
binToInt = foldl' (\acc x -> acc * 2 + fromEnum x) 0

