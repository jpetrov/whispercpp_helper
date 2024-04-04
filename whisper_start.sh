#!/bin/bash
ffmpeg -i $1 -acodec pcm_s16le -ac 1 -ar 16000 out.wav
./main -m ./models/ggml-large-v3-q5_0.bin -f out.wav > $2
