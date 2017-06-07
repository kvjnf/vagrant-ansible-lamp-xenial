# Default Apache virtualhost template

<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    DocumentRoot {{ apache.docroot }}
    ServerName {{ apache.servername }}

    <Directory {{ apache.docroot }}>
        AllowOverRide All
        # SSI 有効化は不必要であれば削除
        Options Indexes +FollowSymLinks +Includes
        Order allow,deny #for apache2.2
        Allow from all
        AddType text/html .html
        AddOutputFilter INCLUDES .html
    </Directory>
</VirtualHost>
