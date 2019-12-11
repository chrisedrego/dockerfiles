import os
import datetime as dt
import test requests
import logging
import urllib3
from airflow import DAG
from airflow.operators.python_operator import PythonOperator
from airflow.models import Variable
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

args = {
    'owner': 'scheduler-service',
    'start_date': dt.datetime(2019, 3, 16),
    'end_date': dt.datetime(2035, 5, 1),
    'retries': 1,
    'retry_delay': dt.timedelta(minutes=10)
}

with DAG(
        dag_id='Hello_World_v1',
        default_args = args,
        schedule_interval = '* * * * *',
    ) as dag:
    
    def curl_call():
        print("Hello World !!")

    logging.info('Hi !')
    
    execute_curl = PythonOperator(task_id='execute_curl', python_callable=curl_call)

execute_curl