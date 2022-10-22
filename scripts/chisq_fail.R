# Chi sq test for distribution goodness of fit between 062m and 117f ----
# Liina Juuse
# 22.10.22
# University of Tartu

# Data and libraries ----
library()

setwd("~/GitHub/Kaemus-recurring/data")
EMO_valideerimisuuring_145_Hans_22_05_27_long_sex_age_occupation <- read_csv("EMO-valideerimisuuring-145-Hans_22-05-27-long_sex-age-occupation.csv", 
                                                                             locale = locale(encoding = "ISO-8859-1"))


t <- EMO_valideerimisuuring_145_Hans_22_05_27_long_sex_age_occupation[grep("_062m", EMO_valideerimisuuring_145_Hans_22_05_27_long_sex_age_occupation$VideoID), ]


# taking 062m ja 117f Ekman and Under conditions
t_ek <- t[grep("Ekman", t$Condition), ]
t_un <- t[grep("Under", t$Condition), ]

f <- EMO_valideerimisuuring_145_Hans_22_05_27_long_sex_age_occupation[grep("_117f", EMO_valideerimisuuring_145_Hans_22_05_27_long_sex_age_occupation$VideoID), ]
f_ek <- f[grep("Ekman", f$Condition), ]
f_un <- f[grep("Under", f$Condition), ]

# Extracting only the 'Hirm' target emotion
t_ek_hirm <- t_ek[grep("Hirm", t_ek$EmotionID), ]
f_ek_hirm <- f_ek[grep("Hirm", f_ek$EmotionID), ]
f_ek_hirm <- f_ek_hirm[1:165,]

chisq.test(t_ek_hirm$Emotion1, f_ek_hirm$Emotion1)

# Null hypothesis (H0): There is no significant difference between the observed and the expected value.
# Alternative hypothesis (Ha): There is a significant difference between the observed and the expected value.

# 	Pearson's Chi-squared test
# data:  t_ek_hirm$Emotion1 and f_ek_hirm$Emotion1
# X-squared = 24.775, df = 20, p-value = 0.2102
# We can conclude that proportions are similarly (commonly) distributed with p = 0.2102.

# Extracting only the 'Kurbus' target emotion
t_ek_kurb <- t_ek[grep("Kurbus", t_ek$EmotionID), ]
f_ek_kurb <- f_ek[grep("Kurbus", f_ek$EmotionID), ]
t_ek_kurb <- t_ek_kurb[1:169, ]

chisq.test(t_ek_kurb$Emotion1, f_ek_kurb$Emotion1)
# 	Pearson's Chi-squared test
# data:  t_ek_kurb$Emotion1 and f_ek_kurb$Emotion1
# X-squared = 41.565, df = 25, p-value = 0.02
# Cannot conclude that proportions are similarly (commonly) distributed with p = 0.02.

# Extracting only the 'Rõõm' target emotion
t_ek_room <- t_ek[grep("Rõõm", t_ek$EmotionID), ]
f_ek_room <- f_ek[grep("Rõõm", f_ek$EmotionID), ]

chisq.test(t_ek_room$Emotion1, f_ek_room$Emotion1)
# data:  t_ek_room$Emotion1 and f_ek_room$Emotion1
# X-squared = 33.947, df = 15, p-value = 0.003464
# Cannot conclude that proportions are similarly (commonly) distributed with p = 0.003.

# Extracting only the 'Üllatus' target emotion
t_ek_yll <- t_ek[grep("Üllatus", t_ek$EmotionID), ]
f_ek_yll <- f_ek[grep("Üllatus", f_ek$EmotionID), ]
f_ek_yll <- f_ek_yll[1:169, ]

chisq.test(t_ek_yll$Emotion1, f_ek_yll$Emotion1)
# data:  t_ek_yll$Emotion1 and f_ek_yll$Emotion1
# X-squared = 5.8593, df = 15, p-value = 0.982
# i am confused


# Extracting only the 'Vastikus' target emotion
t_ek_vas <- t_ek[grep("Vastikus", t_ek$EmotionID), ]
f_ek_vas <- f_ek[grep("Vastikus", f_ek$EmotionID), ]
t_ek_vas <- f_ek_yll[1:168, ]

chisq.test(t_ek_vas$Emotion1, f_ek_vas$Emotion1)
