import requests
from requests.exceptions import ConnectionError

try:
    r = requests.get('https://api-tls11.friendbuy.com')
    print(r.json())
except ConnectionError as e:
    print('TLS 1.1 is not supported. Please upgrade your integration.')