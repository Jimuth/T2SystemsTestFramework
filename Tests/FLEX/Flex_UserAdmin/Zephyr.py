import json
import jwt
import time
import hashlib
import requests



class Zephyr:

    def Create_Zephyr_Execution(self, data, tc, project):

# USER
        USER = 'jasonprobala'

# ACCESS KEY from navigation >> Tests >> API Keys
        ACCESS_KEY = 'amlyYTpjNTk2ZDY4ZS1kNDQ5LTQzZTctYThmMC1jOGE2MmI5NzY0ZjggamFzb25wcm9iYWxhIFByb2JhbGE'

# ACCESS KEY from navigation >> Tests >> API Keys
        SECRET_KEY = 'qdaek34WqQEVHL6gDauFVbsiaecHynrpbh9CS5P7R7A'

# JWT EXPIRE how long token been to be active? 3600 == 1 hour
        JWT_EXPIRE = 3600

# BASE URL for Zephyr for Jira Cloud
        BASE_URL = 'https://prod-api.zephyr4jiracloud.com/connect'

# RELATIVE PATH for token generation and make request to api
        RELATIVE_PATH = '/public/rest/api/1.0/execution'

# CANONICAL PATH (Http Method & Relative Path & Query String)
        CANONICAL_PATH = 'POST&'+RELATIVE_PATH+'&'

# TOKEN HEADER: to generate jwt token
        payload_token = {
             'sub': USER,
             'qsh': hashlib.sha256(CANONICAL_PATH.encode('utf-8')).hexdigest(),
             'iss': ACCESS_KEY,
             'exp': int(time.time())+JWT_EXPIRE,
             'iat': int(time.time())
        }

# GENERATE TOKEN
        token = jwt.encode(payload_token, SECRET_KEY, algorithm='HS256').strip().decode('utf-8')

# REQUEST HEADER: to authenticate and authorize api
        headers = {
                'Authorization': 'JWT '+token,
                'Content-Type': 'application/json',
                'zapiAccessKey': ACCESS_KEY
                }


# REQUEST PAYLOAD: to create execution
        execution = {
                'issueId': tc,
                'projectId':  project,
                'versionId': -1
                }

#'cycleId': "0001490801193630-242ac112-0001",
# MAKE REQUEST:
        raw_result = requests.post(BASE_URL + RELATIVE_PATH, headers=headers, json=execution)


# JSON RESPONSE: convert response to JSON
        json_result = (json.loads(raw_result.text))
        print(json.dumps(json_result, indent=4, sort_keys=True))

#store needed values to a data object for listener to consume
        data = {

            'tc': str(json_result["execution"]["issueId"]),
            'project': str(json_result["execution"]["projectId"]),
            'executionid': json_result["execution"]["id"],
            'cycle':str(json_result["execution"]["cycleId"])
        }

# write data values to a text file
        with open("Zephyrdata.txt", "w") as myfile:
            json.dump(data, myfile, indent=4, sort_keys=True)


# PRINT RESPONSE: for debugging - pretty print with 4 indent
        #print(json.dumps(json_result, indent=4, sort_keys=True))



