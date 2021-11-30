# Top 5 students with incorrect inputs
mode = function(){
  return(sort(-table(df_qr_w1$learner_id))[1:5])
}

mode()