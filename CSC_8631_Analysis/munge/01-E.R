# Counts the number of result inputs for each week
sum_qr_w1 <- sum(df_qr_w1$result)
sum_qr_w2 <- sum(df_qr_w2$result)
sum_qr_w3 <- sum(df_qr_w3$result)

# Sums the number of results in the column which is FALSE for each week
sum_qr_w1f <- sum(df_qr_w1$result == FALSE)
sum_qr_w2f <- sum(df_qr_w2$result == FALSE)
sum_qr_w3f <- sum(df_qr_w3$result == FALSE)

# Sum the total number of students
Total_no_students <- length(df_Enrolments$learner_id)


# Creates a data frame with the mean of the percentage watched time
colMeans_vs_w1 = data.frame(Percentage =c (5,25,50,75,100), "View_Percentage_Mean" = c(mean(df_vs_w1$viewed_5),mean(df_vs_w1$viewed_25),mean(df_vs_w1$viewed_50),mean(df_vs_w1$viewed_75),mean(df_vs_w1$viewed_100)))
colMeans_vs_w2 = data.frame(Percentage =c (5,25,50,75,100), "View_Percentage_Mean" = c(mean(df_vs_w2$viewed_5),mean(df_vs_w2$viewed_25),mean(df_vs_w2$viewed_50),mean(df_vs_w2$viewed_75),mean(df_vs_w2$viewed_100)))
colMeans_vs_w3 = data.frame(Percentage =c (5,25,50,75,100), "View_Percentage_Mean" = c(mean(df_vs_w3$viewed_5),mean(df_vs_w3$viewed_25),mean(df_vs_w3$viewed_50),mean(df_vs_w3$viewed_75),mean(df_vs_w3$viewed_100)))

