from modules.ec2.ec2 import get_ec2_details

def lambda_handler(event, context):

    ec2_data = get_ec2_details()

    for instance in ec2_data:

        print("-----------")
        print(f"Name: {instance['Name']}")
        print(f"Instance ID: {instance['InstanceId']}")
        print(f"State: {instance['State']}")
        print(f"Public IP: {instance['PublicIP']}")

    return {
        'statusCode': 200,
        'body': 'Ec2 Succesfully Queried'
    }