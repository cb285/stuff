# default deny
sudo -s ufw default deny outgoing
sudo -s ufw default deny incoming

# allow local network
sudo -s ufw allow in to 192.168.0.0/24
sudo -s ufw allow out to 192.168.0.0/24
sudo -s ufw allow in to 10.0.1.0/24
sudo -s ufw allow out to 10.0.1.0/24

# allow dns
sudo -s ufw allow out to any port 53

# get vpn server ips
#ip1=`dig +short nl-amsterdam.ra4wvpn.com | head -n 1`

# allow vpn connection
sudo -s ufw allow out 1194/udp
sudo -s ufw allow out 443/tcp

sudo -s ufw allow out on tun0 from any to any
sudo -s ufw allow in on tun0 from any to any
