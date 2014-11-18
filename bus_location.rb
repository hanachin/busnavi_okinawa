require 'faraday'

schema = 'http://'
api_host = 'www.busnavi-okinawa.com'
bus_location_path = '/map/Location/BusLocation'

# XHRのヘッダが必要
# X-Requested-With: XMLHttpRequest

"#{schema}#{api_host}"

# query string
# datetime=91
#   謎
# keitouSid=246d70c6-18ae-4c9d-a754-040c3085150e
#   系統番号ごとに振られてるっぽい
# courseGroupSid=9c6242c7-9bfd-41c0-8237-ae0131c9b3af
#   上り/下りなど、同じ系統番号でもコースが違う
# courseSid=AllStations
#   上り/下りの中でも、いくつか経由する停留所が違うことがあるのでそれ
# courseName=%E5%85%A8%E5%81%9C%E7%95%99%E6%89%80%E8%A1%A8%E7%A4%BA'
#   ↑の文字列名、ないとエラー
