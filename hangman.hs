-- type start to begin the game

start :: IO ()
start = do
    putStrLn "\n"
    putStrLn "Welcome to Haskell Hangman!"
    putStrLn "Guess the word and don't let the poor guy die."
    putStrLn "Type one letter at a time."
    putStrLn "      _______"
    putStrLn "     |"
    putStrLn "     |"
    putStrLn "     |"
    putStrLn "     |"
    putStrLn "     |"
    putStrLn "    _|_"
    putStrLn "   |   |______"
    putStrLn "   |__________|"
    putStrLn "\n"
    putStrLn "   _ _ _ _ _ _ _ _" -- keyboard
    guess <- getLine
    putStrLn ("User input: " ++ guess)
    if guess == "k"
      then putStrLn ("   k _ _ _ _ _ _ _")
      else if guess == "e"
        then putStrLn ("   _ e _ _ _ _ _ _")
        else if guess == "y"
          then putStrLn ("   _ _ y _ _ _ _ _")
          else if guess == "b"
            then putStrLn ("   _ _ _ b _ _ _ _")
            else if guess == "o"
              then putStrLn ("   _ _ _ _ o _ _ _")
              else if guess == "a"
                then putStrLn ("   _ _ _ _ _ a _ _")
                else if guess == "r"
                  then putStrLn ("   _ _ _ _ _ _ r _")
                  else if guess == "d"
                    then putStrLn ("   _ _ _ _ _ _ _ d")
      else do
        putStrLn "      _______"
        putStrLn "     |       |"
        putStrLn "     |      (_)"
        putStrLn "     |"
        putStrLn "     |"
        putStrLn "     |"
        putStrLn "    _|_"
        putStrLn "   |   |______"
        putStrLn "   |__________|"
        putStrLn "\n"