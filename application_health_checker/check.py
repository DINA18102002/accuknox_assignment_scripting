import requests
from datetime import datetime

URL = "https://theenatech.com"

def check_application():
    try:
        response = requests.get(URL, timeout=5)

        if response.status_code == 200:
            print(f"[{datetime.now()}] Application is UP")
        else:
            print(f"[{datetime.now()}] Application returned status {response.status_code}")

    except requests.exceptions.RequestException:
        print(f"[{datetime.now()}] Application is DOWN")

if __name__ == "__main__":
    check_application()