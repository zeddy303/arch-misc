# arch-misc
Other notes on my arch install

Got a new cheak ($550!) Gaming Latop:

Manufacturer: LENOVO
Product Name: 83JC
System Version: LOQ 15ARP9

Currently favoring KDE DE

Running Steam with current WoW/Battle.net install using Experimental Proton with excellent results. 

**Sleep issue**

Black screen when waking of from sleep. Power or keys do not wake up though keys light up. 

Solution: 

edit /boot/loader/entries/*_linux.conf

add 'pcie_aspm=off' to options

This now fixes going to sleep and not waking up. One needs to hard press (3 seconds or so, or sometimes twice) the power button. Want to figure out how to wake using keyboard and not having to hard wake using power button (or at least a light tap). 
