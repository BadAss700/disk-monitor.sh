STep -1 --> nano disk_monitor.sh
Step-2 --> Pasete the file and save it.
Step-3 --> Make the script executable (chmod +x disk_monitor.sh)
Step-4 -->  Install mailx (sudo yum install mailx -y)
Step-5 --> Configure SMTP to Send Mail and add the following line at the bottom
            nano disk_monitor.sh
            set smtp-use-starttls
            set ssl-verify=ignore
            set smtp=smtp://smtp.gmail.com:587
            set smtp-auth=login
            set smtp-auth-user=your_email@gmail.com
            set smtp-auth-password=your_email_app_password
            set from="your_email@gmail.com"
Step-5 --> Generate a Gmail App Password(consists of 16 character) and paste in the file
Step-6 --> Test Sending an Email Manually
           (echo "Test email from EC2" | mail -s "Test Email" your_email@gmail.com)
Step-7 --> Check the mail for usage alert
