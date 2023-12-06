-- https://adventofcode.com/2023/day/6
module AOC2023.Day06 (solve) where
import           RIO
import           RIO.Partial (read)
import           Text.Megaparsec (sepEndBy1)
import           Text.Megaparsec.Char (char, eol, string)
import           Text.Megaparsec.Char.Lexer (decimal)
import           Util (Parser, aoc)

type Input = ([Int], [Int])

parser :: Parser Input
parser = (,) <$> (string "Time:" *> list) <*> (eol *> "Distance:" *> list) where
    list = many (char ' ') *> decimal `sepEndBy1` some (char ' ')

solveWith :: (Input -> [(Int, Int)]) -> Input -> Int
solveWith f = product . map raceScore . f where
    raceScore (t', d') = floor root2 - ceiling root1 + 1 where
        t = fromIntegral t' :: Double
        d = fromIntegral d' :: Double
        delta = sqrt (t*t - 4*d)
        root1 =  (t - delta) / 2
        root2 =  (t + delta) / 2


parsePart2 :: Input -> [(Int, Int)]
parsePart2 (l1, l2) = [(f l1, f l2)] where
    f = read . concatMap show

solve :: MonadIO m => Text -> m ()
solve = aoc parser (solveWith $ uncurry zip) (solveWith parsePart2)



 -- [0..t] & count \x -> x*(t-x) > d