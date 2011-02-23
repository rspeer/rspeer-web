#!/bin/sh
hyde gen && rsync -avz deploy/ rspeer@ml.media.mit.edu:public_html/ && rsync -avz media rspeer@ml.media.mit.edu:public_html/
