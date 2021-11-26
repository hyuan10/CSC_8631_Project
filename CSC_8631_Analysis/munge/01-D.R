#Filter data based on week number to isolate question responses in df_question_response

df_qr_w1= filter(df_question_response, week==1)
df_qr_w2= filter(df_question_response, week==2)
df_qr_w3= filter(df_question_response, week==3)