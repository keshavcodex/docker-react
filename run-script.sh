echo "Enter port number"
read port
echo "Enter image name or image ID"
read image
docker run -p $port:3000 -v /usr/app/node_modules -v $(pwd):/usr/app $image