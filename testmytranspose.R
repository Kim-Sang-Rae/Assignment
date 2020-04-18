#기 정의된 함수 불러오기(mytranspose 함수)
source("C:/Users/SangRae_Kim/Desktop/mytranspose.r")


#변수 정의(Matrix 형태)
myvar1_1 <-  matrix(1:10, nrow=5, ncol=2)
myvar1_2 <-  matrix(NA, nrow=0, ncol=0)
myvar1_3 <-  matrix(c(1,2), nrow=1, ncol=2)
myvar1_4 <-  matrix(c(1,2), nrow=2, ncol=1)


#변수 정의(Vector 형태)
myvar2_1 <- c(1,2,NA,3)
myvar2_2 <- c(NA)
myvar2_3 <- c()


#변수 정의(Dataframe 형태)
d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)
f <- c(TRUE,TRUE,TRUE,FALSE)
mydata3 <- data.frame(d,e,f)


# NA의 값이 fucntion기능내에서 numeric으로 산출되는 현상 발생
# 해당 이유로 t()함수의 모드를 numeric으로 변경하여 y1,y2로 지정
y1<-t(myvar1_2)
y2<-t(myvar2_2)
mode(y1) <- "numeric"
mode(y2) <- "numeric"


#테스트 실행(myvar1)
all.equal(mytranspose(myvar1_1),t(myvar1_1))
all.equal(mytranspose(myvar1_2),y1)
all.equal(mytranspose(myvar1_3),t(myvar1_3))
all.equal(mytranspose(myvar1_4),t(myvar1_4))


#테스트 실행(myvar2)
all.equal(mytranspose(myvar2_1),t(myvar2_1))
all.equal(mytranspose(myvar2_2),y2)
all.equal(mytranspose(myvar2_3),0)


##테스트 실행(mydata3)
all.equal(mytranspose(mydata3),t(mydata3))
