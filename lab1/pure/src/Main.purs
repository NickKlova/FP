module Main where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import Data.List

singleton :: forall a. a -> List a
singleton a = a : Nil

null :: forall a. List a -> Boolean
null Nil = true
null _ = false

snoc :: forall a. List a -> a -> List a
snoc list add = reverse (add : reverse list)

length :: forall argument. List argument -> Int
length Nil = 0
length (Cons _ list) = 1 + length list

main :: Effect Unit
main = do
    log ("For test.")