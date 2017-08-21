-- ## Make a new type ##
-- use the data keyword
data BookInfo = Book Int String [String]
                deriving (Show)

-- `BookInfo` is the name of the type. It must be capitalized.
-- BookInfo is a type constructor
-- `Book` is a value constructor (or data constructor). We use this to
-- create a value of the BookInfo type. Must be capitalized
-- `Int`, `String`, andd `[String]` are the *components* of the type.
-- A component in a type is like a field in a class or struct -- a
-- place to keep a value.
-- Here the Int could be an ID number, String is the title, and [String] is
-- a list of author names.
-- The `deriving (Show)` thing tells ghci how to print a value of this type

-- create a value of type Book
myInfo = Book 123 "Algebra World" ["Mr Person"]

-- in ghci you can do :info BookInfo


-- the `type` keyword creates a type synonym
type CustomerID = Int
type ReviewBody = Int

data BookReview = BookReview BookInfo CustomerID ReviewBody
-- I guess a data type like this is kind of like a struct


-- ## Algebraic data types ##
-- An algebraic data type can have more than one value constructor.
-- data Bool = False | True
-- The `|` is the union thing
-- each value constructor can have args
data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice CustomerID
                   deriving (Show)

type CardHolder = String
type CardNumber = String
type Address = [String]


-- two algebraic data types are different types even if they are
-- the same structurally


-- Pattern matching
-- if the type has more than one value constructor, we can use
-- pattern matching to tell which value constructor was used
myNot True = False
myNot False = True

-- haskell lets us define a function as a series of equations

sumList (x:xs) = x + sumList xs
sumList []     = 0
-- in `(x:xs)`, `:` is the list constructor, and we are using it to match
-- against a value. The list is made like `(1:(2:[]))`, and the pattern
-- match means x is 1 and xs is `2:[]`.

-- pattern matching reverses the process of constructing a value.

-- wildcard
example (x:xs) = x + example xs
example _      = 0  -- this is the default


-- records
data Customer = Customer {
    customerID      :: CustomerID
  , customerName    :: String
  , customerAddress :: Address
} deriving (Show)

-- for each of the fields in the definition, it creates an accessor fn
-- customerID :: Customer -> CustomerID

-- create a value
someCustomer = Customer {
        customerID = 123
      , customerAddress = ["123 street"]
      , customerName = "BLab"
      }
-- you can vary the order that you list the fields
-- see System.Time



-- ## Parameterized typed
-- see Maybe type
-- data Maybe a = Just a
--              | Nothing

-- `a` is a type variable. You can use Maybe on values of any type
someBool = Just True
someString = Just "something"

-- Maybe is a polymorphic type
-- give Maybe a type arg: Maybe Int

