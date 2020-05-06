import requests
from bs4 import BeautifulSoup


def run_test(url_list):

    results = []

    for url in url_list:
        total_time = 0
        total_time_without_page_load = 0
        total_size = 0
        encoded_size = 0

        page = requests.get(url)
        page_load = page.elapsed.microseconds
        soup = BeautifulSoup(page.content, 'html.parser')
        resources = soup.find_all('img') + soup.find_all('script') + soup.find_all('link') + soup.find_all(
            'style') + soup.find_all('source')

        for img in resources:
            skip_resource = False
            if "src" in img.attrs or "srcset" in img.attrs or "href" in img.attrs:
                if "src" in img.attrs:
                    imgUrl = img.attrs["src"]
                elif "srcset" in img.attrs:
                    imgUrl = img.attrs["srcset"]
                else:
                    imgUrl = img.attrs["href"]

                if imgUrl.startswith("//"):
                    imgUrl = "https:" + imgUrl
                elif imgUrl.startswith("/"):
                    if imgUrl[-3:] != 'mp4':
                        imgUrl = url + imgUrl
                    else:
                        skip_resource = True

            if not skip_resource:
                request = requests.get(imgUrl)

                total_time += (request.elapsed.microseconds + page_load) / 1000000
                total_time_without_page_load += request.elapsed.microseconds / 1000000
                total_size += len(request.content) / 1024

                if 'content-length' in request.headers:
                    encoded_size += int(request.headers['content-length']) / 1024
        results.append([url, total_time, total_size])

    return results
