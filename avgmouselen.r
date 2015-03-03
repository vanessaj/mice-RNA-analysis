# calculate avg mouse RNA length

# have all mice seqs as "mice" vector

count <- 0
# find length
length(mice)
#[1] 412
# set length
mouselen <- length(mice)
for (i in 1:mouselen)
{
count <- count + nchar(mice[i])
}
# calculate avg
count/mouselen
#[1] 40.51456