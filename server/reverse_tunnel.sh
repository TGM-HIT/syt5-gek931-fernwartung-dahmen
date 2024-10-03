#!/bin/bash

ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -R 2222:localhost:22 dmz