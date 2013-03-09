import os
a=1
ssh=0
while a!=0:
	ssh=input("input(ssh_fan=1 or ssh_lian=2 or info=3 or exit=0):")
	int(ssh)
	#print ssh
	if ssh==0:
		b_exit=raw_input("ture exit?(y\\n):")
		if b_exit=='y':
			a=0
	else:
		if (ssh<1 or ssh>3):
			print "error"
		else:
			if ssh==1:
				b=raw_input("Are you ture ssh_fan?(y\\n):")
				if b=='y':
					os.system('ssh -qTfnN -D 7070 5137268b5004463e900001dd@noodles-paomian.rhcloud.com')
			if ssh==2:
				b=raw_input("Are you ture ssh_lian(y\\n):")
				if b=='y':
					os.system('ssh 5137268b5004463e900001dd@noodles-paomian.rhcloud.com')
			if ssh==3:
				print "by pm"
