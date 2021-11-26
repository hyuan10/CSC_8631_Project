#This preprocess script will combine the corresponding data files together to form their own data frame, sort and rename column

library(dplyr)
library(readr)

# Combines the Enrollments into one Data Frame
df_Enrolments <- list.files(path="~/Documents/CSC_8631_Project/CSC_8631_Analysis/data/Enrolments", full.names = TRUE) %>% 
  lapply(read_csv) %>% 
  bind_rows



# Combines the Question Response into one Data Frame
# Question response will require additional analysis as each individual run has their own stats
df_question_response <- list.files(path="~/Documents/CSC_8631_Project/CSC_8631_Analysis/data/Question Response", full.names = TRUE) %>% 
  lapply(read_csv) %>% 
  bind_rows 

    #Renaming columns for easy reading
    colnames(df_question_response) <- c('learner_id','question','type','week','step','number','response','cloze','submitted','result')


# Combines the Video Stats into one Data Frame
# Video stats will require additional analysis as each individual run has their own stats
df_video_stats <- list.files(path="~/Documents/CSC_8631_Project/CSC_8631_Analysis/data/Video Stats", full.names = TRUE) %>% 
  lapply(read_csv) %>% 
  bind_rows 

    # Sort by Step Position in Video Stats
    df_video_stats <- df_video_stats[
      with(df_video_stats, order(step_position)),
    ]
    #Renaming columns for easy reading
    colnames(df_video_stats) <- c('step_position','title','duration','views','downloads','caption_views','transcript_views',
                                  'viewed_hd','viewed_5','viewed_10','viewed_25','viewed_50','viewed_75','viewed_95','viewed_100',
                                  'console','desktop','mobile','tv','tablet','unknown','EU','oceania','asia','NA','SA','africa','antarctica')
  
