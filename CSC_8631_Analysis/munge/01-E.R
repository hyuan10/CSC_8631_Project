# Counts the number of result inputs for each week
sum_qr_w1 <- sum(df_qr_w1$week == 1)
sum_qr_w2 <- sum(df_qr_w2$week == 2)
sum_qr_w3 <- sum(df_qr_w3$week == 3)

# Sums the number of results in the column which is FALSE and True for each week
sum_qr_w1f <- sum(df_qr_w1$result == FALSE)
sum_qr_w2f <- sum(df_qr_w2$result == FALSE)
sum_qr_w3f <- sum(df_qr_w3$result == FALSE)
sum_qr_w1t <- sum(df_qr_w1$result == TRUE)
sum_qr_w2t <- sum(df_qr_w2$result == TRUE)
sum_qr_w3t <- sum(df_qr_w3$result == TRUE)

# Total Correct and Incoorect as a Percentage
sum_w1_t = (sum_qr_w1t/sum_qr_w1)*100
sum_w2_t = (sum_qr_w2t/sum_qr_w2)*100
sum_w3_t = (sum_qr_w3t/sum_qr_w3)*100
sum_w1_f = (sum_qr_w1f/sum_qr_w1)*100
sum_w2_f = (sum_qr_w2f/sum_qr_w2)*100
sum_w3_f = (sum_qr_w3f/sum_qr_w3)*100

# Sum QR as data Frame
qr_table = data.frame(Week = c(1,2,3),
                      Total_Responses = c(sum_qr_w1,sum_qr_w2,sum_qr_w3), 
                      Total_Correct = c(sum_qr_w1t,sum_qr_w2t,sum_qr_w3t), 
                      Total_Correct_Percentage = c(sum_w1_t,sum_w2_t,sum_w3_t),
                      Total_Incorrect = c(sum_qr_w1f,sum_qr_w2f,sum_qr_w3f), 
                      Total_Incorrect_Percentage = c(sum_w1_f,sum_w2_f,sum_w3_f))

qr_table_percent = data.frame(
                              Week = c(1,2,3,1,2,3),
                              Result_Percent = c(sum_w1_f,sum_w2_f,sum_w3_f,sum_w1_t,sum_w2_t,sum_w3_t),
                              Result = c("Incorrect","Incorrect","Incorrect","Correct","Correct","Correct"))
                        
                        
# Sum the total number of students
Total_no_students <- length(df_Enrolments$learner_id)


# Creates a data frame with the mean of the percentage watched time
colMeans_vs_w1 = data.frame(Percentage =c (5,25,50,75,100), "View_Percentage_Mean" = c(mean(df_vs_w1$viewed_5),mean(df_vs_w1$viewed_25),mean(df_vs_w1$viewed_50),mean(df_vs_w1$viewed_75),mean(df_vs_w1$viewed_100)))
colMeans_vs_w2 = data.frame(Percentage =c (5,25,50,75,100), "View_Percentage_Mean" = c(mean(df_vs_w2$viewed_5),mean(df_vs_w2$viewed_25),mean(df_vs_w2$viewed_50),mean(df_vs_w2$viewed_75),mean(df_vs_w2$viewed_100)))
colMeans_vs_w3 = data.frame(Percentage =c (5,25,50,75,100), "View_Percentage_Mean" = c(mean(df_vs_w3$viewed_5),mean(df_vs_w3$viewed_25),mean(df_vs_w3$viewed_50),mean(df_vs_w3$viewed_75),mean(df_vs_w3$viewed_100)))

