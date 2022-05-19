A collection of scripts built to make the imaging process at my high school easier. Part of an in-school internship program. 

HOW TO USE (1st-time setup):
1. Create a folder in the partedmagic USB drive named "IA" (without the quotes). Make sure it is not inside of any sub-folders! 
2. Copy and paste JUST the main.sh and keypresser.sh files into the new IA folder on the partedmagic USB
3. On the partedmagic USB, navigate to the /pmagic/pmodules/scripts directory
4. Copy and paste IA_setup.sh to this folder
5. Now you're ready to use the USB!

HOW TO USE (imaging):
1. Insert partedmagic USB into machine, boot from USB
2. Run from RAM
3. As the partedmagic live OS boots, you should see IA_setup.sh run right after it says "executing user scripts"
4. Once the machine boots to the partedmagic desktop, the IA folder should be there on the desktop
5. At this time, you should UNPLUG THE PARTEDMAGIC USB
6. Open a terminal and run the following line of bash code to begin the imaging process:
	cd /root/Desktop/IA ; main.sh
7. Once you see the yellow text which says "Insert USB to continue," at this point you should insert your image stick into the machine
8. Now it will run for a while, and you shouldn't have to touch it until the machine reboots, which it should do on its own
9. Have fun with your newly-imaged machine! 

Note: you may have to be aware of LF / CRLF shenanigans, since these are bash scripts uploaded to github with a windows machine. 

If you have any questions about anything, feel free to contact me. 
