# 1.21.1-Eaglercraft
These are the files for a 1.21.1 Eaglercraft Server

# Usage
Go click the green code button, codespaces, then create new
Open two terminals (use control-shift-p then type terminal)
In one terminal:
```bash
cd main && java -jar purpur.jar
```
In the other terminal:
```bash
cd proxy && java -jar velocity.jar
```
Then go to the ports section and forward port 8081, right click and make it public. 
To use the server, go to eaglercraft, direct connect or wtv u want.
Paste in the given link, but replace https:// with wss://
Then ur connected as long as the server is on. 

# Setting Edits
For the velocity forwarding.secret, read what's inside that or change it to what you want, and copy it to your clipboard. 
Go to your server and then plugins and then the BungeeGuardPlus/BungeeGuard directory. Open config.yml, and for the allowed tokens, put in your token from forwarding.secret. 
For this part, just use cd and ur basic knowledge with vim or nano or jst use the vscode editor. 
Also, I added resent client into there, along with the default web client. You can edit it yourself, but I just set it as resent client if you directly open the link wtihout wss.
Or use something like this: [resent](https://resent4-0.vercel.app)

Another Important part is the commands that the users can use, so luck perms is there. To add commads:
```
/lp group <group> permission set <command> <true/false>
```
There's also a gui pop up that you can use if you run
```
/lp editor
```
Like here's an example: 
```
/lp group default permission set essentials.home true
```

# Java Version Sidenote
You should get Java 21, which is the version I use (You might have to recompile and reinstall the server if it doesn't work, just delete some of the files, remove and reinstall the purpur file, etc). On one of my computers, Java 23 didn't work. On gitpod classic, Java 21 doesn't work though. Not sure what the issue is yet, though maybe a buffer overflow error? It's a siegsev so idk
To get Java 21:
```bash
wget https://download.oracle.com/java/21/archive/jdk-21.0.4_linux-x64_bin.deb
sudo dpkg -i jdk-21*.deb
rm -f jdk-21*.deb
```
Or if that doesn't work, a more messy way is
```bash
wget https://www.dropbox.com/scl/fi/euvjd4nk4cq32higujqj2/jdk-21.0.4_linux-x64_bin.deb?rlkey=k85wrx3mytdc4e3789v32brc0&st=6jcgvxgd&dl=1
mv *linux-x64* java21.deb
rm wget-log
sudo dpkg -i java21.deb
rm -f java21.deb
```

And to ensure that it worked, just update it if it isn't java 21:
```bash
sudo update-alternatives --config java
java --version
```

# More Side Notes
This server has a shop plugin already installed, along with some other plugins. Some are neccesary, like nlogin and via* but If you don't want it, you can remove things like skript and protocolib. 
Also, It can be used as a real minecraft server that people can connect to. This repository will mostly not be updated, and I might add a resource pack later in the server.properties that might not work later. 
I'll add a waterfall proxy soon, but once that happens, you'll have to cp -r the plugins each time, or use a symbolic link between them. Symbolic link requires the tinyest bit of more knowledge, ill just say that it involves "ln -s"
# mcserver
