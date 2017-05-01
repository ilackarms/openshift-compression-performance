#!/bin/bash

function do100() {
	for i in $(seq 100); do oc import-image testimage$1$i --from docker.io/fedora --confirm; done
}

for i in $(seq 100); do (do100 c${i} &) ; done
