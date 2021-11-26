#Creation of whole Video stats DF

#Individual DF for each column
df_vs_0_step = data.frame(step_position = c(1.10,1.14,1.17,1.19,1.5,2.1,2.11,2.17,2.4,3.1,3.14,3.15,3.2))
df_vs_0_title = data.frame(title=c('Welcome to the course','Why would anyone want your data?','Preserving privacy in cloud storage: privacy by design','Staying safe online: personal perspectives','Privacy online and offline','Welcome to Week 2: payment security','Exploring vulnerabilities in online payments','The million dollar contactless payment','The evolving arms race of payment security','Welcome to Week 3: security in the future home','Exploring security: biometric authentication','Exploring security: the Access Control Live Lab','Devices in the future home'))
df_vs_0_duration = data.frame(duration = c(99,362,241,348,281,37,312,92,426,59,313,227,206))
df_vs_0_views = data.frame(views = c(sum(df_vs_110$views),sum(df_vs_114$views),sum(df_vs_117$views),sum(df_vs_119$views),sum(df_vs_150$views),sum(df_vs_210$views),sum(df_vs_211$views),sum(df_vs_217$views),sum(df_vs_240$views),sum(df_vs_310$views),sum(df_vs_314$views),sum(df_vs_315$views),sum(df_vs_320$views)))
df_vs_0_viewed_5 = data.frame(viewed_5 = c(mean(df_vs_110$viewed_5),mean(df_vs_114$viewed_5),mean(df_vs_117$viewed_5),mean(df_vs_119$viewed_5),mean(df_vs_150$viewed_5),mean(df_vs_210$viewed_5),mean(df_vs_211$viewed_5),mean(df_vs_217$viewed_5),mean(df_vs_240$viewed_5),mean(df_vs_310$viewed_5),mean(df_vs_314$viewed_5),mean(df_vs_315$viewed_5),mean(df_vs_320$viewed_5)))
df_vs_0_viewed_25 = data.frame(viewed_25 = c(mean(df_vs_110$viewed_25),mean(df_vs_114$viewed_25),mean(df_vs_117$viewed_25),mean(df_vs_119$viewed_25),mean(df_vs_150$viewed_25),mean(df_vs_210$viewed_25),mean(df_vs_211$viewed_25),mean(df_vs_217$viewed_25),mean(df_vs_240$viewed_25),mean(df_vs_310$viewed_25),mean(df_vs_314$viewed_25),mean(df_vs_315$viewed_25),mean(df_vs_320$viewed_25)))
df_vs_0_viewed_50 = data.frame(viewed_50 = c(mean(df_vs_110$viewed_50),mean(df_vs_114$viewed_50),mean(df_vs_117$viewed_50),mean(df_vs_119$viewed_50),mean(df_vs_150$viewed_50),mean(df_vs_210$viewed_50),mean(df_vs_211$viewed_50),mean(df_vs_217$viewed_50),mean(df_vs_240$viewed_50),mean(df_vs_310$viewed_50),mean(df_vs_314$viewed_50),mean(df_vs_315$viewed_50),mean(df_vs_320$viewed_50)))
df_vs_0_viewed_75 = data.frame(viewed_75 = c(mean(df_vs_110$viewed_75),mean(df_vs_114$viewed_75),mean(df_vs_117$viewed_75),mean(df_vs_119$viewed_75),mean(df_vs_150$viewed_75),mean(df_vs_210$viewed_75),mean(df_vs_211$viewed_75),mean(df_vs_217$viewed_75),mean(df_vs_240$viewed_75),mean(df_vs_310$viewed_75),mean(df_vs_314$viewed_75),mean(df_vs_315$viewed_75),mean(df_vs_320$viewed_75)))
df_vs_0_viewed_100 = data.frame(viewed_100 = c(mean(df_vs_110$viewed_100),mean(df_vs_114$viewed_100),mean(df_vs_117$viewed_100),mean(df_vs_119$viewed_100),mean(df_vs_150$viewed_100),mean(df_vs_210$viewed_100),mean(df_vs_211$viewed_100),mean(df_vs_217$viewed_100),mean(df_vs_240$viewed_100),mean(df_vs_310$viewed_100),mean(df_vs_314$viewed_100),mean(df_vs_315$viewed_100),mean(df_vs_320$viewed_100)))


#Using cbind() function to append new data frames to old data frames
df_vs_total <- cbind(df_vs_0_step, df_vs_0_title, df_vs_0_duration, df_vs_0_views, df_vs_0_viewed_5, df_vs_0_viewed_25, df_vs_0_viewed_50, df_vs_0_viewed_75, df_vs_0_viewed_100)


#Filter df_vs_total by week
df_vs_w1=filter(df_vs_total, between(step_position, 1, 1.90))
df_vs_w2=filter(df_vs_total, between(step_position, 2, 2.90))
df_vs_w3=filter(df_vs_total, between(step_position, 3, 3.90))
