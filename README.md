
# Nginx Image Resize and Cache

Simple Nginx based image server to on-the-fly resize and cache images. The resized images are not saved on drive and hence save a lot of storage space.




## Authors

- [@sawan94](https://www.github.com/sawan94)


## Deployment

To deploy this project run

```bash
  docker-compose up -d
```


## How to Use

- Copy images to "images folder"
- Alternate to copying create a symbolic link to your images folder
- Add proxy_pass to 127.0.0.1:80 for all image files
- port 80 can be changed in docker-compose.yaml file

## Usage

- Assuming the image name is image.jpg
- Original image will be available at http://127.0.0.1/image.jpg
- Resize by using query parameters as follows:
- http://localhost/image.jpg?w=400
- Supported Query Parameters:
- ?w=  resize by width
- ?h=  resize by height


## Screenshots

Original Image

http://127.0.0.1/image.jpg (6000x4000)
![App Screenshot](https://github.com/sawan94/NginxImageResize/raw/main/demo/image.jpg)

http://127.0.0.1/image.jpg?w=400 (400x266)
![App Screenshot](https://github.com/sawan94/NginxImageResize/raw/main/demo/image_w400.jpg)

http://127.0.0.1/image.jpg?h=400 (600x400)
![App Screenshot](https://github.com/sawan94/NginxImageResize/raw/main/demo/image_h400.jpg)


## Defaults

- Cache time for images is 24h
- Cache time for images not found is 1m
- Cache time can be changed as per response time in conf/proxy.conf
- Rebuild docker image by docker-compose up -d --build
- Default port is 80
- Can be changed in docker-compose.yaml
-         ports:
            - <port>:80
