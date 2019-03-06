library(BETS)
library(dplyr)

print('BETSsearch')
df_roraima <- BETSsearch('RORAIMA')
code <- select(df,code)

write.csv(df_roraima, file='df_roraima.csv')

print('Starting loop')
for (i in 1:nrow(code)){
    print(paste('Saving ',code[i,],'...',sep=''))
    df <- BETSget(code[i,], data.frame=TRUE)
    path <- paste(code[i,],'.csv',sep='')
    write.csv(df, file=path)
}
