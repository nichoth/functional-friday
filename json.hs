{-# LANGUAGE DeriveGeneric #-}
import GHC.Generics
import Data.Aeson
import qualified Data.ByteString.Lazy.Char8 as BS

-- we need Data.Aeson for ToJSON and encode
-- BS is for working with bytestrings, which is the return value from
-- `encode`

-- create a type with componenets for the json fields
-- `Person` uses the record syntax. This is a type that takes  arguments
-- for each field.
data Person = Person {
    name :: String
  , age  :: Int
} deriving (Generic, Show)


-- http://learnyouahaskell.com/making-our-own-types-and-typeclasses#typeclasses-102
instance ToJSON Person

main = do
    BS.putStrLn $ encode (Person {name = "blarg", age = 7})



