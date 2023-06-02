module Glitch (randomReverseBytes) where

import qualified Data.ByteString.Char8 as BC
import System.Random

reverseSection :: Int -> Int -> BC.ByteString -> BC.ByteString
reverseSection start size bytes = mconcat [before,changed,after]
  where (before,rest) = BC.splitAt start bytes
        (target,after) = BC.splitAt size rest
        changed =  BC.reverse target

randomReverseBytes :: BC.ByteString -> IO BC.ByteString
randomReverseBytes bytes = do
  let sectionSize = 25
  let bytesLength = BC.length bytes
  start <- randomRIO (0,(bytesLength - sectionSize))
  return (reverseSection start sectionSize bytes)