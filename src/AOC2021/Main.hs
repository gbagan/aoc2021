module Main where
import           Relude
import           AOC (aocMain)
import qualified Data.Map.Strict as Map
import qualified AOC2021.Day01 (solve)
import qualified AOC2021.Day02 (solve)
import qualified AOC2021.Day03 (solve)
import qualified AOC2021.Day04 (solve)
import qualified AOC2021.Day05 (solve)
import qualified AOC2021.Day06 (solve)
import qualified AOC2021.Day07 (solve)
import qualified AOC2021.Day08 (solve)
import qualified AOC2021.Day09 (solve)
import qualified AOC2021.Day10 (solve)
import qualified AOC2021.Day11 (solve)
import qualified AOC2021.Day12 (solve)
import qualified AOC2021.Day13 (solve)
import qualified AOC2021.Day14 (solve)
import qualified AOC2021.Day15 (solve)
import qualified AOC2021.Day16 (solve)
import qualified AOC2021.Day17 (solve)
import qualified AOC2021.Day18 (solve)
import qualified AOC2021.Day19 (solve)
import qualified AOC2021.Day20 (solve)
import qualified AOC2021.Day21 (solve)
import qualified AOC2021.Day22 (solve)
import qualified AOC2021.Day23 (solve)
import qualified AOC2021.Day24 (solve)
import qualified AOC2021.Day25 (solve)

solutions :: Map String (Text -> IO ())
solutions = Map.fromList
            [   ("01", AOC2021.Day01.solve)
            ,   ("02", AOC2021.Day02.solve)
            ,   ("03", AOC2021.Day03.solve)
            ,   ("04", AOC2021.Day04.solve)
            ,   ("05", AOC2021.Day05.solve)
            ,   ("06", AOC2021.Day06.solve)
            ,   ("07", AOC2021.Day07.solve)
            ,   ("08", AOC2021.Day08.solve)
            ,   ("09", AOC2021.Day09.solve)
            ,   ("10", AOC2021.Day10.solve)
            ,   ("11", AOC2021.Day11.solve)
            ,   ("12", AOC2021.Day12.solve)
            ,   ("13", AOC2021.Day13.solve)
            ,   ("14", AOC2021.Day14.solve)
            ,   ("15", AOC2021.Day15.solve)
            ,   ("16", AOC2021.Day16.solve)
            ,   ("17", AOC2021.Day17.solve)
            ,   ("18", AOC2021.Day18.solve)
            ,   ("19", AOC2021.Day19.solve)
            ,   ("20", AOC2021.Day20.solve)
            ,   ("21", AOC2021.Day21.solve)
            ,   ("22", AOC2021.Day22.solve)
            ,   ("23", AOC2021.Day23.solve)
            ,   ("24", AOC2021.Day24.solve)
            ,   ("25", AOC2021.Day25.solve)
            ]

main :: IO ()
main = aocMain "2021" solutions