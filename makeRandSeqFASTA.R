# base pair frequency
pi <- c(0.234, 0.286, 0.242, 0.238)
# bases
x <- c('A','C','G','T')
# specify number of sequences desired
numOfSeqs <- 100
# create random sequences
seqs <- rep (NA, numOfSeqs)
for (i in 1:numOfSeqs)
	{
		seqs[i] <- paste(sample(x, 41, replace=TRUE, pi), collapse = '')
	}


# create FASTA tags
 output <- rep (NA, 1)
for (count in 1:numOfSeqs){
	output = c(output, paste("> seq", count))
 }



# fix to modOutput without NA start
mSeqs <- numOfSeqs + 1
modOutput = output[2:mSeqs]


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
write(textOut, file = "bpspec1000", append = FALSE, sep = " ")