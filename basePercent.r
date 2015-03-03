# CREATE NEW RANDOM SEQUENCES BASED ON BASE PAIR FREQUENCY OF PREVIOUS SEQUENCES
# previous sequences = seqs

# count num of each base

numSeqs <- length(seqs)
newSeqs <- rep(NA, numSeqs)

for (i in 1:numSeqs){
	currSeq <- seqs[i]
	currSeqL <- nchar(currSeq)

	# counts for bases
	countA <- 0
	countC <- 0
	countG <- 0
	countT <- 0

	for (j in 1:currSeqL){
		currChar <- (substr(currSeq, j, j))
		if (currChar == 'A'){
			countA <- countA + 1
		}
		else if (currChar == 'C'){
			countC <- countC + 1
		}
		else if (currChar == 'G'){
			countG <- countG + 1
		}
		else if (currChar == 'T'){
			countT <- countT + 1
		}
	}

	# initialize
	percA <- 0
	percC <- 0
	percG <- 0
	percT <- 0	
	percA <- countA / currSeqL
	percC <- countC / currSeqL
	percG <- countG / currSeqL
	percT <- countT / currSeqL

	pi <- c(percA, percC, percG, percT)
	# bases
	x <- c('A','C','G','T')
	# create random sequences
		newSeqs[i] <- paste(sample(x, currSeqL, replace=TRUE, pi), collapse = '')

}
	