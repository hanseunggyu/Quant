# tidyr
install.packages("tidyr")
library(tidyr)
library(magrittr)

long = table4a %>%
  pivot_longer(names_to = 'years',
               values_to =  'cases',
               -country)

long
long %>% pivot_wider(names_from = 'years',
                     values_from = 'cases')

table3
table3 %>%
  separate(., rate, into = c('cases', 'population'))
table3 %>%
  separate(., rate, into = c('cases', 'population'), remove=FALSE)

table5
table5 %>%
  unite(new, century, year, sep = "", remove=FALSE)

score = tribble(
  ~ person, ~ Math, ~ Computer,
  "Henry",  1,         7,
  NA,       2,         10,
  NA,       NA,        9,
  "David",  1,         4
)

score
score %>% 
  fill(person, Math)

score %>% replace_na(replace = list(person = "unknown", Math = 0))

# dplyr
install.packages('dplyr')
install.packages('nycflights13')

library(dplyr)
library(nycflights13)

flights
flights %>% select(year, month, day)
flights %>% select(year:day)
flights %>% select(-(year:day))
flights %>% select(1,3,5)

flights %>% select(starts_with("dep")) %>% head()

flights %>% select(tailnum)
flights %>% rename(tail_num = tailnum) %>% select(tail_num) %>% head()


flights %>% filter(month == 3, day == 1) %>% head()

flights %>% summarize(max_dep = max(dep_time, na.rm = TRUE),
                      min_dep = min(dep_time, na.rm = TRUE))

by_day = flights %>% group_by(year, month, day)

by_day %>% head()
by_day %>%
  summarise(delay = mean(dep_delay, na.rm = TRUE)) %>%
  head()

flights %>% group_by(dest) %>%
  summarize(
    count = n(),
    dist = mean(distance, na.rm = TRUE),
    delay = mean(arr_delay, na.rm = TRUE)
  )

flights %>% arrange(year, month, day) %>% head()
flights %>% arrange(desc(dep_delay)) %>% head()

flights2 = flights %>% 
  select(year:day, hour, tailnum, carrier)
flights2 %>% head()
airlines
flights2 %>%
  left_join(airlines, by = "carrier") %>%
  head()

flights_sml = flights %>%
  select(
    year:day, 
    ends_with("delay"), 
    distance, 
    air_time
  )
flights_sml
flights_sml %>%
  mutate(
    gain = dep_delay - arr_delay,
    speed = distance / air_time * 60
  ) %>%
  head()
flights_sml %>%
  mutate(
    across(c('dep_delay', 'arr_delay'), ~ .x * 60)
  ) %>%
  head()
