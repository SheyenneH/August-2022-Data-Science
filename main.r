sex <- c("M", "F", "M", "F", "M", "F", "M", "F", "M", "F", "M", "F")
stage <- c("I", "II", "II", "I", "II", "II", "I", "II", "II", "I", "II", "II")
treatment <- c("A", "A", "A", "A", "B", "B", "B", "B", "P", "P", "P", "P")
myc <- c(2343,457,4593,9035,3450,3524,958,1053,8674,3424,463,5105)

meta <- data.frame(sex, stage, treatment, myc)
rownames(meta) <- c("Sample1", "Sample2", "Sample3", "Sample4", "Sample5", "Sample6", "Sample7", "Sample8", "Sample9", "Sample10", "Sample11", "Sample12")

meta

#Return only the treatment and sex columns using []:
meta[c("treatment","sex")]

#return the treatment values for samples 5, 7, 9, and 10 using []:
meta[c(5, 7, 9, 10),c("treatment")]

#use subset() to return all data for those samples receiving treatment P:
subset(meta, treatment == "P")

#use filter()/select()to return only the stage and treatment columns for those samples with myc > 5000:
# select(filter(meta, myc > 5000), treatment)

#remove the treatment column from the dataset using []:
meta[, -3]

# remove samples 7, 8 and 9 from the dataset using []:
meta[-c(7, 8, 9), ]

#keep only samples 1-6 using []:
meta[-c(10, 11, 12), ]

#add a column called pre_treatment to the beginning of the dataframe with the values T, F, F, F, T, T, F, T, F, F, T, T (Hint: use cbind()):
pre_treatment <- c("T", "F", "F", "F", "T", "T", "F", "T", "F", "F", "T", "T")
meta_new <- cbind(pre_treatment, meta)
meta_new

#change the names of the columns to: “A”, “B”, “C”, “D”:
colnames(meta_new) <- c('A','B','C','D', 'E')
meta_new

