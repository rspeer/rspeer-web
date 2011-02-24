#!/bin/sh
PYTHONPATH=`pwd` hyde gen && rsync -avz --size-only deploy/ rspeer@ml.media.mit.edu:public_html/ && rsync -avz media rspeer@ml.media.mit.edu:public_html/
