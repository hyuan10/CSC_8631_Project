# Frequency of incorrect answers per week as df

w1res <- data.frame(table((table(df_qr_w1$learner_id))))
w2res <- data.frame(table((table(df_qr_w2$learner_id))))
w3res <- data.frame(table((table(df_qr_w3$learner_id))))

colnames(w1res) <- c("Num_Incorrect","Freq")
colnames(w2res) <- c("Num_Incorrect","Freq")
colnames(w3res) <- c("Num_Incorrect","Freq")