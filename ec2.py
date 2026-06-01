import boto3

def get_ec2_details():

    ec2 = boto3.client('ec2')

    response = ec2.describe_instances()

    instance_list = []

    for reservation in response['Reservations']:

        for instance in reservation['Instances']:

            instance_id = instance['InstanceId']

            state = instance['State']['Name']

            public_ip = instance.get('PublicIpAddress', 'No Public IP')

            name = "No Name"

            if 'Tags' in instance:

                for tag in instance['Tags']:

                    if tag['Key'] == 'Name':

                        name = tag['Value']

            if state == "running":

                instance_data = {
                    "Name": name,
                    "InstanceId": instance_id,
                    "State": state,
                    "PublicIP": public_ip
                }

                instance_list.append(instance_data)

    return instance_list