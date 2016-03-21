#!/bin/sh
cd /usr/src/app && /usr/local/bin/gunicorn cropcompass:app -w 2 -b :8000 --reload
