# Top 5 students with incorrect inputs in each week
Week1F = function(){
  return(sort(-table(df_qr_w1$learner_id))[1:5])
}

Week1F()*-1

Week2F = function(){
  return(sort(-table(df_qr_w2$learner_id))[1:5])
}

Week2F()*-1

Week3F = function(){
  return(sort(-table(df_qr_w3$learner_id))[1:5])
}

Week3F()*-1