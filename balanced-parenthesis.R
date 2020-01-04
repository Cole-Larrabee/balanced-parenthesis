#Base r is all that is needed
library(base)

#this section removes all the non-brackets/parenthesis, and condenses the remaining brackets/parenthesis
parenthesis.validity <- function(string) {
paren <- gsub('[[:alnum:]]',"",string)
paren <- gsub("\\.|\\,|\\:|\\;|\\?|\\!|\\||\\\\|\\/|\\`|\\=|\\*|\\+|\\-|\\^|\\_|\\~|\\'|\\<|\\>|\\@|\\#|\\$"," ",paren)
paren <- gsub('[[:space:]]',"",paren)


#If the number of parenthesis is not even then the function returns FALSE
#The for loop iterates from 1 to sum(parenthesis)/2. This is the max number of groups of parenthesis
#Each type of parenthesis is run on each iteration to ensure all pairs are covered
#Once a match/pair is identified, it is removed from the string and the remaining parenthesis

  if((nchar(paren) %% 2) != 0) {
    print("FALSE")
} else {
    for (i in 1:((nchar(paren)/2))) {
      paren <- gsub("\\[]","  ",paren)
      paren <- gsub('[[:space:]]',"",paren)
      paren <- gsub("\\()","  ",paren)
      paren <- gsub('[[:space:]]',"",paren)
      paren <- gsub("\\{}","  ",paren)
      paren <- gsub('[[:space:]]',"",paren)
    }
  if(nchar(paren) == 0) {
   print("TRUE")
} else {
  print("FALSE")
  }
}
}

parenthesis.validity("enter sentence here")
