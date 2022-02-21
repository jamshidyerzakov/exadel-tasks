#!/bin/bash
HELLO_PAGE=/var/www/html/hello.html
INFO_PAGE=/var/www/html/info.html
OS_INFO=$(cat /etc/os-release)
MEMORY_INFO=$(free -h)
DISK_INFO=$(df -H)
PROCESS_INFO=$(ps aux)


function install_nginx() {
        sudo apt install nginx -y
        sudo chown -R ubuntu:ubuntu /var/www/html/
}

function create_info_page() {
        cat > $INFO_PAGE << EOF
        <!DOCTYPE html>
        <html>
          <head>
             <title>New Page</title>
          </head>
          <body>
          <pre>
          <h1> OS info </h1>
          <pre>$OS_INFO</pre>
          <h1> Memory info </h1>
          <pre>$MEMORY_INFO</pre>
          <h1> Disk info </h1>
          <pre>$DISK_INFO</pre>
          <h1> Process info </h1>
          <pre>$PROCESS_INFO</pre>
          </body>
        </html>
EOF
}

function create_hello_page() {
        cat > $HELLO_PAGE << EOF
        <!DOCTYPE html>
        <html>
          <head>
              <title>New Page</title>
                </head>
                  <body>
          <pre>
          <h1>HELLO WORLD </h1>
          <hr>
          </body>
        </html>

EOF
}

install_nginx
create_info_page
create_hello_page
