#!/usr/bin/python3
"""
Queries the Reddit API and returns the number of subscribers
for a given subreddit.
"""

import requests


def number_of_subscribers(subreddit):
    """
    Queries the Reddit API and returns the number of subscribers
    for a given subreddit.

    Args:
        subreddit (str): The name of the subreddit.

    Returns:
        int: The number of subscribers for the given subreddit.
             If the subreddit is invalid, returns 0.
    """
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    headers = {"User-Agent": "linux:0x16.api.advanced:v2.0.0 (by  u/Curious-Hold4912)"}

    response = requests.get(url, headers=headers, allow_redirects=False)

    if response.status_code == 200:
        data = response.json()  # Correctly indented
        return data.get("data", {}).get("subscribers", 0)  # Correct indentation
    return 0  # Proper return statement placement
