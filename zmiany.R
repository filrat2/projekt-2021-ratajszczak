kupno = function(x, y){
  
  if (x / y){
    cat(paste("Jeśli zapłacisz", x, "zł,", "dostaniesz", (x / y), 
              "wartości waluty."))
  }
}

kupno(130, EUR) 


sprzedaz = function(x, y){
  
  if (x * y){
    cat(paste("Jeśli sprzedasz liczbę",x ,"wartosci waluty,","dostaniesz",
              (x * y), "zł." ))
  } 
}
sprzedaz(100, EUR) 

