import requests

r = requests.get('https://api-tls11.friendbuy.com')
print(r.json())