# Plots the percentage watched video value against the portion of the video watched
library(ggplot2)

# Combined Plot for Video Stats

Colours <-c("Week 1" = "dark green", "Week 2" = "orange", "Week 3" = "light blue")


P <- 
  ggplot() +
    ggtitle("Percentage of Views at Video Progress vs Video Progress") +
    labs(x="Video Progress (%)", y= "Percentage of Views at Video Progress", colour="Legend")+
    xlim(0, 100)+ ylim(50, 80)+
    geom_point(data=colMeans_vs_w1, aes(x=Percentage, y=View_Percentage_Mean, colour="Week 1"), shape =16) +
    geom_point(data=colMeans_vs_w2, aes(x=Percentage, y=View_Percentage_Mean, colour="Week 2"), shape =17) +
    geom_point(data=colMeans_vs_w3, aes(x=Percentage, y=View_Percentage_Mean, colour="Week 3"), shape =18) +
    geom_smooth(data=colMeans_vs_w1,aes(x=Percentage, y=View_Percentage_Mean, colour="Week 1"), formula = y ~ x, method ="lm", se=F) +
    geom_smooth(data=colMeans_vs_w2,aes(x=Percentage, y=View_Percentage_Mean, colour="Week 2"), formula = y ~ x, method ="lm", se=F)+
    geom_smooth(data=colMeans_vs_w3,aes(x=Percentage, y=View_Percentage_Mean, colour="Week 3"), formula = y ~ x, method ="lm", se=F)+
    theme_bw()+
    scale_color_manual(values = Colours)


P

ggsave("~/Documents/CSC_8631_Project/CSC_8631_Analysis/graphs/my_vs_plot.png", P)

# Plot of Correct and Incorrect answers by Percentage against Week


QR <- 
  ggplot(data=qr_table_percent, aes(x=Week, y=Result_Percent, fill=Result)) +
      geom_col()+
      theme_bw()+
      scale_fill_manual(values = c("#34eb6b", "#eb3446"))+
      ggtitle("Percentage of Correct and Incorrect Answers by Week")+
      labs(y= "Percentage")


QR    

ggsave("~/Documents/CSC_8631_Project/CSC_8631_Analysis/graphs/my_qr_graph.png", QR)

# Plot of frequency of incorrect results
w1res_plot <-
  ggplot(data=w1res, aes(x=Num_Incorrect, y=Freq)) +
  ggtitle("Frequency of Incorrect Results Week 1") +
  labs(x="Number of Incorrect Results", y= "Frequency",caption="Graph 3")+
  scale_y_continuous(limits = c(0,950))+
  geom_bar(stat="identity", fill="#08588D")+
  theme_bw()

w1res_plot

w1res_plot

ggsave("~/Documents/CSC_8631_Project/CSC_8631_Analysis/graphs/my_w1res_plot.png", w1res_plot)



w2res_plot <-
  ggplot(data=w2res, aes(x=Num_Incorrect, y=Freq)) +
  ggtitle("Frequency of Incorrect Results Week 2") +
  labs(x="Number of Incorrect Results", y= "Frequency",caption="Graph 4")+
  scale_y_continuous(limits = c(0,950))+
  geom_bar(stat="identity", fill="#08588D")+
  theme_bw()

w2res_plot

ggsave("~/Documents/CSC_8631_Project/CSC_8631_Analysis/graphs/my_w2res_plot.png", w2res_plot)



w3res_plot <-
  ggplot(data=w3res, aes(x=Num_Incorrect, y=Freq)) +
  ggtitle("Frequency of Incorrect Results Week 3") +
  labs(x="Number of Incorrect Results", y= "Frequency",caption="Graph 5")+    
  scale_y_continuous(limits = c(0,950))+
  geom_bar(stat="identity", fill="#08588D")+
  theme_bw()

w3res_plot

ggsave("~/Documents/CSC_8631_Project/CSC_8631_Analysis/graphs/my_w3res_plot.png", w3res_plot)


