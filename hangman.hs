import Data.Char (toLower)

-- create a record of the state of the game; how many guesses remain
data State = State 
  { guessesLeft :: Int
  , guessedChars :: String
  , targetWord :: String }


-- draws the man to screen
drawMan :: State -> IO ()
drawMan gs = do
  case guessesLeft gs of
    6 -> guy0;
    5 -> guy1;
    4 -> guy2;
    3 -> guy3;
    2 -> guy4;
    1 -> guy5;
    0 -> guy6;

-- draws the "_"-masked word with the new character added, or same if no match
drawWord :: State -> IO ()
drawWord gs = do 
  putStrLn ("   " ++ map mask (targetWord gs))
  where
    mask c 
      | elem c (guessedChars gs) = c -- if c is in the characters that have been guessed
      | otherwise = '_' -- otherwise, hide it


-- runs the game's functionality in a loop until the end
game :: State -> IO ()
game gs = do
  drawMan gs
  putStrLn("")
  drawWord gs
  putStrLn("")
  putStrLn("What is your next guess?")

initialize :: IO State
initialize = do
  putStrLn "What word would you like your friend to guess?"
  inWord <- getLine
  let lowerWord = map toLower inWord -- for consistency sake
  return (State 6 [] lowerWord)
   -- init with 6 guesses remaining, no letters guessed yet, and the word-to-be-guessed

main :: IO ()
main = do
    putStrLn "\n"
    putStrLn "Welcome to Haskell Hangman!"
    putStrLn "Guess the word and don't let the poor guy die."
    putStrLn "Type one letter at a time."
    
    gs <- initialize  -- will initialize gamestate on start
    game gs -- begin the game with fresh state

    -- if guess == "c"
    --   -- c
    --   then guessc
    --   -- a
    --   else if guess == "a"
    --     then guessa
    --   -- t
    --     else if guess == "t"
    --       then guesst
    --   else guy1

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

guy0 :: IO ()
guy0 = do
  putStrLn("      _______")
  putStrLn("     |")
  putStrLn("     |")
  putStrLn("     |")
  putStrLn("     |")
  putStrLn("     |")
  putStrLn("    _|_")
  putStrLn("   |   |______")
  putStrLn("   |__________|")

guy1 :: IO ()
guy1 = do
  putStrLn("      _______")
  putStrLn("     |       |")
  putStrLn("     |      (_)")
  putStrLn("     |")
  putStrLn("     |")
  putStrLn("     |")
  putStrLn("    _|_")
  putStrLn("   |   |______")
  putStrLn("   |__________|")

guy2 :: IO ()
guy2 = do
  putStrLn("      _______")
  putStrLn("     |       |")
  putStrLn("     |      (_)")
  putStrLn("     |       |")
  putStrLn("     |")
  putStrLn("     |")
  putStrLn("    _|_")
  putStrLn("   |   |______")
  putStrLn("   |__________|")

guy3 :: IO ()
guy3 = do
  putStrLn("      _______")
  putStrLn("     |       |")
  putStrLn("     |      (_)")
  putStrLn("     |      /|")
  putStrLn("     |")
  putStrLn("     |")
  putStrLn("    _|_")
  putStrLn("   |   |______")
  putStrLn("   |__________|")

guy4 :: IO ()
guy4 = do
  putStrLn("      _______")
  putStrLn("     |       |")
  putStrLn("     |      (_)")
  putStrLn("     |      /|\\")
  putStrLn("     |")
  putStrLn("     |")
  putStrLn("    _|_")
  putStrLn("   |   |______")
  putStrLn("   |__________|")

guy5 :: IO ()
guy5 = do
  putStrLn("      _______")
  putStrLn("     |       |")
  putStrLn("     |      (_)")
  putStrLn("     |      /|\\")
  putStrLn("     |      /")
  putStrLn("     |")
  putStrLn("    _|_")
  putStrLn("   |   |______")
  putStrLn("   |__________|")

guy6 :: IO ()
guy6 = do
  putStrLn("      _______")
  putStrLn("     |       |")
  putStrLn("     |      (_)")
  putStrLn("     |      /|\\")
  putStrLn("     |      / \\")
  putStrLn("     |")
  putStrLn("    _|_")
  putStrLn("   |   |______")
  putStrLn("   |__________|")
