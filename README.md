## 📘 Disk Usage Alert Script Setup

### ✅ Step-by-Step Instructions

---

Step 1 → Open the script file for editing  
-nano disk_monitor.sh

Step 2 → Paste the Bash script and save the file
(Add your disk monitoring code here)

Step 3 → Make the script executable
chmod +x disk_monitor.sh


Step 4 → Install mailx package
-sudo yum install mailx -y

Step 5 → Configure SMTP for sending mail
Edit the file:
<br>
-nano /etc/mail.rc
<br>
Add the following lines at the bottom:
<br>
-set smtp-use-starttls
<br>
-set ssl-verify=ignore
<br>
-set smtp=smtp://smtp.gmail.com:587
<br>
-set smtp-auth=login
<br>
-set smtp-auth-user=your_email@gmail.com
<br>
-set smtp-auth-password=your_email_app_password
<br>
-set from="your_email@gmail.com"

Step 6 → Generate a Gmail App Password

Go to: https://myaccount.google.com/apppasswords

Generate a 16-character app password and paste it in the config file above (smtp-auth-password).

Step 7 → Test email sending manually
-echo "Test email from EC2" | mail -s "Test Email" your_email@gmail.com

Step 8 → Check your email inbox for the alert


Now your disk_monitor.sh script will send email alerts when disk usage crosses the threshold ✅
