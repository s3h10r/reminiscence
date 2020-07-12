#!/usr/bin/env python3
"""
usage:

    <me> <username> <password> [url_to_add]
"""
import getpass
import requests
import sys

#url_api = None
url_api = 'http://localhost/restapi/'
url2add = None
params = {'username': None, 'password': None}
headers = {}


def add_url(rem_url=None, auth_token=None, url=None, dir="/AddToReminiscence", media_link=False):
    headers = {}
    headers['Authorization'] = 'Token {}'.format(token)
    params = {'url': url, 'directory': dir, 'media_link': media_link}
    r = requests.post("{}/add-url/".format(rem_url), data=params, headers=headers) # HTTP-POST
    print(r.status_code,r.reason)
    print(r.json())
    if r.status_code != 200:
        sys.exit(-1)


if __name__ == '__main__':
    if not url_api:
        url_api = input('url of reminiscence api instance? (example : http://localhost/restapi)')
    print("url_api : {}".format(url_api))
    if len(sys.argv) < 2:
        for param in params:
            if not params[param]:
                params[param] = getpass.getpass("{}?  ".format(param))
    else:
        params['username'] = sys.argv[1]
        params['password'] = sys.argv[2]
        if len(sys.argv) > 3:
            url2add = sys.argv[3]

    url_api = url_api.rstrip('/')
    # get AUTH TOKEN
    print("{}/login/".format(url_api)) # HTTP-POST
    r = requests.post("{}/login/".format(url_api), data=params, headers=headers) # HTTP-POST
    #print(type(r))
    print(r.status_code,r.reason)
    print(r.json())
    token = None
    if r.status_code == 200:
        token = r.json()['token']
    else:
        sys.exit(-1)
    # do query
    headers['Authorization'] = 'Token {}'.format(token)
    r = requests.get("{}/list-directories/".format(url_api), headers=headers) # HTTP-GET
    print(r.status_code,r.reason)
    print(r.json())

    if url2add:
       add_url(url_api, token, url2add)

    # logout
    r = requests.get("{}/logout/".format(url_api), params=None, headers=headers) # HTTP-GET
    print(r.status_code,r.reason)
