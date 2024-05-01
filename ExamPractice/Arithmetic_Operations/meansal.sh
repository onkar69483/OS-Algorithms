#!/bin/sh

avg=$(echo "scale=2; (1200+1400+1350+1800)/4" | bc)
echo "avg: $avg"	
