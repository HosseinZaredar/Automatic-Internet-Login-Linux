# Automatic-Internet-Login-Linux

I wrote this bash script so that I wouldn't have to manually login to my internet account, everytime I get connected to a Wi-Fi at AUT.

## How it works
If you put this script inside `/etc/NetworkManager/dispatcher.d/` directory, it will be executed everytime the network connection of your PC changes, and if you get connected to a Wi-Fi at AUT, it would send a post request having your username and password and you'll be automatically logged in!
