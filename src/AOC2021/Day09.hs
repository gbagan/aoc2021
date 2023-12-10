module AOC2021.Day09 (solve) where
import           AOC.Prelude
import           Data.Char (digitToInt)
import qualified Data.HashMap.Strict as HMap
import           Data.Map.Lazy ((!))
import qualified Data.Map.Lazy as LMap
import           AOC (aoc)
import           AOC.Parser (Parser, digitChar, eol, sepEndBy1, some)
import           AOC.Util (adjacentPoints, freqs)

type Coord = (Int, Int)

parser :: Parser (Map Coord Int)
parser = listTo2dMap <$> line `sepEndBy1` eol where
        line = some (digitToInt <$> digitChar)

listTo2dMap :: [[a]] -> Map Coord a
listTo2dMap l =
    LMap.fromList
        [((i, j), v)
        | (j, row) <- zip [0..] l
        , (i, v) <- zip [0..] row
        ]

flow :: Map Coord Int -> Map Coord (Maybe Coord)
flow m = LMap.mapWithKey go m where
    go p v = find
                (\p2 -> LMap.findWithDefault 10 p2 m < v)
                (adjacentPoints p)

closure :: Map Coord (Maybe Coord) -> Map Coord Coord
closure m = cl where
        cl = LMap.mapWithKey (\p -> \case
                     Nothing -> p
                     Just c -> cl ! c
                  ) m

part1 :: Map Coord Int -> Int
part1 m = sum . map ((+1) . (m!) . fst) . filter (isNothing . snd) . LMap.toList . flow $ m 

part2 :: Map Coord Int -> Int
part2 = product . take 3 . sortOn Down . HMap.elems . freqs . LMap.elems . closure . flow . LMap.filter (<9)

solve :: Text -> IO ()
solve = aoc parser part1 part2
