Use Itrechio
go
Select * from  [Heart disease data]

--1. How many patient had blood sugar when conducting  the fasting blood sugar?
select count(*) as Blood_Sugar from [Heart disease data]
where Fasting_Blood_Sugar = 'True'

--2.What are the total number of patient that had blood pressure higher that 120
Select count(*) as Hight_Blood_Pressure from [Heart disease data]
where Resting_BP > 120

--3.What is the average, highest and lowest heart rate for different ages?
Select Age, avg(thal) as avg_heart_rate, min(thal) as min_heart_rate from [Heart disease data]
group by age
order by age

--4. Which age group has the most men and most women?
Select Age, Sex, count(*) as total_count from [Heart disease data]
group by Age, Sex
order by total_count desc

--5. Which age has the overall highest level of cholesterol recorded?
Select Age, max(Serum_Cholesterol) as highest_Cholesterol from [Heart disease data]
group by Age
order by highest_Cholesterol desc

--6.Which age has the overall highest cholesterol level recorded?
Select Age, max(Serum_Cholesterol) as highest_cholesterol from [Heart disease data]
group by age
order by highest_cholesterol desc

--7.Who has higher average blood pressure: people with heart disease or those without it?
select target, avg(Resting_BP) as avg_bp from [Heart disease data]
group by target;
 
 --8.Which age group has the most men, and which has the most women?
select age, sex, count(*) as total_count from [Heart disease data]
group by age, sex
order by total_count desc;

--9.What is the average, highest, and lowest heart rate for different ages?
select age, avg(Thal) as avg_heart_rate, max(Thal) as max_heart_rate, min(Thal) as min_heart_rate from [Heart disease data]
group by age
order by age;

--10. What is the highest, lowest and average blood pressure recorded in the table?
select max(Resting_BP) as highest_bp, min(Resting_BP) as lowest_bp, avg(Resting_BP) as average_bp
from [Heart disease data];

--11. On average, who has higher cholesterol, men or women?
select sex, avg(Serum_Cholesterol) as avg_cholesterol
from [Heart disease data]
group by sex;



 



 
 



