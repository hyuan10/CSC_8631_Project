#Filter data based on step position to isolate runs from df_video_stats


df_vs_110=filter(df_video_stats, step_position == 1.10)

df_vs_114=filter(df_video_stats, step_position == 1.14)

df_vs_117=filter(df_video_stats, step_position == 1.17)

df_vs_119=filter(df_video_stats, step_position == 1.19)

df_vs_150=filter(df_video_stats, step_position == 1.50)

df_vs_210=filter(df_video_stats, step_position == 2.10)

df_vs_211=filter(df_video_stats, step_position == 2.11)

df_vs_217=filter(df_video_stats, step_position == 2.17)

df_vs_240=filter(df_video_stats, step_position == 2.40)

df_vs_310=filter(df_video_stats, step_position == 3.10)

df_vs_314=filter(df_video_stats, step_position == 3.14)

df_vs_315=filter(df_video_stats, step_position == 3.15)

df_vs_320=filter(df_video_stats, step_position == 3.20)