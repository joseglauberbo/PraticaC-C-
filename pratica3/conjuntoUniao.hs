existe :: Int -> [Int] -> Bool

existe num [] = False
existe num (head:tail) = if head == num 
							then True 
						else existe num tail
 
sem_intercessao :: [Int] -> [Int] -> [Int]
sem_intercessao [] lista1 = []
sem_intercessao lista2 [] = []
sem_intercessao (head:tail) lista1 = 
    if existe head lista1 
    then 
        [] ++ sem_intercessao tail lista1
    else
        [head] ++ sem_intercessao tail lista1
 
uniao :: [Int] -> [Int] -> [Int]
uniao lista1 lista2 = lista1 ++ sem_intercessao lista2 lista1
 
main = do
  lista1 <- getLine
  lista2 <- getLine
  print (uniao (read lista1) (read lista2))
