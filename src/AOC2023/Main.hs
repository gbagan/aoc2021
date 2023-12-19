module Main where
import           AOC.Prelude
import qualified Data.Map.Strict as Map
import qualified AOC2023.Day01 (solve)
import qualified AOC2023.Day02 (solve)
import qualified AOC2023.Day03 (solve)
import qualified AOC2023.Day04 (solve)
import qualified AOC2023.Day05 (solve)
import qualified AOC2023.Day06 (solve)
import qualified AOC2023.Day07 (solve)
import qualified AOC2023.Day08 (solve)
import qualified AOC2023.Day09 (solve)
import qualified AOC2023.Day10 (solve)
import qualified AOC2023.Day11 (solve)
import qualified AOC2023.Day12 (solve)
import qualified AOC2023.Day13 (solve)
import qualified AOC2023.Day14 (solve)
import qualified AOC2023.Day15 (solve)
import qualified AOC2023.Day16 (solve)
import qualified AOC2023.Day17 (solve)
import qualified AOC2023.Day18 (solve)
import qualified AOC2023.Day19 (solve)
import qualified AOC2023.Day20 (solve)
import           AOC (aocMain)

solutions :: Map String (Text -> IO ())
solutions = Map.fromList
            [   ("01", AOC2023.Day01.solve)
            ,   ("02", AOC2023.Day02.solve)
            ,   ("03", AOC2023.Day03.solve)
            ,   ("04", AOC2023.Day04.solve)
            ,   ("05", AOC2023.Day05.solve)
            ,   ("06", AOC2023.Day06.solve)
            ,   ("07", AOC2023.Day07.solve)
            ,   ("08", AOC2023.Day08.solve)
            ,   ("09", AOC2023.Day09.solve)
            ,   ("10", AOC2023.Day10.solve)
            ,   ("11", AOC2023.Day11.solve)
            ,   ("12", AOC2023.Day12.solve)
            ,   ("13", AOC2023.Day13.solve)
            ,   ("14", AOC2023.Day14.solve)
            ,   ("15", AOC2023.Day15.solve)
            ,   ("16", AOC2023.Day16.solve)
            ,   ("17", AOC2023.Day17.solve)
            ,   ("18", AOC2023.Day18.solve)
            ,   ("19", AOC2023.Day19.solve)
            ,   ("20", AOC2023.Day20.solve)
            ]

main :: IO ()
main = aocMain "2023" solutions