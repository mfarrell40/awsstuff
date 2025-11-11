import json
import boto3
import csv	
		
s3_client = boto3.client("s3")
bkt = 'tf-app-bucket-20251111'

def lambda_handler(event, context):
    obj_key = "statsInput.txt"
    
    file_content = s3_client.get_object(Bucket = bkt, Key=obj_key)["Body"].read().decode('utf-8').splitlines()
    
    lines = csv.reader(file_content, delimiter=',')
    
    print("-------------------------------------------")
    
    for line in lines:
        print (line[1] + " --- " + line[27] + " --- " + line[21])
        
    print("-------------------------------------------")