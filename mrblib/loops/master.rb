i2c = I2C.new(0, 32, 26)
i2c.driver_install

sht = SHT30.new(i2c)

WiFi.init()
WiFi.setup_psk("SSID", "PSKPW")
WiFi.start()

HTTPClient.init("http://ambidata.io/api/v2/channels/CID/data")
HTTPClient.set_method_post()
HTTPClient.set_header("Content-Type", "application/json")

while true
  if WiFi.is_connected?
    sht.measure
    print sht.get_temp, "\n"
    json = "{ \"writeKey\" : \"WKEY\", \"d1\" : \"#{sht.get_temp}\" }"
    HTTPClient.set_body(json)
    HTTPClient.invoke()
    sleep 10
  end
end

HTTPClient.cleanup()
