# Plots the percentage watched video value against the portion of the video watched
library(ggplot2)

# Combined Plot

Colours <-c("Week 1" = "dark green", "Week 2" = "orange", "Week 3" = "light blue")


P <- ggplot() +
  ggtitle("Percentage of Views at Video Progress vs Video Progress") +
  labs(x="Video Progress (%)", y= "Percentage of Views at Video Progress", colour="Legend")+
  xlim(0, 100)+ ylim(50, 80)+
  geom_point(data=colMeans_vs_w1, aes(x=Percentage, y=View_Percentage_Mean, colour="Week 1")) +
  geom_point(data=colMeans_vs_w2, aes(x=Percentage, y=View_Percentage_Mean, colour="Week 2")) +
  geom_point(data=colMeans_vs_w3, aes(x=Percentage, y=View_Percentage_Mean, colour="Week 3")) +
  geom_smooth(data=colMeans_vs_w1,aes(x=Percentage, y=View_Percentage_Mean, colour="Week 1"), formula = y ~ x, method ="lm", se=F) +
  geom_smooth(data=colMeans_vs_w2,aes(x=Percentage, y=View_Percentage_Mean, colour="Week 2"), formula = y ~ x, method ="lm", se=F)+
  geom_smooth(data=colMeans_vs_w3,aes(x=Percentage, y=View_Percentage_Mean, colour="Week 3"), formula = y ~ x, method ="lm", se=F)+
  theme_bw()+
  scale_color_manual(values = Colours)


P

