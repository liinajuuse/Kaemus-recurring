# Libraries and data
library(readxl)
library(tidyverse)

setwd("~/GitHub/Kaemus-recurring/data")

# 062m reoccuring participant ------------------------------------
EMO_valideerimisuuring_145_Hans_22_05_27_long_sex_age_occupation <- read_csv("EMO-valideerimisuuring-145-Hans_22-05-27-long_sex-age-occupation.csv", 
                                                                             locale = locale(encoding = "ISO-8859-1"))

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
t1_un <- t_un[grep("_001", t_un$KaemusParticipant), ]
t4_un <- t_un[grep("_004", t_un$KaemusParticipant), ]
t5_un <- t_un[grep("_005", t_un$KaemusParticipant), ]

#t001 <- na.omit(t001)
#t004 <- na.omit(t004)
#t005 <- na.omit(t005)

t1_ek_graph = ggplot(t1_ek, aes(x = Emotion1, fill = Emotion1)) +
  geom_bar() +
  facet_wrap(~EmotionID) + 
  labs(title = 'Ekman 1 062m')

t4_ek_graph = ggplot(t4_ek, aes(x = Emotion1, fill = Emotion1)) +
  geom_bar() +
  facet_wrap(~EmotionID) + 
  labs(title = 'Ekman 4 062m')

t5_ek_graph = ggplot(t5_ek, aes(x = Emotion1, fill = Emotion1)) +
  geom_bar() +
  facet_wrap(~EmotionID) + 
  labs(title = 'Ekman 5 062m')

t1_un_graph = ggplot(t1_un, aes(x = Emotion1, fill = Emotion1)) +
  geom_bar() +
  facet_wrap(~EmotionID) + 
  labs(title = 'Under 1 062m')

t4_un_graph = ggplot(t4_un, aes(x = Emotion1, fill = Emotion1)) +
  geom_bar() +
  facet_wrap(~EmotionID) + 
  labs(title = 'Under 4 062m')

t5_un_graph = ggplot(t5_un, aes(x = Emotion1, fill = Emotion1)) +
  geom_bar() +
  facet_wrap(~EmotionID) + 
  labs(title = 'Under 5 062m')

# saving geom_bar plots
setwd("~/GitHub/Kaemus-recurring/figures")

ggsave(filename = '062m_ek_t1_graph.png', plot = t1_ek_graph)
ggsave(filename = '062m_ek_t4_graph.png', plot = t4_ek_graph)
ggsave(filename = '062m_ek_t5_graph.png', plot = t5_ek_graph)
ggsave(filename = '062m_un_t1_graph.png', plot = t1_un_graph)
ggsave(filename = '062m_un_t4_graph.png', plot = t4_un_graph)
ggsave(filename = '062m_un_t5_graph.png', plot = t5_un_graph)

# 117f reoccuring participant ------------------------------------
t <- EMO_valideerimisuuring_145_Hans_22_05_27_long_sex_age_occupation[grep("_117f", EMO_valideerimisuuring_145_Hans_22_05_27_long_sex_age_occupation$VideoID), ]
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
t1_un <- t_un[grep("_001", t_un$KaemusParticipant), ]
t4_un <- t_un[grep("_004", t_un$KaemusParticipant), ]
t5_un <- t_un[grep("_005", t_un$KaemusParticipant), ]

#t001 <- na.omit(t001)
#t004 <- na.omit(t004)
#t005 <- na.omit(t005)

t1_ek_graph = ggplot(t1_ek, aes(x = Emotion1, fill = Emotion1)) +
  geom_bar() +
  facet_wrap(~EmotionID) + 
  labs(title = 'Ekman 1 117f')

t4_ek_graph = ggplot(t4_ek, aes(x = Emotion1, fill = Emotion1)) +
  geom_bar() +
  facet_wrap(~EmotionID) + 
  labs(title = 'Ekman 4 117f')

t5_ek_graph = ggplot(t5_ek, aes(x = Emotion1, fill = Emotion1)) +
  geom_bar() +
  facet_wrap(~EmotionID) + 
  labs(title = 'Ekman 5 117f')

t1_un_graph = ggplot(t1_un, aes(x = Emotion1, fill = Emotion1)) +
  geom_bar() +
  facet_wrap(~EmotionID) + 
  labs(title = 'Under 1 117f')

t4_un_graph = ggplot(t4_un, aes(x = Emotion1, fill = Emotion1)) +
  geom_bar() +
  facet_wrap(~EmotionID) + 
  labs(title = 'Under 4 117f')

t5_un_graph = ggplot(t5_un, aes(x = Emotion1, fill = Emotion1)) +
  geom_bar() +
  facet_wrap(~EmotionID) + 
  labs(title = 'Under 5 117f')

# saving geom_bar plots
setwd("~/GitHub/Kaemus-recurring/figures")

ggsave(filename = '117f_ek_t1_graph.png', plot = t1_ek_graph)
ggsave(filename = '117f_ek_t4_graph.png', plot = t4_ek_graph)
ggsave(filename = '117f_ek_t5_graph.png', plot = t5_ek_graph)
ggsave(filename = '117f_un_t1_graph.png', plot = t1_un_graph)
ggsave(filename = '117f_un_t4_graph.png', plot = t4_un_graph)
ggsave(filename = '117f_un_t5_graph.png', plot = t5_un_graph)
