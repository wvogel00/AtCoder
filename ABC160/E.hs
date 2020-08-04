import qualified Data.ByteString.Char8 as BS
import Data.Maybe
import Data.List

readBSList = map (fst.fromJust.BS.readInt).BS.words

main = do
    [x, y, _, _, _] <- readBSList <$> BS.getLine :: IO [Int]
    reds <- take x.reverse.sort.readBSList <$> BS.getLine :: IO [Int]
    greens <- take y.reverse.sort.readBSList <$> BS.getLine :: IO [Int]
    whites <- reverse.sort.readBSList <$> BS.getLine :: IO [Int]
    putStrLn.show $ answer x y reds greens whites

answer x y rs gs ws = sum.take' (x+y) rs gs ws where
    take' 0 = 0
    take k r g w = maximum [r,g,w] + take (k-1) (r // ) g w where
        v = maximum [r,g,w]