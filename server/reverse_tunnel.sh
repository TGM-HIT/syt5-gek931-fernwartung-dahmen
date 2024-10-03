#!/bin/bash
ssh -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -L 2222:localhost:22 dmz -v