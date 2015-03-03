# base pair frequency
pi <- c(0.25, 0.25, 0.25, 0.25)
# bases
x <- c('A','C','G','T')
# specify number of sequences desired
numOfSeqs <- 1000
# create random sequences
seqs <- rep (NA, numOfSeqs)
for (i in 1:numOfSeqs)
+ {
+ seqs[i] <- paste(sample(x, 41, replace=TRUE, pi), collapse = '')
+ }


# create FASTA tags
 output <- rep (NA, 1)
# > output
# [1] NA
for (count in 1:numOfSeqs)
+ {
	output = c(output, paste("> seq", count))
 + }


#> output
# [1] NA         "> seq 1"  "> seq 2"  "> seq 3"  "> seq 4"  "> seq 5" 
# [7] "> seq 6"  "> seq 7"  "> seq 8"  "> seq 9"  "> seq 10"

# fix to modOutput without NA start
mSeqs <- numOfSeqs + 1
modOutput = output[2:mSeqs]
# > modOutput
# [1] "> seq 1"  "> seq 2"  "> seq 3"  "> seq 4"  "> seq 5"  "> seq 6" 
# [7] "> seq 7"  "> seq 8"  "> seq 9"  "> seq 10"


 # length for output vector
 totalText = numOfSeqs*2

 # Output
 textOut <- NA

# create FASTA file with sequences
 for (count in 1:totalText){
	if(count%%2 == 1){
		a <- count + 1
		b <- a/2
		textOut[count] <- modOutput[b]
	}
	else{
		c <- count/2
		textOut[count] <- seqs[c] 
	}
}

# output to file
# change file name to what's desired
write(textOut, file = "same1000", append = FALSE, sep = " ")