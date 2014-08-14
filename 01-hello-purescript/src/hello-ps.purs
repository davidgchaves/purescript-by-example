-- Every PureScript file begins with a module header
-- A module name consists of one or more capitalized words separated by dots
module Hello.Ps where

-- Importing a Module: Use the module full name (including dots)
import Debug.Trace

-- The main program is defined as a function application (like in Haskell)
main = trace "Hello, PureScript!"

-- Build the code, redirect the output, set the main module and remove unused code:
-- $ psc src/hello-ps.purs --output dist/Main.js --main Hello.Ps --module Hello.Ps
--
-- Run the code using NodeJS:
-- $ node dist/Main.js
--
-- Alternatively you can use Grunt and Grunt-PureScript to compile the code:
-- $ grunt
