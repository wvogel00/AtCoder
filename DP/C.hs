import Control.Monad
import Data.ByteString.Char8 as BS
import Data.Maybe

getLines = map (fromjust.BS.readInt). BS.words <$> BS.getLine

main = do
    n <- readLn :: IO Int
    xs <- replicateM n getLiness