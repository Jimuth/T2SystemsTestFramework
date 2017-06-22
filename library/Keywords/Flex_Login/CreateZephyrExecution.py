import json
import jwt
import time
import hashlib
import requests


def is_json(data):
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
BASE_URL = 'https://prod-api.zephyr4jiracloud.com'

# RELATIVE PATH for token generation and make request to api
RELATIVE_PATH = '/connect/public/rest/api/1.0/execution'

# CANONICAL PATH (Http Method & Relative Path & Query String)
CANONICAL_PATH = 'POST&'+RELATIVE_PATH+'&'

# encoded hash for POST to https://prod-api.zephyr4jiracloud.com/connect/public/rest/api/1.0/execution
qsh_hash = 'bd5f161eaf36bdb21649290062cfeb950b81899244215d067ab3f302d3767c7e'

# TOKEN HEADER: to generate jwt token
payload_token = {
            'sub': USER,
            'qsh': qsh_hash,
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

token2 = jwt.decode(token, SECRET_KEY, algorithm='HS256')
JWT2 = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJqYXNvbnByb2JhbGEiLCJxc2giOiJiZDVmMTYxZWFmMzZiZGIyMTY0OTI5MDA2MmNmZWI5NTBiODE4OTkyNDQyMTVkMDY3YWIzZjMwMmQzNzY3YzdlIiwiaXNzIjoiYW1seVlUcGpOVGsyWkRZNFpTMWtORFE1TFRRelpUY3RZVGhtTUMxak9HRTJNbUk1TnpZMFpqZ2dhbUZ6YjI1d2NtOWlZV3hoSUZCeWIySmhiR0UiLCJleHAiOjE0ODk0Mjg3OTcsImlhdCI6MTQ4OTQyNTE5N30.7lzqZRW9OBzMSDgFzrYLA5IJbAU22w_Ar2LEj0EQcnk"


# REQUEST HEADER: to create cycle
headers = {
    #'Authorization': 'JWT '+JWT2,
    'Authorization': 'JWT '+token,
    'Content-Type': 'application/json',
    'zapiAccessKey': ACCESS_KEY
}

# REQUEST PAYLOAD: to create cycle
cycle = {
            'issueId': 22300,
            'projectId':  10000,
            'versionId': -1
        }

# MAKE REQUEST:
raw_result = requests.post(BASE_URL + RELATIVE_PATH, headers=headers,  json=cycle)
if is_json(raw_result.text):

    # JSON RESPONSE: convert response to JSON
    json_result = json.loads(raw_result.text)

    # PRINT RESPONSE: pretty print with 4 indent
    print(json.dumps(json_result, indent=4, sort_keys=True))

else:
    print(raw_result.text)
