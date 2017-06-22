import json
import jwt
import time
import hashlib
import requests


def Create_Zephyr_Execution(data):
        try:
         json.loads(data)
        except ValueError:
           return False
        return True
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
RELATIVE_PATH = '/public/rest/api/1.0/cycle'

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
cycle = {
                'name': "Build1237",
                'projectId':  10000,
                'versionId': -1,
                }


# MAKE REQUEST:
raw_result = requests.post(BASE_URL + RELATIVE_PATH, headers=headers, json=cycle)

if Create_Zephyr_Execution(raw_result.text):

    # JSON RESPONSE: convert response to JSON
    json_result = (json.loads(raw_result.text))



    # PRINT RESPONSE: pretty print with 4 indent
    print(json.dumps(json_result, indent=4, sort_keys=True))

else:
    print(raw_result.text)


