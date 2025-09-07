import requests
import random
import string
import time

MAILTM_BASE = "https://api.mail.tm"
import os
try:
 from cfonts import render, say
except:
 os.system('pip install python-cfonts')
 os.system('pip install render')
 os.system('pip install say')
output = render('EL3ARABY', colors=['red', 'blue'], align='center')
print(output)
print("                      THIS TOOL IS MADE BY ELARABY ( TEMP MAIL TOOL ) ")
print('  ='*60)
print()


def gen_mailtm():
    # Create random account
    username = ''.join(random.choice(string.ascii_lowercase + string.digits) for _ in range(10))
    password = ''.join(random.choice(string.ascii_letters + string.digits) for _ in range(12))
    domain_resp = requests.get(f"{MAILTM_BASE}/domains").json()
    domain = domain_resp["hydra:member"][0]["domain"]
    email = f"{username}@{domain}"

    # Register account
    acc = {"address": email, "password": password}
    requests.post(f"{MAILTM_BASE}/accounts", json=acc)

    # Login to get token
    token_resp = requests.post(f"{MAILTM_BASE}/token", json=acc).json()
    token = token_resp["token"]
    return email, token

def get_mailtm_messages(token):
    headers = {"Authorization": f"Bearer {token}"}
    resp = requests.get(f"{MAILTM_BASE}/messages", headers=headers).json()
    return resp["hydra:member"]

def read_mailtm_message(token, message_id):
    headers = {"Authorization": f"Bearer {token}"}
    resp = requests.get(f"{MAILTM_BASE}/messages/{message_id}", headers=headers).json()
    return resp

if __name__ == "__main__":
    email, token = gen_mailtm()
    print(f"[+] Your mail.tm address: {email}")

    print("\n[*] Waiting for incoming messages (CTRL+C to quit)...\n")
    try:
        while True:
            msgs = get_mailtm_messages(token)
            if msgs:
                for msg in msgs:
                    full = read_mailtm_message(token, msg["id"])
                    print(f"\n--- New Message ---")
                    print(f"From: {full['from']['address']}")
                    print(f"Subject: {full['subject']}")
                    print(f"Body: {full['text']}")
            time.sleep(10)
    except KeyboardInterrupt:
        print("\n[!] Exiting...")
