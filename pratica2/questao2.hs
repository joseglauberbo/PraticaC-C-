pegandoDivisores :: Int -> [Int]
pegandoDivisores num = [ x | x <- [1 .. num-1], ((mod num x) == 0)]

numeroPerfeito :: Int -> Bool
numeroPerfeito num
	| ((sum (pegandoDivisores num)) == num) = True
	| otherwise = False	

main = do
	input1 <- getLine
	let result = numeroPerfeito (read input1) 
	print result
