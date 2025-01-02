#!/bin/bash

cd target
tar -xzvf example-ddl.tar.gz

cd example-ddl && ./create_all.sh
