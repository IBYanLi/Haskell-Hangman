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
    putStrLn "   _ _ _" -- cat
    guess <- getLine
    putStrLn ("User input: " ++ guess)
    if guess == "c"
      -- c
      then guessc
      -- a
      else if guess == "a"
        then guessa
      -- t
        else if guess == "t"
          then guesst
      else guy1

------------------------------- C _ _

guessc :: IO()
guessc = do
  putStrLn ("   c _ _")
  guess <- getLine
  putStrLn ("User input: " ++ guess)
  if guess == "a"
    -- ca
    then guessca
    -- ct
    else if guess == "t"
      then guessct
    else guy2

-- C A _

guessca :: IO()
guessca = do
  putStrLn ("   c a _")
  guess <- getLine
  putStrLn ("User input: " ++ guess)
  if guess == "t"
    -- cat
    then
      putStrLn ("   c a t" ++ "\n" ++ "Congratulations, you won!")
    else guy3

-- C _ T

guessct :: IO()
guessct = do
  putStrLn ("   c _ t")
  guess <- getLine
  putStrLn ("User input: " ++ guess)
  if guess == "a"
    -- cat
    then
      putStrLn ("   c a t" ++ "\n" ++ "Congratulations, you won!")
    else guy3

------------------------------- _ A _
guessa :: IO()
guessa = do
  putStrLn ("   _ a _")
  guess <- getLine
  putStrLn ("User input: " ++ guess)
  if guess == "c"
    -- ca
    then guessac
    -- ct
    else if guess == "t"
      then guessat
    else guy2

-- C A _

guessac :: IO()
guessac = do
  putStrLn ("   c a _")
  guess <- getLine
  putStrLn ("User input: " ++ guess)
  if guess == "t"
    -- cat
    then
      putStrLn ("   c a t" ++ "\n" ++ "Congratulations, you won!")
    else guy3

-- _ A T

guessat :: IO()
guessat = do
  putStrLn ("   _ a t")
  guess <- getLine
  putStrLn ("User input: " ++ guess)
  if guess == "c"
    -- cat
    then
      putStrLn ("   c a t" ++ "\n" ++ "Congratulations, you won!")
    else guy3

-- _ _ T

guesst :: IO()
guesst = do
  putStrLn ("   _ _ t")
  guess <- getLine
  putStrLn ("User input: " ++ guess)
  if guess == "c"
    -- ca
    then guesstc
    -- ct
    else if guess == "a"
      then guessta
    else guy2

-- C _ T

guesstc :: IO()
guesstc = do
  putStrLn ("   c _ t")
  guess <- getLine
  putStrLn ("User input: " ++ guess)
  if guess == "a"
    -- cat
    then
      putStrLn ("   c a t" ++ "\n" ++ "Congratulations, you won!")
    else guy3

-- _ A T

guessta :: IO()
guessta = do
  putStrLn ("   _ a t")
  guess <- getLine
  putStrLn ("User input: " ++ guess)
  if guess == "c"
    -- cat
    then
      putStrLn ("   c a t" ++ "\n" ++ "Congratulations, you won!")
    else guy3

------------- HANGMAN IMAGES

guy1 :: IO()
guy1 = do
  putStrLn("      _______")
  putStrLn("     |       |")
  putStrLn( "     |      (_)")
  putStrLn( "     |")
  putStrLn( "     |")
  putStrLn( "     |")
  putStrLn( "    _|_")
  putStrLn( "   |   |______")
  putStrLn( "   |__________|")
  putStrLn( "\n")

guy2 :: IO ()
guy2 = do
  putStrLn "      _______"
  putStrLn "     |       |"
  putStrLn "     |      (_)"
  putStrLn "     |       |"
  putStrLn "     |"
  putStrLn "     |"
  putStrLn "    _|_"
  putStrLn "   |   |______"
  putStrLn "   |__________|"
  putStrLn "\n"

guy3 :: IO ()
guy3 = do
  putStrLn "      _______"
  putStrLn "     |       |"
  putStrLn "     |      (_)"
  putStrLn "     |      /|"
  putStrLn "     |"
  putStrLn "     |"
  putStrLn "    _|_"
  putStrLn "   |   |______"
  putStrLn "   |__________|"
  putStrLn "\n"

guy4 :: IO ()
guy4 = do
  putStrLn "      _______"
  putStrLn "     |       |"
  putStrLn "     |      (_)"
  putStrLn "     |      /|\\"
  putStrLn "     |"
  putStrLn "     |"
  putStrLn "    _|_"
  putStrLn "   |   |______"
  putStrLn "   |__________|"
  putStrLn "\n"

guy5 :: IO ()
guy5 = do
  putStrLn "      _______"
  putStrLn "     |       |"
  putStrLn "     |      (_)"
  putStrLn "     |      /|\\"
  putStrLn "     |      /"
  putStrLn "     |"
  putStrLn "    _|_"
  putStrLn "   |   |______"
  putStrLn "   |__________|"
  putStrLn "\n"

guy6 :: IO ()
guy6 = do
  putStrLn "      _______"
  putStrLn "     |       |"
  putStrLn "     |      (_)"
  putStrLn "     |      /|\\"
  putStrLn "     |      / \\"
  putStrLn "     |"
  putStrLn "    _|_"
  putStrLn "   |   |______"
  putStrLn "   |__________|"
  putStrLn "\n"
