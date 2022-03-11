#!/usr/bin/env python

"""
Usage:
  images.py [--start-page N] [--end-page N] [--records-per-page N] [--cdk CDK]

Options:
  --start-page <N>         Start Downloads on page N  [default: 1]
  --end-page <N>           End Download on page N  [default: 10]
  --records-per-page <N>   Number(N) of items per page  [default: 25]
  --cdk <cdk8s|cdk|cdktf>  Type of cdk [default: cdktf]

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

    j = args['--start-page']
    while j < args['--end-page']:
        print('=> Page {}'.format(j))
        browser.get(
            'https://constructs.dev/search?cdk={}&q=&offset={}'.format(args['--cdk'], j))
        time.sleep(3)

        i = 1
        while i < int(args['--records-per-page']):
            browser.find_element(
                By.XPATH, value='/html/body/div[2]/main/div/div[2]/div[2]/div[{}]/article/div[1]/div[1]/a'.format(i)).click()
            time.sleep(3)

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
    arguments = docopt.docopt(__doc__, options_first=True, version="0.0.1")
    print(arguments)
    sys.exit(main(arguments))
