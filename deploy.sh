#!/bin/sh

jaspr build && rm -rf web/* && mv build/jaspr/* web/. && cp CNAME web/. && peanut
