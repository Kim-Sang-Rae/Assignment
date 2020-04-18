#�� ���ǵ� �Լ� �ҷ�����(mytranspose �Լ�)
source("C:/Users/SangRae_Kim/Desktop/mytranspose.r")


#���� ����(Matrix ����)
myvar1_1 <-  matrix(1:10, nrow=5, ncol=2)
myvar1_2 <-  matrix(NA, nrow=0, ncol=0)
myvar1_3 <-  matrix(c(1,2), nrow=1, ncol=2)
myvar1_4 <-  matrix(c(1,2), nrow=2, ncol=1)


#���� ����(Vector ����)
myvar2_1 <- c(1,2,NA,3)
myvar2_2 <- c(NA)
myvar2_3 <- c()


#���� ����(Dataframe ����)
d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)
f <- c(TRUE,TRUE,TRUE,FALSE)
mydata3 <- data.frame(d,e,f)


# NA�� ���� fucntion��ɳ����� numeric���� ����Ǵ� ���� �߻�
# �ش� ������ t()�Լ��� ��带 numeric���� �����Ͽ� y1,y2�� ����
y1<-t(myvar1_2)
y2<-t(myvar2_2)
mode(y1) <- "numeric"
mode(y2) <- "numeric"


#�׽�Ʈ ����(myvar1)
all.equal(mytranspose(myvar1_1),t(myvar1_1))
all.equal(mytranspose(myvar1_2),y1)
all.equal(mytranspose(myvar1_3),t(myvar1_3))
all.equal(mytranspose(myvar1_4),t(myvar1_4))


#�׽�Ʈ ����(myvar2)
all.equal(mytranspose(myvar2_1),t(myvar2_1))
all.equal(mytranspose(myvar2_2),y2)
all.equal(mytranspose(myvar2_3),0)


##�׽�Ʈ ����(mydata3)
all.equal(mytranspose(mydata3),t(mydata3))