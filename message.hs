{-# LANGUAGE DeriveGeneric #-}
import GHC.Generics
import System.Environment
import Data.Aeson
import qualified Data.ByteString.Lazy.Char8 as BS

-- {
--     type: 'post',
--     text: String,
--     channel: optional String,
--     root: optional MsgLink,
--     branch: optional MsgLink,
--     recps: optional FeedLinks,
--     mentions: optional Links
-- }
data Post = Post {
    text     :: String
  , channel  :: Maybe String
  , root     :: Maybe MsgLink
  , branch   :: Maybe MsgLink
  , recps    :: Maybe [FeedLink]
  , mentions :: Maybe [Link]
} deriving (Generic, Show)

instance ToJSON Post

post = Post {
    text     = "this is some text"
  , channel  = Nothing
  , root     = Nothing
  , branch   = Nothing
  , recps    = Nothing
  , mentions = Nothing
}

type MsgLink = String
type FeedLink = String
type Link = String

-- print the json to stdout
-- @TODO parse cli args
main = do
    BS.putStrLn $ encode post
    mapM_ putStrLn =<< getArgs

-- `=<<` is a neat little thing. I don't know how to articulate what it is,
-- but somehow I knew to put it here. We could also have written this like
-- `args` <- getArgs
-- mapM_ putStrLn args
--
-- `<-` assigns the result of IO, and `=<<` ... must return the result of
-- IO to the next function






