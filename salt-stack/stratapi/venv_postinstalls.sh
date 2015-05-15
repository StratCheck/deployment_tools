. /var/www/stratapi/stratapi/venv/bin/activate
pip install -r /var/www/stratapi/stratapi/requirements/finalstep.txt
cd /var/www/stratapi/stratapi/strat-check
python setup.py install
cd /var/www/stratapi/stratapi/wealth-viz
python setup.py install
