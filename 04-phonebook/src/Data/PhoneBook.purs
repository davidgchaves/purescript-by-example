module Data.PhoneBook where

import Data.List
import Control.Plus (empty)

--
-- Type Definitions
--

-- The Entry 'type synomym':
--  A simple Record Type with 3 fields
type Entry = { firstName :: String, lastName :: String, phone :: String }

-- The PhoneBook 'type synonym':
--  List is a Type Constructor
--  The List Type Constructor takes a Type Argument (Entry) and constructs the new type List Entry
type PhoneBook = List Entry


--
-- Functions
--

showEntry :: Entry -> String
showEntry entry = entry.firstName ++ " " ++ entry.lastName ++ ": " ++ entry.phone
-- > :i Data.PhoneBook
-- > let xoan = { firstName: "Xoan", lastName: "Sen Medo", phone: "981-112233" }
-- > showEntry xoan
--      Compiling Data.PhoneBook
--      "Xoan Sen Medo: 981-112233"

emptyBook :: PhoneBook
emptyBook = empty

insertEntry :: Entry -> PhoneBook -> PhoneBook
insertEntry = Cons

