sudo docker run -p 8050:8050 -v $(pwd)/app.py:/home/app.py \
	-it dockerfile/dash 
