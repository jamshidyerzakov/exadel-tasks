#!/bin/bash
DEFAUL=/usr/share/nginx/html/hello.html
function create_page() {
        cat > $DEFAUL << EOF
        <!DOCTYPE html>
        <html>
          <head>
             <title>New Page</title>
          </head>
          <body>
          <pre>
          <h1> Hello From <pre> $DEVOPS </pre> </h1>
          </body>
        </html>
EOF
}

create_page
