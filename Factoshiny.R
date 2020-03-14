
## Using Factoshiny-------------------------------

library(Factoshiny)

data("decathlon")

result <- Factoshiny(decathlon)

## using FactoMineR------------------------

library(FactoMineR)


data(decathlon)
res.pca <- PCA(decathlon, quanti.sup = 11:12, quali.sup=13)
## plot of the eigenvalues
## barplot(res.pca$eig[,1],main="Eigenvalues",names.arg=1:nrow(res.pca$eig))
summary(res.pca)
plot(res.pca,choix="ind",habillage=13)
dimdesc(res.pca, axes = 1:2)



# 군집분석 이해및 강의자료:https://brunch.co.kr/@gimmesilver/39

# 군집분석 결과해석(맨 아래부분 참조):https://learnx.tistory.com/entry/SPSS%EC%97%90%EC%84%9C-%EA%B5%B0%EC%A7%91%EB%B6%84%EC%84%9D%EC%9C%BC%EB%A1%9C-%EC%A7%91%EB%8B%A8%EC%9D%84-%EA%B5%B0%EC%A7%91%EC%9C%BC%EB%A1%9C-%EB%B6%84%EB%A5%98%ED%95%9C-%ED%9B%84-%ED%8A%B9%EC%84%B1-%ED%99%95%EC%9D%B8%ED%95%98%EA%B8%B0

# another example--------------------------------------

# 그림에 마우스 오른쪽 버튼으로 다른 이미지 저장

library(Factoshiny)
crime <- read.csv("crime.csv")
crime

crime$X <- as.character(crime$X)

str(crime)

crime$X

class(crime$X)

c <- as.list(crime)
c

class(crime)

c("Alabama",        "Alaska"   ,      "Arizona",       
"Arkansas",       "California"  ,   "Colorado"  ,    
"Connecticut",    "Delaware"  ,     "Florida"    ,   
"Georgia"   ,     "Hawaii"     ,    "Idaho"       ,  
"Illinois"   ,    "Indiana"     ,   "Iowa"         , 
"Kansas"      ,   "Kentucky"     ,  "Louisiana"     ,
"Maine"        ,  "Maryland"    ,   "Massachusetts" ,
"Michigan"      , "Minnesota"    ,  "Mississippi"   ,
 "Missouri"   ,    "Montana"      ,  "Nebraska"      ,
 "Nevada"      ,   "New Hampshire",  "New Jersey"    ,
 "New Mexico"   ,  "New York"     ,  "North Carolina",
 "North Dakota"  , "Ohio"          , "Oklahoma"      ,
 "Oregon"         ,"Pennsylvania" ,  "Rhode Island"  ,
 "South Carolina", "South Dakota"  , "Tennessee"     ,
 "Texas"        ,  "Utah"         ,  "Vermont"       ,
 "Virginia"      , "Washington"    , "West Virginia" ,
 "Wisconsin"    ,  "Wyoming")       


#행의 이름을 바꿀 때는 dimnames() 함수를 사용한다
# dimnames(example) <- list(row=c("첫줄","둘째줄"),col=names(example))

dimnames(crime) <- list(row=c("Alabama",        "Alaska"   ,      "Arizona",       
                              "Arkansas",       "California"  ,   "Colorado"  ,    
                              "Connecticut",    "Delaware"  ,     "Florida"    ,   
                              "Georgia"   ,     "Hawaii"     ,    "Idaho"       ,  
                              "Illinois"   ,    "Indiana"     ,   "Iowa"         , 
                              "Kansas"      ,   "Kentucky"     ,  "Louisiana"     ,
                              "Maine"        ,  "Maryland"    ,   "Massachusetts" ,
                              "Michigan"      , "Minnesota"    ,  "Mississippi"   ,
                              "Missouri"   ,    "Montana"      ,  "Nebraska"      ,
                              "Nevada"      ,   "New Hampshire",  "New Jersey"    ,
                              "New Mexico"   ,  "New York"     ,  "North Carolina",
                              "North Dakota"  , "Ohio"          , "Oklahoma"      ,
                              "Oregon"         ,"Pennsylvania" ,  "Rhode Island"  ,
                              "South Carolina", "South Dakota"  , "Tennessee"     ,
                              "Texas"        ,  "Utah"         ,  "Vermont"       ,
                              "Virginia"      , "Washington"    , "West Virginia" ,
                              "Wisconsin"    ,  "Wyoming"),col=names(crime))


crime

library(tidyverse)

crime1<- crime %>% select(-X) 
crime1


#---------------------------------
library(Factoshiny)
result <- Factoshiny(crime1)

