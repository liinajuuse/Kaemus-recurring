# Libraries and data
library(readxl)
library(tidyverse)
library(patchwork)

setwd("~/GitHub/Kaemus-recurring/data")
EMO_valideerimisuuring_145_Hans_22_05_27_long_sex_age_occupation <- read_csv("EMO-valideerimisuuring-145-Hans_22-05-27-long_sex-age-occupation.csv", 
                                                                             locale = locale(encoding = "ISO-8859-1"))


# 062m reoccuring participant ------------------------------------
t <- EMO_valideerimisuuring_145_Hans_22_05_27_long_sex_age_occupation[grep("_062m", EMO_valideerimisuuring_145_Hans_22_05_27_long_sex_age_occupation$VideoID), ]
t_ek <- t[grep("Ekman", t$Condition), ]
t_un <- t[grep("Under", t$Condition), ]

# at first glance seems i don't need this part, but should be checked when run
#t001 <- t[grep("_001", t$KaemusParticipant), ]
#t004 <- t[grep("_004", t$KaemusParticipant), ]
#t005 <- t[grep("_005", t$KaemusParticipant), ]

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

# at first glance seems i don't need this part, but should be checked when run
# t001 <- t[grep("_001", t$KaemusParticipant), ]
# t004 <- t[grep("_004", t$KaemusParticipant), ]
# t005 <- t[grep("_005", t$KaemusParticipant), ]

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

# 062m and 117f across all studies comparison --------------------------

# 062m and 117f comparison in Ekman condition --------------------------
setwd("~/GitHub/Kaemus-recurring/data")
EMO_valideerimisuuring_145_Hans_22_05_27_long_sex_age_occupation <- read_csv("EMO-valideerimisuuring-145-Hans_22-05-27-long_sex-age-occupation.csv", 
                                                                             locale = locale(encoding = "ISO-8859-1"))


t <- EMO_valideerimisuuring_145_Hans_22_05_27_long_sex_age_occupation[grep("_062m", EMO_valideerimisuuring_145_Hans_22_05_27_long_sex_age_occupation$VideoID), ]
t_ek <- t[grep("Ekman", t$Condition), ]
t_un <- t[grep("Under", t$Condition), ]

f <- EMO_valideerimisuuring_145_Hans_22_05_27_long_sex_age_occupation[grep("_117f", EMO_valideerimisuuring_145_Hans_22_05_27_long_sex_age_occupation$VideoID), ]
f_ek <- f[grep("Ekman", f$Condition), ]
f_un <- f[grep("Under", f$Condition), ]

p1 = ggplot(t_ek, aes(x = Emotion1, fill = Emotion1)) +
  geom_bar() +
  facet_wrap(~EmotionID) + 
  labs(title = 'Ekman all 062m') +
  theme(legend.position = 'none')

p2 = ggplot(f_ek, aes(x = Emotion1, fill = Emotion1)) +
  geom_bar() +
  facet_wrap(~EmotionID) + 
  labs(title = 'Ekman all 117f')

p3 = p1 + p2

# 062m and 117f comparison in Under condition --------------------------

p4 = ggplot(t_un, aes(x = Emotion1, fill = Emotion1)) +
  geom_bar() +
  facet_wrap(~EmotionID) + 
  labs(title = 'Under all 062m') +
  theme(legend.position = 'none')

p5 = ggplot(f_un, aes(x = Emotion1, fill = Emotion1)) +
  geom_bar() +
  facet_wrap(~EmotionID) + 
  labs(title = 'Under all 117f')

p6 = p4 + p5

# saving geom_bar plots
setwd("~/GitHub/Kaemus-recurring/figures")

ggsave(filename = '062m117f_ek_graph.png', plot = p3)
ggsave(filename = '062m117f_un_graph.png', plot = p6)
