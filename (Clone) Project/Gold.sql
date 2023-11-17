-- Databricks notebook source
Use project

-- COMMAND ----------

Create table if not exists project.gold as (select product_name, sum(quantity) as totalquantity from silver group by all order by totalquantity desc)

-- COMMAND ----------

select * from project.gold

-- COMMAND ----------


