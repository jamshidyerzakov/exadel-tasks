# Task 2 for exadel internship

## Url to the webpage and s3 object below

### Webpage
- Hello page -> http://16.171.41.121/hello.html 
- Info page -> http://16.171.41.121/info.html

### S3 objects
- Info page -> https://tesk2-screens.s3.eu-north-1.amazonaws.com/Screen+Shot+2022-02-21+at+10.56.20.png
- Hello page -> https://tesk2-screens.s3.eu-north-1.amazonaws.com/Screen+Shot+2022-02-21+at+10.56.32.png

### Run remote script to install nginx and generate pages

```bash
$ ssh -i $PRIVATE_KEY $SUDOER@$PUBLIC_IP "bash -s" -- < ./script.sh
```
