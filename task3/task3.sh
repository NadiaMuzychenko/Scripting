#!/bin/sh

service_name="apache2" 
if pgrep -x "$service_name" >/dev/null 
then 
    echo "Сервіс $service_name уже працює" 
else 
    echo "Сервіс $service_name ne працює"  
fi
