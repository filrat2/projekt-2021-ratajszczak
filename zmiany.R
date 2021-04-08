kupno = function(x, y){
    if (x / y){
    cat(paste("Jeśli zapłacisz", x, "zł,", "dostaniesz", (x / y), 
              print(substitute(y))))
  }
}

kupno(100, EUR) 


sprzedaz = function(x, y){
    if (x * y){
    cat(paste("Jeśli sprzedasz",x ,print(substitute(y)),"dostaniesz",
              (x * y), "zł." ))
  } 
}

sprzedaz(100, EUR) 
