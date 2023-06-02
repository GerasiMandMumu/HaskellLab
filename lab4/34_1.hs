{-# LANGUAGE OverloadedStrings #-}

module Main where

import qualified Data.Text as T
import qualified Data.Text.IO as TIO

import Palindrome (isPalindrome)

main :: IO ()
main = do
 TIO.putStrLn "Введите слово, чтобы узнать, является ли оно палиндромом."
 text <- TIO.getLine
 let response = if isPalindrome text
				then "Да, это палиндром."
				else "Нет, это не палиндром."
 TIO.putStrLn response