
#publican mensajes 
mosquitto_pub -h localhost -p 15000 -t "shelly/ht" -m '{"temp":23.7,"hum":61}'
mosquitto_pub -h localhost -p 15000 -t "shelly/ht" -m '{"temp":25.0,"hum":58}'
mosquitto_pub -h localhost -p 15000 -t "shelly/ht" -m '{"temp":24.1,"hum":60}'

mosquitto_pub -h localhost -p 15000 -t "shelly/switch" -m '{"state":"ON","power":42.5}'
mosquitto_pub -h localhost -p 15000 -t "shelly/switch" -m '{"state":"ON","power":65.2}' 
mosquitto_pub -h localhost -p 15000 -t "shelly/switch" -m '{"state":"OFF","power":0.0}'

#consumen mensajes
#escucha todos los de shelly
mosquitto_sub -h localhost -p 15000 -t 'shelly/#' -v
#escucha los de shelly/ht
mosquitto_sub -h localhost -p 15000 -t 'shelly/ht' -v
#escucha los de shelly/switch
mosquitto_sub -h localhost -p 15000 -t 'shelly/switch' -v


