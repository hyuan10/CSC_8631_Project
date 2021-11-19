#This preprocess script will combine the corresponding data files together to form their own data frame

library(dplyr)
library(readr)

# Combines the Enrolments into one Data Frame
df_Enrolments <- list.files(path="C:/Users/Harvey/Documents/Newcastle University/CSC_8631_Project/CSC_8631_Analysis/data/Enrolments", full.names = TRUE) %>% 
  lapply(read_csv) %>% 
  bind_rows

# Combines the Question Response into one Data Frame
# Question response will require additional analysis as each individual run has their own stats
df_question_response <- list.files(path="C:/Users/Harvey/Documents/Newcastle University/CSC_8631_Project/CSC_8631_Analysis/data/Question Response", full.names = TRUE) %>% 
  lapply(read_csv) %>% 
  bind_rows 

# Combines the Video Stats into one Data Frame
# Video stats will require additional analysis as each individual run has their own stats
df_video_states <- list.files(path="C:/Users/Harvey/Documents/Newcastle University/CSC_8631_Project/CSC_8631_Analysis/data/Video Stats", full.names = TRUE) %>% 
  lapply(read_csv) %>% 
  bind_rows 