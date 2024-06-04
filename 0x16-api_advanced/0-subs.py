#!/usr/bin/python3
"""
Module that queries the Reddit API and returns the number of subscribers
for a given subreddit. If an invalid subreddit is given, the function
returns 0.
"""
import requests


def number_of_subscribers(subreddit):
    """
    Returns the number of subscribers for the given subreddit.

    Args:
        subreddit (str): The name of the subreddit.

    Returns:
        int: The number of subscribers for the given subreddit, or 0 if the
             subreddit is invalid.
    """
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    headers = {"User-Agent": "python:reddit-api:v1.0.0 (by /u/SupermarketHead2735)"}

    try:
        response = requests.get(url, headers=headers, allow_redirects=False)
        response.raise_for_status()
        data = response.json()
        return data["data"]["subscribers"]
    except (requests.exceptions.RequestException, KeyError, ValueError):
        return 0
