library(dplyr)
library(ggplot2)

# Banco ####
depressao <- c(7, 1, 2, 8, 10, 8, 5, 2, 3, 4)
ansiedade <- c(7, 3, 4, 9, 7, 6, 6, 4, 1, 5)

cor(depressao, ansiedade)

df <- data.frame(depressao, ansiedade)

p_1 <- df %>% 
  ggplot(aes(x = depressao, y = ansiedade)) +
  
  # Pontos
  geom_point(alpha = 1, position = 'jitter', color = "steelblue") +
  
  # Linha
  stat_smooth(method = "lm", se = F, color = "black", size = 0.5) +
  
  # Ajustando x
  xlab('Depressão') +
  xlim(c(0, 11)) +
  
  # Ajustando y
  ylab('Ansiedade') +
  ylim(c(0, 11)) +
  
  # theme
  theme_minimal()

p_1

write.csv(df, "banco_de_dados.csv")



