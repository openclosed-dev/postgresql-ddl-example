#!/bin/bash

cd target
tar -xzf example-ddl.tar.gz

cd example-ddl && ./create_all.sh
