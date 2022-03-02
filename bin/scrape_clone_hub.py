#!/usr/bin/env python

"""
Usage:
  images.py [--start-page N]

Options:
  --start-page <N>         Start Downloads on page N

Environment:
N/A
"""

from __future__ import print_function
from pprint import pp

import docopt
import sys
import time
import re
import requests

from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By


def main(args):
    """
    """

    browser = webdriver.Chrome()

    j = 38
    while j < 39:
        browser.get('https://constructs.dev/search?q=&offset={}'.format(j))

        time.sleep(3)

        i = 1
        while i < 25:
            browser.find_element(
                By.XPATH, value='/html/body/div[2]/main/div/div[2]/div[2]/div[{}]/article/div[1]/div[1]/a'.format(i)).click()

            time.sleep(2)

            url = browser.find_element(
                By.XPATH, value='/html/body/div[2]/main/div/div[1]/div[3]/div/div[2]/div/p[2]/span/a').get_property('href')

            print('{}'.format(url))

            browser.back()
            i = i + 1

        j = j + 1
        browser.find_element(
            By.XPATH, value='/html/body/div[2]/main/div/div[2]/div[3]/div/button[2]').click()

    browser.close()

    return 0


if __name__ == '__main__':
    arguments = {}
    arguments['start-page'] = 1

    arguments = docopt.docopt(__doc__, options_first=True, version="0.0.1")
    sys.exit(main(arguments))
