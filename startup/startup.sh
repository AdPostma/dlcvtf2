iptables -t nat -I PREROUTING -p tcp --dport 80 -j REDIRECT --to-ports 8080 
iptables -t nat -I OUTPUT -p tcp -o lo --dport 80 -j REDIRECT --to-ports 8080
cd ~jupyter
git clone https://github.com/embedded-vision/dlcvtf2
chown -R jupyter dlcvtf2
