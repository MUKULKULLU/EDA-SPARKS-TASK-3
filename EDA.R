set.seed(123)
### EDA ON SAMPLE SUPERSTORE DATASET

### READ DATA
data=read.csv("SampleSuperstore.csv")
data
attach(data)

### NAMES
names(data)

### DATA STRUCTURES
str(superstore)


### SUMMARY OF THE GIVEN DATASET

summary(data)

### MISSING VALUE CHECK
colSums(is.na(data))

#NO MISSING VALUES

### TOTAL QUANTITY,SALES,PROFIT INVOLVED

QTY=sum(data$Quantity)
QTY

SAL=sum(datat$Sales)
SAL

PRO=sum(data$Profit)
PRO

data.frame(QTY,SAL,PRO)

###DATA VISUALISATION
#Package
library(ggplot2)


##Shipping Mode 

table( Ship.Mode )

ggplot(data, aes(x = Ship.Mode,fill=Ship.Mode)) + geom_bar(width=0.4)

#MAXIMUM CUSTOMERS PREFER STANDARD CLASS AS SHIPPING MODE

##Region

table( Region )
ggplot(data, aes(x = Region,fill=Ship.Mode)) + geom_bar(width=0.4)

#MAX SHIPMENT FROM WEST REGION

##Segment

table( Segment)

ggplot(data, aes(x = Segment,fill=Ship.Mode)) +  geom_bar(width=0.4)

#CONSUMER's AVAIL THE MAXIMUM

##Category

table(Category)

ggplot(data, aes(x = Category,fill=Category)) +  geom_bar(width=0.4)

#MOST OF THE SHIPMENTS ARE OFFICE SUPPLIIES

table(Sub.Category)

ggplot(data, aes(x = Sub.Category,fill=Sub.Category)) +  geom_bar(width=0.6)

#MAX SUB CAT ARE BINDERS>PAPER>FURNISHING & MIN SUPPLIES>MACHINES>COPIERS

# STATE

table(data.frame(State))
ggplot(data, aes(x = State)) +  geom_bar(width=0.6)

#HIGHEST BUYERS ARE FROM CALIFORNIA>NEWYORK>TEXAS

##QUANTITY

ggplot(data, aes(x = Quantity,fill=Ship.Mode)) +  geom_bar(width=0.6)

# MOST OF THEM BUY QTY 2-3


##SALES

ggplot(data, aes(x = Segment,y = Sales,fill=Segment)) +  geom_bar(stat="identity",width=0.6)

#MAX SALES IN CONSUMER SEGMENT

## PROFIT

data1=data[Profit>0,]
ggplot(data1, aes(x = Segment,y = Profit,fill=Segment)) +  geom_bar(stat="identity",width=0.6)

#MAX PROFIT IN CONSUMER SEGMENT

## SALES & PROFIT WITH REGION

ggplot(data, aes(x = Region,y = Sales,fill=Region)) +  geom_bar(stat="identity",width=0.6)

ggplot(data1, aes(x = Region,y = Profit,fill=Region)) +  geom_bar(stat="identity",width=0.6)

#MAX SALES IN WEST BUT MAX PROFIT IN EAST

#SALES EVALUATION OF CATEGORIES

ggplot(data, aes(x = Category,y = Sales,fill=Category)) +  geom_bar(stat="identity",width=0.6)

ggplot(data, aes(x = Sub.Category,y = Sales,fill=Sub.Category)) +  geom_bar(stat="identity",width=0.6)
  

#MAX SALES IN TECH CATEGORY WITH SALE OF PHONES AND CHAIRS WHILE FASTENERS AND LABELS IN OFFICE SUPPLIES HAS MINIMUM SALES













