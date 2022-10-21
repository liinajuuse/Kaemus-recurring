# Libraries and data
library(readxl)
library(tidyverse)

setwd("~/GitHub/Kaemus-recurring/data")

Ekman_1_5 <- read_excel("data/Ekman_1_5.xlsx")

df <- data.frame( a1 = 1:10, b1 = 2:11, c2 = 3:12 )

Subset <- function(df, pattern) {
  ind <- grepl(pattern, names(df))
  df[, ind]
}

t = Subset(df, 1)

t <- EMO_valideerimisuuring_145_Hans_22_05_27_long_sex_age_occupation[grep("_062m", EMO_valideerimisuuring_145_Hans_22_05_27_long_sex_age_occupation$VideoID), ]
t_ek <- t[grep("Ekman", t$Condition), ]
t_un <- t[grep("Under", t$Condition), ]
t001 <- t[grep("_001", t$KaemusParticipant), ]
t004 <- t[grep("_004", t$KaemusParticipant), ]
t005 <- t[grep("_005", t$KaemusParticipant), ]

# Creating Ekman test 001, 004 and 005 subsets
t1_ek <- t_ek[grep("_001", t_ek$KaemusParticipant), ]
t4_ek <- t_ek[grep("_004", t_ek$KaemusParticipant), ]
t5_ek <- t_ek[grep("_005", t_ek$KaemusParticipant), ]

# Creating Under test 001, 004, 005 subsets
t1_ek <- t_ek[grep("_001", t_ek$KaemusParticipant), ]
t4_ek <- t_ek[grep("_004", t_ek$KaemusParticipant), ]
t5_ek <- t_ek[grep("_005", t_ek$KaemusParticipant), ]

#t001 <- na.omit(t001)
#t004 <- na.omit(t004)
#t005 <- na.omit(t005)

ggplot(t1_ek, aes(x = Emotion1, fill = Emotion1)) +
  geom_bar() +
  facet_wrap(~EmotionID)

ggplot(t4_ek, aes(x = Emotion1, fill = Emotion1)) +
  geom_bar() +
  facet_wrap(~EmotionID)

ggplot(t5_ek, aes(x = Emotion1, fill = Emotion1)) +
  geom_bar() +
  facet_wrap(~EmotionID)

ggplot(t004, aes(x = Emotion1, fill = Emotion1)) +
  geom_bar() +
  facet_wrap(~EmotionID)

ggplot(t005, aes(x = Emotion1, fill = Emotion1)) +
  geom_bar() +
  facet_wrap(~EmotionID)
