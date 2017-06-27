recebeValor :: Bool -> Bool -> Bool -> String -> Bool

recebeValor x y z t = if (t == "AND")
						then (x && y && z)
						else (x || y || z)
						
main = do
	input1 <- getLine
	input2 <- getLine
	input3 <- getLine
	input4 <- getLine
	let result = recebeValor (read input1) (read input2) (read input3) input4
	print result
	
