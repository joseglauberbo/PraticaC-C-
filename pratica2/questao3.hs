pegandoDivisores :: Int -> [Int]
pegandoDivisores num = [ x | x <- [1 .. num], ((mod num x) == 0)]

primo :: Int -> Bool
primo x = if (pegandoDivisores x) == [1,x] 
			then True
			else False

primoCasado :: Int -> String
primoCasado num 
	| primo(num) && primo(numSomado) = "PRIMO CASADO!"
	| primo(num) = "PRIMO!"
	| otherwise = "NAO PRIMO!"
	where numSomado = num + 2
	
main = do
	num <- getLine
	let result = primoCasado (read num) 
	print result

