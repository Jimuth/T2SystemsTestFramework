ROBOT_LISTENER_API_VERSION = 3

import json
import jwt
import time
import hashlib
import requests



def end_test(data, result):

    # USER
    USER = 'jasonprobala'
    with open('Zephyrdata.txt') as json_file:
        json_data = json.load(json_file)

        # Debug to see if json is correct   print(json.dumps(json_data, indent=4, sort_keys=True))
        tc = json_data["tc"]
        projectid = json_data["project"]
        executionid = json_data["executionid"]
        cycle = json_data["cycle"]

    # ACCESS KEY from navigation >> Tests >> API Keys
    ACCESS_KEY = 'amlyYTpjNTk2ZDY4ZS1kNDQ5LTQzZTctYThmMC1jOGE2MmI5NzY0ZjggamFzb25wcm9iYWxhIFByb2JhbGE'

    # ACCESS KEY from navigation >> Tests >> API Keys
    SECRET_KEY = 'qdaek34WqQEVHL6gDauFVbsiaecHynrpbh9CS5P7R7A'

    # JWT EXPIRE how long token been to be active? 3600 == 1 hour
    JWT_EXPIRE = 3600

    # BASE URL for Zephyr for Jira Cloud
    BASE_URL = 'https://prod-api.zephyr4jiracloud.com/connect'

    # RELATIVE PATH for token generation and make request to api
    RELATIVE_PATH = '/public/rest/api/1.0/execution/' + executionid
    # https://prod-api.zephyr4jiracloud.com/connect/public/rest/api/1.0/execution/0001489357946692-242ac112-0001
    # CANONICAL PATH (Http Method & Relative Path & Query String)
    CANONICAL_PATH = 'PUT&' + RELATIVE_PATH + '&'

    # encoded hash for POST to https://prod-api.zephyr4jiracloud.com/connect/public/rest/api/1.0/execution

    # TOKEN HEADER: to generate jwt token
    payload_token = {
        'sub': USER,
        'qsh': hashlib.sha256(CANONICAL_PATH.encode('utf-8')).hexdigest(),
        'iss': ACCESS_KEY,
        'exp': int(time.time()) + JWT_EXPIRE,
        'iat': int(time.time())
    }

    # GENERATE TOKEN
    token = jwt.encode(payload_token, SECRET_KEY, algorithm='HS256').strip().decode('utf-8')

    # REQUEST HEADER: to authenticate and authorize api
    headers = {
        'Authorization': 'JWT ' + token,
        'Content-Type': 'application/json',
        'zapiAccessKey': ACCESS_KEY
    }

    if result.passed:
        execution = {
            "status": {"id": 1},
            "id": executionid,
            "projectId": projectid,
            "issueId": tc,
            "cycleId": cycle,
            "versionId": -1,
            "comment": "AUTOMATED EXECUTION"
        }
        raw_result = requests.put(BASE_URL + RELATIVE_PATH, headers=headers, json=execution)


    if not result.passed:

        execution = {
                    "status": {"id": 2},
                    "id": executionid,
                    "projectId": projectid,
                    "issueId": tc,
                    "cycleId": cycle,
                    "versionId": -1,
                    "comment": result.message
                    }
        raw_result = requests.put(BASE_URL + RELATIVE_PATH, headers=headers, json=execution)


