rowCount = 0
team = ""

with open('s3://tf-app-bucket-20251111/statsInput.txt', 'r') as file:
    content = file.readlines()
    for line in content:
        rowCount += 1
        tokens = line.split(",")
		
		
s3_client = boto3.client("s3")
bkt = 'tf-app-bucket-20251111'

def lambda_handler(event, context):
    obj_key = "statsInput.txt"
    
    file_content = s3_client.get_object(Bucket = bkt, Key=obj_key)["Body"].read().decode('utf-8').splitlines()
    
    lines = csv.reader(file_content, delimiter=',')
    
    print("-------------------------------------------")
    
    for line in lines:
        print (line[1] + " --- " + line[27])
        
    print("-------------------------------------------")