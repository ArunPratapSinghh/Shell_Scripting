# Shell_Scripting
Basic of Linux 
=================================================================
#Check User Information
id $username   #username
cat /etc/passwd  #full user details

#Add user 
 useradd $username #to add user in Directory

#Remove User
userdel $username # to delete user from directory
sudo userdel -r $username       # Remove user + home dir

#Modified User Details
sudo usermod -aG groupname username  # Add to group  
sudo usermod -l newname oldname      # Rename user  
sudo passwd username                # Change password  
=
#Check User Activity
last username      # Login history  
w                  # Currently logged-in users  
===================================================================
