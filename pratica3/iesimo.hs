iesimoElemento :: Int -> [Int] -> Int
iesimoElemento indice lista = lista !! (indice-1)

main = do
	lista <- getLine
	indice <- getLine
	let resultado = iesimoElemento (read indice) (read lista)
	print resultado

 
 

