echo "Actualizando ET Rules..."
wget https://rules.emergingthreats.net/open/suricata-5.0.0/emerging.rules.tar.gz
tar -xzvf emerging.rules.tar.gz
mv rules/ surirules/
cat surirules/rules/*.rules >> surirules/rules/suricata.rules