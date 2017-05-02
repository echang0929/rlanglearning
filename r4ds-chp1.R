library(tidyverse)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))


##ggplot(data = <DATA>) +
##  <GEOM_FUNCTION>(mapping = aes(<MAPPINGS>))

##Exercises:
#1.
ggplot(data = mpg)
#2.
dim(mtcars)
#3. f = front-wheel drive, r = rear wheel drive, 4 = 4wd
?mpg
#4.
ggplot(data=mpg) +
  geom_point(mapping=aes(x=cyl, y=hwy))
#5.
ggplot(data=mpg) +
  geom_point(mapping=aes(x=drv, y=class))
##=======================================================


ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

# Top
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

# Bottom
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy), shape = 22)


ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = displ < 5))

##Exercises
#1.
#2.
str(mpg)
#3.


##--------------------------
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ class, nrow = 2)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ cyl)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = drv, y = cyl))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)

##Exercises:
#1.
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ displ)
#2.
ggplot(data = mpg) +
  geom_point(mapping = aes(x = drv, y = cyl))
#3.
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)



##--------------------------------------
# left
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

# right
ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))



ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv))

ggplot(data = mpg) +
  geom_smooth(mapping = aes(x = displ, y = hwy, color = drv),
    show.legend = FALSE)



ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth()

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = class)) +
  geom_smooth()

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = class)) +
  geom_smooth(
    data = filter(mpg, class == "subcompact"),
    se = FALSE
  )

##Exercises:
#1.
#geom_line, geom_step, geom_path
#geom_boxplot
#geom_freqpoly (geom_line), 
#    geom_histogram (geom_bar, geom_col, stat_count), 
#    stat_bin, stat_count
#geom_area, geom_ribbon

#2.
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_point() +
  geom_smooth(se = FALSE)
#3. 4.
#5.
ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth()

ggplot() +
  geom_point(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_smooth(data = mpg, mapping = aes(x = displ, y = hwy))
#6.
ggplot(data=mpg, mapping=aes(x=displ,y=hwy)) +
  geom_point() +
  geom_smooth(method='loess',se=FALSE)

ggplot(data=mpg, mapping=aes(x=displ,y=hwy)) +
  geom_point() +
  geom_smooth(aes(group=drv),method='loess',se=FALSE)

ggplot(data=mpg, mapping=aes(x=displ,y=hwy,color=drv)) +
  geom_point() +
  geom_smooth(aes(group=drv),method='loess',se=FALSE)

ggplot(data=mpg, mapping=aes(x=displ,y=hwy)) +
  geom_point(aes(color=drv)) +
  geom_smooth(method='loess',se=FALSE)

ggplot(data=mpg, mapping=aes(x=displ,y=hwy)) +
  geom_point(aes(color=drv)) +
  geom_smooth(aes(linetype=drv),method='loess',se=FALSE)

ggplot(data=mpg, mapping=aes(x=displ,y=hwy)) +
  geom_point(aes(color=drv)) 


###---------------------------------------------------
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))

ggplot(data = diamonds) +
  stat_count(mapping = aes(x = cut))

demo <- tribble(
  ~a,      ~b,
  "bar_1", 20,
  "bar_2", 30,
  "bar_3", 40
)

ggplot(data = demo) +
  geom_bar(
    mapping = aes(x = a, y = b), stat = "identity"
  )

ggplot(data = diamonds) +
  geom_bar(
    mapping = aes(x = cut, y = ..prop.., group = 1)
  )

ggplot(data = diamonds) +
  stat_summary(
    mapping = aes(x = cut, y = depth),
    fun.ymin = min,
    fun.ymax = max,
    fun.y = median
  )

##Exersices ---
#1. geom_pointrange
ggplot(data=diamonds) +
  geom_pointrange(
    mapping=aes(x=cut,y=depth),
    fun.ymin=min,
    fun.ymax=max,
    fun.y=median,
    stat="summary"
  )
