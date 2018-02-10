
# 0x01. Create a ssh key, if the there has a .ssh dir, so bak and remove it.

```
cxl@cxl-ThinkPad-E420:~$ cd ~/.ssh
cxl@cxl-ThinkPad-E420:~/.ssh$ ls
cxl@cxl-ThinkPad-E420:~/.ssh$ cd ..
cxl@cxl-ThinkPad-E420:~$ cp ~/.ssh ~/.ssh.bak
```

# 0x02.  There have some sub directory

```
#cp: omitting directory ‘/home/cxl/.ssh’  
cxl@cxl-ThinkPad-E420:~$ cd ~/.ssh.bak
bash: cd: /home/cxl/.ssh.bak: No such file or directory

#-r mean traversal cp the sub directory.
cxl@cxl-ThinkPad-E420:~$ cp -r  ~/.ssh ~/.ssh.bak  
cxl@cxl-ThinkPad-E420:~$ rm ~/.ssh
rm: cannot remove ‘/home/cxl/.ssh’: Is a directory
# traversal and force rm the ~/.shh
cxl@cxl-ThinkPad-E420:~$ rm -rf ~/.ssh   
```

# 0x03. Create a rsa key, 4 entry<not set the password>

```
cxl@cxl-ThinkPad-E420:~$ ssh-keygen -t rsa -C "iamcxl369@qq.com"  
Generating public/private rsa key pair.
Enter file in which to save the key (/home/cxl/.ssh/id_rsa): 
Created directory '/home/cxl/.ssh'.
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in /home/cxl/.ssh/id_rsa.
Your public key has been saved in /home/cxl/.ssh/id_rsa.pub.
The key fingerprint is:
d7:a3:f6:62:c3:91:ce:60:bd:f1:c9:94:66:4d:96:4c iamcxl369@qq.com
The key's randomart image is:
+--[ RSA 2048]----+
|                 |
|              E  |
|             o . |
|           .  =  |
|        S...o=   |
|        o.=.=..  |
|       . =oX .   |
|         .O.+    |
|         . o.    |
+-----------------+
cxl@cxl-ThinkPad-E420:~$ cat /home/cxl/.ssh/id_rsa.pub
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDffy2LsZaA9KVM5L+IWTKuwG9GQmkT63/qAOGM13OMqUamGpLdb2nwIWDx6XXT2Cne53mBLj3U+wsJjArg0X4bpJbLgu4UjcFrIs0CgmQR/Zm1WzWxdMns3TO8pOqc7DsHL7xpisMUcLTVsZvLzsrAec7XiJcOhMTlLUwjk1xcqTmjQ9RDySttSaOIdtL/TFqfTgB+DU0Xzuv+N7X+qPTRgLqBy2xVNupFzFrdTLs2dUxJRnM6REKU6p5cc/fP832Ygkuq4du41ubN1wIz+9IbNPp11Ezt4RhAjWeCjlEndovj1YFDSvYm4Cr3QvDe0aBXb31OSJs8sFACXhm4DhHp iamcxl369@qq.com

```

- 0x01. Copy the pub key to github-->settings-->SSH key

- 0x02. Check the connecte to github is ok?

```
cxl@cxl-ThinkPad-E420:~$ ssh git@github.com
Warning: Permanently added the RSA host key for IP address '192.30.252.129' to the list of known hosts.
PTY allocation request failed on channel 0
Hi iamcxl369! You've successfully authenticated, but GitHub does not provide shell access.
Connection to github.com closed.

```
** The connecte to github is ok!**



# 0x04. Read to clone the project from github

```
cxl@cxl-ThinkPad-E420:~$ mkdir github_prj
cxl@cxl-ThinkPad-E420:~$ cd github_prj/
cxl@cxl-ThinkPad-E420:~/github_prj$ mkdir github_iamcxl
cxl@cxl-ThinkPad-E420:~/github_prj$ cd github_iamcxl/
#Must to be rember to input the 'yes'
cxl@cxl-ThinkPad-E420:~/github_prj/github_iamcxl$ git clone git@github.com:iamcxl369/iamcxl.git
Cloning into 'iamcxl'...
The authenticity of host 'github.com (192.30.252.128)' can't be established.
RSA key fingerprint is 16:27:ac:a5:76:28:2d:36:63:1b:56:4d:eb:df:a6:48.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added 'github.com,192.30.252.128' (RSA) to the list of known hosts.
remote: Counting objects: 3, done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
Receiving objects: 100% (3/3), done.
Checking connectivity... done.
cxl@cxl-ThinkPad-E420:~/github_prj/github_iamcxl$ ls
iamcxl
cxl@cxl-ThinkPad-E420:~/github_prj/github_iamcxl$ cd iamcxl/
cxl@cxl-ThinkPad-E420:~/github_prj/github_iamcxl/iamcxl$ ls
README.md
cxl@cxl-ThinkPad-E420:~/github_prj/github_iamcxl/iamcxl$ cat README.md 
# iamcxl
Recording some thing for myself.
cxl@cxl-ThinkPad-E420:~/github_prj/github_iamcxl/iamcxl$ 

```

# 0x05. Add a file to github project of iamcxl

```
cxl@cxl-ThinkPad-E420:~/github_prj/github_iamcxl/iamcxl/.git$ cat config 
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = git@github.com:iamcxl369/iamcxl.git
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "master"]
	remote = origin
	merge = refs/heads/master
cxl@cxl-ThinkPad-E420:~/github_prj/github_iamcxl/iamcxl/.git$ cd ..
#Add a new file of github_operation.md
cxl@cxl-ThinkPad-E420:~/github_prj/github_iamcxl/iamcxl$ ls
github_operation.md  README.md
#Add to local git
cxl@cxl-ThinkPad-E420:~/github_prj/github_iamcxl/iamcxl$ git add github_operation.md 
#Commit to local git
cxl@cxl-ThinkPad-E420:~/github_prj/github_iamcxl/iamcxl$ git commit -m "first coommit"
[master 76be038] first coommit
 1 file changed, 86 insertions(+)
 create mode 100644 github_operation.md
#Push the commit to github
cxl@cxl-ThinkPad-E420:~/github_prj/github_iamcxl/iamcxl$ git push -u origin master
Warning: Permanently added the RSA host key for IP address '192.30.252.130' to the list of known hosts.
Counting objects: 4, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 1.84 KiB | 0 bytes/s, done.
Total 3 (delta 0), reused 0 (delta 0)
To git@github.com:iamcxl369/iamcxl.git
   13d064d..76be038  master -> master
Branch master set up to track remote branch master from origin.
cxl@cxl-ThinkPad-E420:~/github_prj/github_iamcxl/iamcxl$ 

```
