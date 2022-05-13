import json


def handler(event, context):
    print("event :", event)
    print("context :", context)

    return {
        "statusCode": 200,
        "body": json.dumps({"message": "Soy una lambda desde docker"})
    }
