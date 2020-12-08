echo "Ejecutando Suricata..."
docker run --rm -it --net=host \
    -v $(pwd)/suriconf:/etc/suricata \
    -v $(pwd)/surilog:/var/log/suricata \
    -v $(pwd)/surirules:/var/lib/suricata \
    --cap-add=net_admin --cap-add=sys_nice \
    jasonish/suricata:latest -i eth0 -D
echo "Actualizando ET Rules..."
wget https://rules.emergingthreats.net/open/suricata-5.0.0/emerging.rules.tar.gz
tar -xzvf emerging.rules.tar.gz
mv rules/ surirules/
cat surirules/rules/*.rules >> surirules/rules/suricata.rules