module Data.PhoneBook where

import Data.List

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

