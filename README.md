# Amazon_vine_Analysis_17

## Analysis Overview

This project analyzed the Amazon Vine program, to determine iif there is any bias toward favorable reviews from Vine members in the dataset. The dataset selected for review was the US Camera found at: 
https://s3.amazonaws.com/amazon-reviews-pds/tsv/amazon_reviews_us_Camera_v1_00.tsv.gz

The analysis used PySpark to perform the ETL (Extract, Transform and Load) process and connect an instance of AWS RDS to load the transormed data into pgAdmin. 

The data was exported to a database in PGADMIN that was not connected to AWS to preform the calculated different matrices. 

## Resources
  Datasource: Amazon Review datasetns, US Camera dataset
  Software: Google Colab Notebook, PostgreSQL , pgAdmin4, aws, PySpark
  
  
## Resultes

Vine Reviews: 587

      Total Vine Reviews.JPG
      
 None Vine Reviews: 55379
 
 
      Total Non Vine Reviews.JPG
      


Total number of 5-star Vinew Reviews: 247

      ![5 Star Vine Reviews](https://user-images.githubusercontent.com/117044267/226129353-9c0143be-f42a-413a-bcc4-e84d7f93df89.JPG)



Number of 5-Star non-Vine Reviews: 24825

      ![5 star non vine reviews](https://user-images.githubusercontent.com/117044267/226129401-1cb13cf0-b9f6-4418-9d05-d8de73eb106e.JPG)
      
      
## Summary
      
      
      ![Total Vine Reviews](https://user-images.githubusercontent.com/117044267/226130489-2c3f0a79-e8c6-4eb2-bbbd-40d70e743f32.JPG)
      
The total number of reviews vine and none vine was 55,966. the Vine reviews made a small percentage of these reviews at 1.05 percent. The percentage of 5 star review was 42.08% for Vine reviewers and 44.83% for none vine reviewers.  This shows that there is not a bias in the vine reviews based on the number of 5 star reiews received.  
 



