## Cybersecurity basics

## SQL Injections

SQL injections are usually caused by poorly coded web applications or poorly secured back-end server.

Injection occurs when an application misinterprets user input as actual code rather than a string, changing the code flow and executing it. An SQL injection occurs when user-input is inputted into the SQL query string without properly sanitizing or filtering the input. The previous example showed how user-input can be used within an SQL query, and it did not use any form of input sanitization.

```php
$searchInput =  $_POST['findUser'];
$query = "select * from logins where username like '%$searchInput'";
$result = $conn->query($query);
```

Example of a malicious command : `1'; DROP TABLE users;`,

Notice how we added a single quote (') after "1", in order to escape the bounds of the user-input in ('%$searchInput').

So, the final SQL query executed would be as follows:

## Wi-Fi security

Wi-Fi network security has evolved considerably over the years:

- WPA was a step forward from WEP.
- WPA2 has become the trusted standard for many years.
- WPA3 now offers the most advanced protection.

### WPA2

Le WPA2, launched in 2004, has become the worldwide norm for Wi-Fi security for more than 10 years. It has replaced the TKIP protocol by a stronger crypting protocol called AES (Advanced Encryption Standard), which is still used nowadays.

### WPA3

Not all machines nowadays are equiped with WPA3.

Modern devices connect using WPA3 for maximum security. Older devices can still connect using WPA2, which ensures compatibility. Mixed mode is essential during this transition period because many smart devices (printers, speakers, TVs, etc.)
do not yet support WPA3. A router set to WPA3 can only prevent these devices from connecting. If a device does not support mixed mode, this can create a serious security hole: users may be forced to downgrade the entire network to WPA2 or disable encryption completely to allow all devices to connect.
