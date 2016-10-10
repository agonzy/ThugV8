echo "Bout 2 installz that Thug v0.8..." && sleep 5
echo "Installing maaaaaad dependencies..."
sudo apt-get install python-pip python-dev build-essential libffi-dev libxml2-dev libxslt-dev cython libssl-dev libpq-dev zlib1g-dev libjpeg-dev libfuzzy-dev git-core libgraphviz-dev graphviz libboost-all-dev autoconf libtool pkg-config python-opengl python-imaging

echo "Installing MongoDB & PyMongo..."
sudo apt-get install mongodb -y
sudo update-rc.d mongodb enable

echo "Installing some Python toolzzz..."
sudo easy_install -U setuptools greenlet gevent

echo "Big pipin..."
sudo -H pip install --upgrade pip
sudo -H pip install requests[security]
sudo -H pip install --upgrade requests[security]
sudo -H pip install thug

echo "Installing Google V8/PyV8..."
cd /opt
sudo git clone https://github.com/buffer/pyv8.git 
cd pyv8
sudo python setup.py build 
sudo python setup.py install 

echo "Git cloning/Installing thug"  
cd /opt
sudo git clone http://github.com/buffer/thug
cd thug
sudo python setup.py build
sudo python setup.py install

echo "Setting environment variables for thug"
echo '/opt/libemu/lib/' |sudo tee /etc/ld.so.conf.d/libemu.conf
sudo ldconfig




