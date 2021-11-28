# Counts the number of result imputs for each week
sum_qr_w1 <- sum(df_qr_w1$result)
sum_qr_w2 <- sum(df_qr_w2$result)
sum_qr_w3 <- sum(df_qr_w3$result)

# Sums the number of results in the column which is FALSE for each week
sum_qr_w1f <- sum(df_qr_w1$result == FALSE)
sum_qr_w2f <- sum(df_qr_w2$result == FALSE)
sum_qr_w3f <- sum(df_qr_w3$result == FALSE)

# # Averages the viewed percentage columns for each week
# colMeans_vs_w1 <- colMeans(df_vs_w1[ , c(5: 9)])
# colMeans_vs_w2 <- colMeans(df_vs_w2[ , c(5: 9)])
# colMeans_vs_w3 <- colMeans(df_vs_w3[ , c(5: 9)])
# 
# #Converts the above values into dataframes
# colMeans_vs_w1_df <- data.frame(colMeans_vs_w1)
# colMeans_vs_w2_df <- data.frame(colMeans_vs_w2)
# colMeans_vs_w3_df <- data.frame(colMeans_vs_w3)


colMeans_vs_w1 = data.frame(views = c(mean(df_vs_w1$viewed_5),mean(df_vs_w1$viewed_25),mean(df_vs_w1$viewed_50),mean(df_vs_w1$viewed_75),mean(df_vs_w1$viewed_100)))
colMeans_vs_w2 = data.frame(views = c(mean(df_vs_w2$viewed_5),mean(df_vs_w2$viewed_25),mean(df_vs_w2$viewed_50),mean(df_vs_w2$viewed_75),mean(df_vs_w2$viewed_100)))
colMeans_vs_w3 = data.frame(views = c(mean(df_vs_w3$viewed_5),mean(df_vs_w3$viewed_25),mean(df_vs_w3$viewed_50),mean(df_vs_w3$viewed_75),mean(df_vs_w3$viewed_100)))
