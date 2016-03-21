#!/bin/bash

export  DBHOST="orag2.cdiwyyhvswzb.us-west-2.rds.amazonaws.com"
export PGPASSWORD="hackoregon"
pg_restore -v -C -h $DBHOST -U postgres -d postgres backup-or-agriculture-mar-21-2016.dump
